<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Data Penduduk</title>
</head>
<body>
	<h3>Edit Data Penduduk</h3>
	
	<div>
		<f:form modelAttribute="dto" action="${pageContext.request.contextPath}/karyawan/save">
			<label for="kode">Kode : </label><br>
			<f:input path="kode" readonly="true" type="text" id="kode" name="kode" style="background-color:LightGray;"/><br> <%-- path ini diambil dr propertinya --%>
			
			<label for="nama">Nama : <f:errors path="nama" style="color: Tomato"></f:errors></label><br>
			<f:input path="nama" type="text" id="nama" name="nama" placeholder="Input Nama.."/><br>
			
			<label for="uname">Username : <f:errors path="username" style="color: Tomato"></f:errors></label><br>
			<f:input path="username" type="text" id="uname" name="uname" placeholder="Input Username.."/><br>
			
			<label for="pwd">Password : <f:errors path="password" style="color: Tomato"></f:errors></label><br>
			<f:input path="password" type="text" id="pwd" name="pwd" placeholder="Input password.."/><br>
			
		    <input type="submit" value="Simpan" /> <%-- kl submit gabisa pake onClick harus pake action di form --%>
		    <input type="button" value="Batal" style="background-color:#ff6347;" onclick="location.href='${pageContext.request.contextPath}/karyawan/all';" /> <%-- balik lagi ke penduduk all kl batal --%>
	  </f:form>
	</div>
</body>
</html>