<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	section {
	width:1000px;
	height:100%;
	margin:auto;
	background:white;
}
</style>

</head>
<body>

<section>

<form method="post" action="discount_ok" enctype="multipart/form-data">
	<table width="700" align="center">
		<tr>
			<td>코드</td>
			<td> <input type="text" name="dcode"> </td>
		</tr>
		<tr>
			<td>제목</td>
			<td> <input type="text" name="title"> </td>
		</tr>
		<tr>
			<td>이미지</td>
			<td> <input type="file" name="dimg"> </td>
		</tr>
		<tr>
			<td>상세이미지</td>
			<td> <input type="file" name="dcimg"> </td>
		</tr>
		<tr>
			<td>구분</td>
			<td> <input type="text" name="gubun"> </td>
		</tr>
		<tr>
			<td>기간</td>
			<td> <input type="text" name="gigan"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="등록">
			</td>
		</tr>
	</table>
</form>

</section>

</body>
</html>