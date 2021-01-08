<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Barang</title>
</head>
<body>

	<h1>Edit barang </h1>
	<f:form action="${pageContext.request.contextPath}/barang/save"
	modelAttribute="dto"> 
		<table>
			<tr>
				<td>Kode Barang</td>
				<td>:</td>
				<td><f:input path="kodeBarang" readonly="true"/></td>
			</tr>
			<tr>
				<td>Nama Barang</td>
				<td>:</td>
				<td><f:input path="namaBarang" /></td>
				<td><f:errors path="namaBarang" /></td>
			</tr>
			<tr>
				<td>Stok Barang</td>
				<td>:</td>
				<td><f:input type="number" path="stokBarang" min="1" /></td>
				<td><f:errors path="stokBarang" /></td>
			</tr>
			<tr>
				<td>Kode Supplier</td>
				<td>:</td>
				<td><f:input path="kodeSupplier" /></td>
				<td><f:errors path="kodeSupplier" /></td>
			</tr>
			<tr>
			<td><input type="submit" value="Simpan" class="btn btn-secondary">
			<input type="button" value="Batal" class="btn btn-secondary"
			onclick="location.href='${pageContext.request.contextPath}/barang/page-barang';">
			</td>
			</tr>
		</table>
	</f:form>

</body>
</html>