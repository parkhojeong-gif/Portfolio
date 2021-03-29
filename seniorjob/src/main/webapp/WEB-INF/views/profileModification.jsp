<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->

<jsp:include page="topHeader.jsp"></jsp:include>

  

        <!-- property area -->
        <div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   
                <div class="row">
                
                <jsp:include page="mypage.jsp"></jsp:include>
                
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">

						<div class="section">

                        <form action="" method="">
                            <div class="profiel-header">
                                <h3>
                                    <b>개인정보수정</b> <br>
                                </h3>
                                <hr>
                            </div>

                            <div class="clear">
                                <div class="col-sm-3 col-sm-offset-1">
                                    <div class="picture-container">
                                        <div class="picture">
                                            <img src="assets/img/avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
                                            <input type="file" id="wizard-picture">
                                        </div>
                                        <h6>Choose Picture</h6>
                                    </div>
                                </div>

                                <div class="col-sm-3 padding-top-25">

                                    <div class="form-group">
                                        <label>이름 <small>(required)</small></label>
                                        <input name="firstname" type="text" class="form-control" placeholder="Andrew...">
                                    </div>
                                    <div class="form-group">
                                        <label>주소 <small>(required)</small></label>
                                        <input name="lastname" type="text" class="form-control" placeholder="Smith...">
                                    </div> 
                                    <div class="form-group">
                                        <label>전화번호 <small>(required)</small></label>
                                        <input name="email" type="email" class="form-control" placeholder="andrew@email@email.com.com">
                                    </div> 
                                </div>
                                <div class="col-sm-3 padding-top-25">
                                    <div class="form-group">
                                        <label>이메일 <small>(required)</small></label>
                                        <input name="Password" type="password" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>생년월일 <small>(required)</small></label>
                                        <input type="password" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>권한 <small>(required)</small></label>
                                        <input type="password" class="form-control">
                                    </div>
                                </div>  

                            </div>
                            
                            <div class="profiel-header">
                                
                                <hr>
                                <h3>
                                    <b>자격증 등록</b>
                                </h3>
                            </div>

                            <div class="clear">
                                
                                <hr>
                                <br>
                                <div class="col-sm-5 col-sm-offset-1">
                                    <div class="form-group">
                                        <label>자격증명 :</label>
                                        <input name="Facebook" type="text" class="form-control" placeholder="https://facebook.com/user">
                                    </div>
                                    <div class="form-group">
                                        <label>발행처/기관 :</label>
                                        <input name="Twitter" type="text" class="form-control" placeholder="https://Twitter.com/@user">
                                    </div>
                                    <div class="form-group">
                                        <label>자격증번호:</label>
                                        <input name="website" type="text" class="form-control" placeholder="https://yoursite.com/">
                                    </div>
                                     <div class="form-group">
                                        <label>취득일:</label>
                                        <input name="website" type="text" class="form-control" placeholder="https://yoursite.com/">
                                    </div>
                                </div>  

                             
 
                            </div>
                    
                            <div class="col-sm-5 col-sm-offset-1">
                                <br>
                                <input type='button' class='btn btn-finish btn-primary' name='finish' value='등록' />
                                
                                
                            </div>
                            <br>
                            <br><br>
                               <div class="profiel-header">
                                
                                <hr>
                                <h3>
                                    <b>경력인증서 등록</b>
                                </h3>
                            </div>
                          
                            
                            <div class="clear">
                                <hr>
                                <br>
                              
                                                                   
                                        
                                         
                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group">
                                                    <label for="property-images">Chose Images :</label>
                                                    <input class="form-control" type="file" id="property-images">
                                                    <p class="help-block">Select multipel images for your property .</p>
                                                </div>
                                            </div>
                                       
                                  
                                    <!--  End step 3 -->
                            </div>
                            
                            <div class="col-sm-5 col-sm-offset-1">
                                <br>
                                <input type='button' class='btn btn-finish btn-primary' name='finish' value='등록' />
                            </div>
                    </form>

                </div>
                
                </div>
            </div><!-- end row -->

        </div>
    </div>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>