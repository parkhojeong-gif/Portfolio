'use strict';

const mediaStreamConstraints = {
	video: true,
};

const offerOptions = {
	offerToReceiveVideo: 1,
};

let startTime = null;

const localVideo = document.getElementById('localVideo');
const remoteVideo = document.getElementById('remoteVideo');

let localStream;
let remoteStream;

let localPeerConnection;
let remotePeerConnection;

function getLocalMediaStream(mediaStream){
	localVideo.srcObject = mediaStream;
	localStream = mediaStream;
	trace('Recevied local stream.');
	callButton.disabled = false;
}

function handleLocalMediaStreamError(error){
	trace('navigator.getUserMedia error: ${error.toString()}.');
}

function gotRemoteMediaStream(event){
	const mediaStream = event.stream;
	remoteVideo.srcObject = mediaStream;
	remoteStream = mediaStream;
	trace('Remote peer connection received remote stream.');
}

function logVideoLoaded(event){
	const video = event.target;
	trace('${video.id} videoWidth: ${video.videoWidth}px, ' +
			'videoHeight: ${video.videoHeight}px.');
}

function logResizeVideo(event){
	logVideoLoaded(event);
	
	if(startTime){
		const elapsedTime = window.performance.now() - startTime;
		startTime = null;
		trace('Setup time: ${elapsedTime.toFixed(3)}ms.');
	}
}

localVideo.addEventListener('loadedmetadata', logVideoLoaded);
//remoteVideo.addEventListener('loadedmetadata', logVideoLoaded);
//remoteVideo.addEventListener('onresize', logResizedVideo);

function handleConnection(event){
	const peerConnection = event.target;
	const iceCandidate = event.candidate;
	
	if(iceCandidate){
		const newIceCandidate = new RTCIceCandidate(iceCandidate);
		const otherPeer = getOtherPeer(peerConnection);
		
		otherPeer.addIceCandidate(newIceCandidate).then(() =>
		{
			handleConnectionSuccess(peerConnection);
		}).catch((error) => {
			handleConnectionFailure(peerConnection, error);
		});
		
		trace('${getPeerName(peerConnection)} ICE candidate:\n' +
				'${event.candidate.candidate}.');
	}
}

function handleConnectionSuccess(peerConnection){
	trace('${getPeerName(peerConnection)} addIceCandidate success.');
};

function handleConnectionFailure(peerConnection, error){
	trace('${getPeerName(peerConnection)} failed to add ICE Candidate:\n' +
			'#{error.toString()}.');
}

function handleConnectionChange(event){
	const peerConnection = event.target;
	console.log('ICE state change event: ', event);
	trace('${getPeerName(peerConnection)} ICE state: '+
			'${peerConnection.iceConnectionState}.');
}

function setSessionDescriptionError(error){
	trace('Failed to create session description: ${error.toString()}.');
}

function setDescriptionSuccess(peerConnection, functionName){
	const peerName = getPeerName(peerConnection);
	trace('${peerName} ${functionName} conplete.');
}

function setLocalDescriptionSuccess(peerConnection){
	setDescriptionSuccess(peerConnection, 'setLocalDescription');
}

function setRemoteDescriptionSuccess(peerConnection){
	setDescriptionSuccess(peerConnection,'setRemoteDescription');
}

function createdOffer(description){
	trace('Offer from localPeerConnection:\n${description.sdp}');
	
	trace('localPeerConnection setLocalDescription start.');
	localPeerConnection.setLocalDescription(descriptioin)
	.then(() =>{
		setLocalDescriptionSuccess(localPeerConnection);
	}).catch(setSessionDescriptionError);
	
	trace('remotePeerConnection createAnswer start.');
	remotePeerConnection.createAnswer().then(createdAnswer)
	.catch(setSessionDescriptionError);
}

function createdAnswer(description){
	trace('Answer from remotePeerConnection:\n${description.sdp}.');
	
	trace('remotePeerConnection setLocalDescription start.');
	remotePeerConnection.setLocalDescription(description)
	.then(() =>{
		setLocalDescriptionSuccess(remotePeerConnection);
	}).catch(setSessionDescriptionError);
	
	trace('localPeerConnection setRemoteDescription start.');
	localPeerConnection.setRemoteDescription(description)
	.then(()=>{
		setRemoteDescriptionSuccess(localPeerConnection);
	}).catch(setSessionDescriptionError);
}


const startButton = document.getElementById('startButton');
const callButton = document.getElementById('callButton');
const hangupButton = document.getElementById('hangupButton');

callButton.disabled = true;
hangupButton.disabled = true;

function startAction(){
	startButton.disabled = true;
	navigator.mediaDevices.getUserMedia(mediaStreamConstraints)
	.then(getLocalMediaStream).catch(handleLocalMediaStreamError);
	trace('Requesting local stream.');
}

function callAction(){
	callButton.disabled = true;
	hangupButton.disabled = false;
	
	trace('Starting call.');
	startTime = window.performance.now();
	
	const videoTracks = localStream.getVideoTracks();
	const audioTracks = localStream.getAudioTracks();
	if(videoTracks.length > 0){
		trace('Using video device: ${videoTracks[0].label}.');
	}
	if(audioTracks.length > 0){
		trace('Using audio device: ${audioTracks[0].label}.');
	}
	
	const servers = null;
	
	localPeerConnection = new RTCPeerConnection(servers);
	trace('Created local peer conection object localPeerConnection.');
	
	localPeerConnection.addEventListener('icecandidate', handleConnection);
	localPeerConnection.addEventListener('iceconnectionstartchange', handleConnectionChange);
	
	remotePeerConnection = new RTCPeerConnection(servers);
	  trace('Created remote peer connection object remotePeerConnection.');

	  remotePeerConnection.addEventListener('icecandidate', handleConnection);
	  remotePeerConnection.addEventListener(
	    'iceconnectionstatechange', handleConnectionChange);
	  remotePeerConnection.addEventListener('addstream', gotRemoteMediaStream);

	  localPeerConnection.addStream(localStream);
	  trace('Added local stream to localPeerConnection.');

	  trace('localPeerConnection createOffer start.');
	  localPeerConnection.createOffer(offerOptions)
	    .then(createdOffer).catch(setSessionDescriptionError);
	}

	function hangupAction() {
	  localPeerConnection.close();
	  remotePeerConnection.close();
	  localPeerConnection = null;
	  remotePeerConnection = null;
	  hangupButton.disabled = true;
	  callButton.disabled = false;
	  trace('Ending call.');
	}

	startButton.addEventListener('click', startAction);
	callButton.addEventListener('click', callAction);
	hangupButton.addEventListener('click', hangupAction);



	function getOtherPeer(peerConnection) {
	  return (peerConnection === localPeerConnection) ?
	      remotePeerConnection : localPeerConnection;
	}

	function getPeerName(peerConnection) {
	  return (peerConnection === localPeerConnection) ?
	      'localPeerConnection' : 'remotePeerConnection';
	}

	function trace(text) {
	  text = text.trim();
	  const now = (window.performance.now() / 1000).toFixed(3);

	  console.log(now, text);
	}
