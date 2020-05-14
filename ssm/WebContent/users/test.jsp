<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>${title}</title>
<link href="themes/nzblue/css/css.css" rel="stylesheet" type="text/css" />
<link href="themes/nzblue/css/css_2.css" rel="stylesheet" type="text/css" />
<link href="themes/nzblue/css/nzcms_top.css" rel="stylesheet" type="text/css">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<table width="1004" border="0" align="center" cellpadding="1" cellspacing="10" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
		<tr>
			<td align="center" valign="top" bgcolor="#FFFFFF" class="bg_qc">
				<table width="100%" height="27" border="0" cellpadding="8" cellspacing="0" bgcolor="#F6F6F6">
					<tr>
						<td align="left" class="p12">您的位置： <a href="index/index.action">首页</a>&nbsp;&gt;&gt;&nbsp; <a
							href="index/papers.action?id=${paper.courseid }">问卷信息</a>&nbsp;&gt;&gt;&nbsp;${paper.papername }
						</td>
					</tr>
				</table>
				<table height="25" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="center" class="p28"><font class="p28">${paper.papername }</font></td>
					</tr>
					<tr>
						<td>
							<div id="timer" style="color: red; font-size: large;"></div>
						</td>
					</tr>
				</table>
				<table height="35" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F6F6F6" class="dx">
					<tr>
						<td height="20" align="center">&nbsp;&nbsp;出题人：${paper.realname }&nbsp;&nbsp;</td>
					</tr>
				</table>

				<table height="35" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<form action="index/test.action" method="post" name="examform">
					<table width="95%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="left">
								<div class="z" id="z">
									<table width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
										<tr>
											<td bgcolor="#ffffff" colspan="5">&nbsp;问卷题目</td>
										</tr>
										<c:forEach items="${questionList }" varStatus="st" var="x">
											<tr>
												<td bgcolor="#ffffff" colspan="5">${st.index + 1}、${x.question }</td>
											</tr>
											<tr>
												<td bgcolor="#ffffff" colspan="1"><input type="radio" name="q${x.questionid}" checked="checked" value="是" />是</td>
												<td bgcolor="#ffffff" colspan="4"><input type="radio" name="q${x.questionid}" value="否" />否</td>
											</tr>
										</c:forEach>
										<tr>
											<td bgcolor="#ffffff" colspan="5" align="center"><input type="hidden" name="id"
												value="${paper.paperid }" /> <input type="submit" value="提交问卷" name="button" /></td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
