<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
 <jsp:include page="topHeader.jsp"></jsp:include>
<style>
.error {color: red;}
</style>  
    <body>

<div class="content-area error-page" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                <div class="col-md-6">
                    <div class="box-for overflow">                         
                        <div class="col-md-12 col-xs-12 login-blocks">
                            <h2>Login : </h2> 
                            <form:form modelAttribute ="usersVO" action="loginProc" method="post" name="UsersVO">
                                <div class="form-group">
                                    <label for="id">Id</label>
                                    <form:input path="id"/><form:errors path="id" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <form:input path="password"/><form:errors path="password" cssClass="error"/>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-default"> Log in</button>
                                </div>
                            </form:form>
                            <br>
                            
                            <h2>Social login :  </h2> 
                            
                            <p>
                            <a class="login-social" href="#"><i class="fa fa-facebook"></i>&nbsp;kakao</a> 
                            <!-- <a class="login-social" href="#"><i class="fa fa-google-plus"></i>&nbsp;Gmail</a> 
                            <a class="login-social" href="#"><i class="fa fa-twitter"></i>&nbsp;Twitter</a>   -->
                            </p> 
                        </div>
                    </div>
                </div>
                </div> 
            </div>
        </div> 

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>