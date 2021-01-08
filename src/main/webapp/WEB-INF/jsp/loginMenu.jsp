<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Menu</title>
</head>
<body>

	<h2>Login Form</h2>
	
	<f:form modelAttribute="dto" action="${pageContext.request.contextPath}/karyawan/login">
		  <div class="container">
		    <label for="uname"><b>Username : </b></label>
		    <f:input path="username" type="text" id="uname" name="uname" required="true" placeholder="Enter Username"/>
		
		    <label for="psw"><b>Password : </b></label>
		    <f:input path="password" type="text" id="psw" name="psw" required="true" placeholder="Enter Password"/>
		    <h5 id="salah" style="color: Tomato">${salah}</h5>
		        
		    <button type="submit">Login</button>
		  </div>
		
		  <div class="container" style="background-color:#f1f1f1">
	    <button type="button" class="cancelbtn">Cancel</button>
	  </div>
	</f:form>


<!-- 	<h2>Login Menu</h2> -->
<%-- 	<f:form action="${pageContext.request.contextPath}/karyawan/login" --%>
<%-- 	modelAttribute="dto"> --%>
<!-- 		<table> -->
<!-- 			<tr> -->
<!-- 				<td>User ID</td> -->
<!-- 				<td>:</td> -->
<%-- 				<td><f:input path="username" /></td> --%>
<%-- 				<td><f:errors path="username" /></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>Password</td> -->
<!-- 				<td>:</td> -->
<!-- 				<td><input type="password" name="password" value=""/></td> -->
<%-- 				<td><f:errors path="password" /></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 			<td><input type="submit" value="Masuk"></td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
<%-- 	</f:form> --%>
<%-- 	${validasi} --%>

</body>
</html>