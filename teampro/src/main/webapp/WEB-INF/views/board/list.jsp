<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
		width:100%;
		height:100%;
		margin:auto;
		background:white;
	}
	#main {
		width:1200px;
		height:100%;
		margin:auto;
	}
	#content {
		width:1000px;
		height:100%;
		margin:auto;

		padding-top:30px;
	}
	#content table {
		margin:auto;
		width:1000px;
		height:100%;

	}
	#content table tr, td {
		text-align:center;
		border-bottom:1px solid #cccccc;
		font-size:15px;
	}
	a {
		text-decoration:none;
		color:black;
	}
	a:hover {
		text-decoration:underline;
	}
	#content td {
		padding-top:15px;
		padding-bottom:15px;
	}
	.write_icon {
	    border: none;
	}
	.write_icon > a {
		position: relative;
	    left: 450px;
	    border: 1px solid #ccc;
	    padding: 7px;
	    background: #ccc;
	}
</style>
</head>
<body>
<section>
<div id="main">
	<div id="content">
		<table width="800" align="center">
			<tr>
				<td> 제 목 </td>
				<td width="110"> 아이디 </td>
				<td width="110"> 조회수 </td>
				<td width="110"> 작성일 </td>
			</tr>
		<c:forEach items="${list}" var="bvo">
			<tr>
				<td> <a href="readnum?id=${bvo.id}"> ${bvo.title} </a> </td>
				<td width="110"> ${bvo.userid} </td>
				<td width="110"> ${bvo.readnum} </td>
				<td width="110"> ${bvo.writeday} </td>
			</tr>
		</c:forEach>
			<!-- 글쓰기 tap -->
			<c:if test="${userid != null }">
				<tr>
					<td class="write_icon" colspan="4" style="padding: 10px 0 0;">
						<a href="write"> 글쓰기 </a>
					</td>
				</tr>
			</c:if>
			<!-- 글쓰기 tap 종료 -->	
			<tr>
				<td colspan="4" align="center" style="padding: 0px;border: none;padding-bottom: 30px;">
				<!-- 10페이지 단위로 이전 이동 -->
					<c:if test="${pstart != 1}">	<!-- 첫번째 그룹X -->
						<a href="list?page=${pstart-1}"> ◀ </a>
					</c:if>		
					<c:if test="${pstart == 1}">	<!-- 첫번째 그룹 10이전 X -->
						◀
					</c:if>
					
					<c:if test="${page != 1}"> <!-- 1페이지 아닐때 -->
						<a href="list?page=${page-1}"> ◁ </a>
				   	</c:if>
				   	<c:if test="${page == 1}">	<!-- 현재페이지 1일 경우 -->
				   		◁
				   	</c:if>
				
				
					<c:forEach begin="${pstart}" end="${pend}" var="i">	<!-- 출력 -->
						<!-- 현재 페이지 색 -->
						<c:if test="${page == i}">
							<c:set var="st" value="style='color:blue;'"/>
						</c:if>
						<c:if test="${page != i}">
							<c:set var="st" value=""/>
						</c:if>
						
						<a href="list?page=${i}" ${st}>${i}</a>
					</c:forEach>
					
					<c:if test="${page != chong}"> <!-- 현재 페이지가 마지막X -->
						<a href="list?page=${page+1}"> ▷ </a>
					</c:if>
					<c:if test="${page == chong}"> <!-- 현재페이지가 마지막 -->
						▷
					</c:if>
					
					<c:if test="${chong != pend}">	<!-- 마지막 그룹X -->
						<a href="list?page=${pend+1}"> ▶ </a>
					</c:if>
					<c:if test="${chong == pend}">	<!-- 마지막 그룹일경우 -->
						▶
					</c:if>
				</td>
			</tr>
		</table>
	</div>
</div>
</section>

</body>
</html>



