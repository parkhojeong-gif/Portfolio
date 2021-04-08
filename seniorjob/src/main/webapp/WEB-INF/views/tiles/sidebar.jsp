<!-- sidebar 구역 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> <!-- taglib : tiles -->   	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

				<ul class="menu">


					<li class='sidebar-title'>관리자 페이지</li>
					<a href="/" class='sidebar-link'> <i data-feather="user" width="20"></i> <span>메인으로</span>
					</a>

					<li class='sidebar-title'>관리 목록</li>

					<li class="sidebar-item"><a href="./user"
						class='sidebar-link'> <i data-feather="user" width="20"></i> <span>회원관리</span>
					</a></li>


					<li class="sidebar-item  "><a href="./mentor"
						class='sidebar-link'> <i data-feather="user" width="20"></i> <span>멘토관리</span>
					</a></li>

					<li class="sidebar-item  "><a href="/declaration"
						class='sidebar-link'> <i data-feather="alert-circle" width="20"></i> <span>신고관리</span>
					</a></li>

		

					<li class="sidebar-item  has-sub"><a href="#"
						class='sidebar-link'> <i data-feather="trending-up" width="20"></i>
							<span>매출관리</span>
					</a>

						<ul class="submenu ">

							<li><a href="./sum">매출 종합 관리</a></li>

						</ul></li>

					<li class="sidebar-item  has-sub"><a href="#"
						class='sidebar-link'> <i data-feather="user"></i> <span>커뮤니티</span>
					</a>

						<ul class="submenu ">

							<li><a href="/community">공지사항</a></li>

							<li><a href="/com_later">후기</a></li>

						</ul></li>

					<li class="sidebar-item  has-sub"><a href="#"
						class='sidebar-link'> <i data-feather="file-text"></i>
							<span>고객센터</span>
					</a>

						<ul class="submenu ">

							<li><a href="/service">결제/환불</a></li>

							<li><a href="/service2">취소/신청</a></li>

						</ul></li>

				</ul>

