<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

					<h3 style="text-align: center;">팀장신청 수정</h3>
					<FORM name='frm' method='POST'
						action='./update.do?ca_no=${dto.ca_no}'>
						<div>
							<table class='table'>
								<tr>
									<th>No.</th>
									<td>${dto.ca_no }</td>
								</tr>
								<tr>
									<th>의뢰인</th>
									<td>${dto.ca_id }</td>
								</tr>
								<tr>
									<th>금액</th>
									<td><input type="text" name="ca_price" size="20"
										value=${dto.ca_price }></td>
								</tr>
								<tr>
									<th>소요일</th>
									<td><textarea rows="10" cols="55" name="ca_date">${dto.ca_date }</textarea></td>
								</tr>
								<tr>
									<th>한마디</th>
									<td><input type="text" name="ca_memo" size="20"
										value=${dto.ca_memo }></td>
								</tr>
								<tr>
									<th>등록일</th>
									<td>${dto.ca_newdate }</td>
								</tr>
								<tr>
									<th>채택여부</th>
									<td>
									<c:choose>
									<c:when test="${dto.ca_select==0 }"> 미채택
									</c:when>
									<c:when test="${dto.ca_select==1 }"> 채택
									</c:when>
									</c:choose>									
									</td>
								</tr>
							</table>
						</div>
						<div class='bottom' style="float: right;">
							<input type='submit' class="btn btn-default" value='수정진행'> 
							<input type='button' class="btn btn-default" value='목록'
								onclick="location.href='./read.do?ca_no=${dto.ca_no}'">
						</div>
					</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>