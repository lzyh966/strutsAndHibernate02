<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<%@ taglib prefix="s" uri="/struts-tags" %>  
        
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%= basePath %>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	
	<link rel="stylesheet" type="text/css" href="css/base.css">
	
	<style type="text/css">
		.login {
			width: 500px;
			height: 400px;
			border: solid 1px #f00;
			margin: 100px auto auto auto;
		}
		
		.login h2 {
			text-align: center;
			margin-top: 20px;
		}
		
		fieldset {
			width: 80%;
			padding-left: 10px;
			margin: 10px auto auto auto;
		}
		
		fieldset p {
			line-height: 40px;			
		}
		
		tr {
			line-height: 40px;
		}
	
		.btn-login {
			width: 80%;
			height: 40px;
			margin: 10px auto auto auto;
			text-align: right;
		}
		
		.loginSubmit {
			font-size: 20px;
			width: 200px;
		}
				
		.errorMessage {
			color: #f00;
			font-family: "楷体";
		}		
		
		li {
			list-style: none;
		}
	</style>
	
	
	</head>
<body>
	<div class="wrapper">
		<div class="login">
			<s:form action="login" method="post" theme="simple">
				<h2>用户登录</h2>
				
				<fieldset>
					<legend>帐户信息</legend>
					<p>请输入用户的帐户信息进行登录，若没有帐户，请注册</p>
					
					<s:fielderror></s:fielderror>
					
					<table>
						<tr>
							<td>用户名</td>
							<td><s:textfield name="user.userName"></s:textfield></td>
						</tr>
						
						<tr>
							<td>密码</td>
							<td><s:textfield name="user.password"></s:textfield></td>
						</tr>
					</table>
				</fieldset>
					
				<div class="btn-login">
					<s:submit value="提　　交" cssClass="loginSubmit"></s:submit>
				</div>							
			</s:form>
		</div>
	</div> <!-- end of wrapper -->
</body>
</html>