<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

<h3 style="text-align: center;">스터디/프로젝트 팀원 모집글 삭제</h3>
<br>
<FORM name='frm' method='POST' action='./delete.do'>
	<input type="hidden" name="sp_no" value="${dto.sp_no }">
	<div class='content'>
		<table class='table'>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="m_pw" size="20"></td>
				<td><input type='button' onclick="pwCheck()" value='비밀번호 확인'></td>
			</tr>
		</table>
	</div>
	<br>
	<div class='bottom' style="float: right;">
		<input type='submit' class="btn btn-default" value='삭제진행'> <input
			type='button' class="btn btn-default" value='목록'
			onclick="location.href='./list.do'">
	</div>
</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>