<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>">
<title>${title}</title>
<link href="themes/nzblue/css/css.css" rel="stylesheet" type="text/css" />
<link href="themes/nzblue/css/css_2.css" rel="stylesheet" type="text/css" />
<link href="themes/nzblue/css/nzcms_top.css" rel="stylesheet" type="text/css">
<link href="themes/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<table width="1004" border="0" align="center" cellpadding="1" cellspacing="10" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
		<tr>
			<td align="center" valign="top" bgcolor="#FFFFFF" class="bg_qc">
				<table width="100%" height="27" border="0" cellpadding="8" cellspacing="0" bgcolor="#F6F6F6">
					<tr>
						<td align="left" class="p12">您的位置： <a href="index/index.action">首页</a>&nbsp;&gt;&gt;&nbsp; <a
							href="index/files.action?id=${files.cateid }">${files.catename }</a>
						</td>
					</tr>
				</table>
				<table height="35" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table height="25" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="center" class="p28"><font class="p28">${files.filesname }</font></td>
					</tr>
				</table>
				<table height="35" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F6F6F6" class="dx">
					<tr>
						<td height="20" align="center">&nbsp;&nbsp;发稿作者：${files.realname }
							&nbsp;&nbsp;‖&nbsp;&nbsp;发布时间：${files.addtime }&nbsp;&nbsp;‖&nbsp;&nbsp;查看${files.hits }次&nbsp;&nbsp;
							‖&nbsp;&nbsp;<a href="index/download.action?id=${files.filesid }"><font color="red">点击下载</font></a>&nbsp;&nbsp;
						</td>
					</tr>
				</table>

				<table height="15" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>

				<table height="15" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="left">
							<div class="z" id="z">${files.contents }</div>
						</td>
					</tr>
				</table>
				<table height="15" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>

				<table height="15" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table width="95%" height="60" border="0" cellpadding="0" cellspacing="0" class="dx">
					<tr>
						<td align="center" valign="middle"><div class="box">
								<div class="box_1">
									<h3>
										<span class="text">用户评论</span>(共<font class="f1">${tnum }</font>条评论)
									</h3>
									<div class="boxCenterList clearfix" style="height: 1%;">
										<ul class="comments">
											<c:forEach items="${topicList}" var="topic">
												<li class="word"><font class="f2">${topic.username } </font> <font class="f3">(${topic.addtime })
												</font> <br /> <img src="themes/images/stars${topic.num }.gif" />
													<p>${topic.contents }</p></li>
											</c:forEach>
										</ul>
										<div class="blank5"></div>
										<div class="commentsList">
											<c:if test="${sessionScope.userid != null }">
												<form action="index/addTopic.action" method="post" name="commentForm" id="commentForm">
													<table width="710" border="0" cellspacing="5" cellpadding="0">
														<tr>
															<td align="right">评价等级：</td>
															<td><input name="num" type="radio" value="1" id="comment_rank1" /> <img
																src="themes/images/stars1.gif" /> <input name="num" type="radio" value="2" id="comment_rank2" /> <img
																src="themes/images/stars2.gif" /> <input name="num" type="radio" value="3" id="comment_rank3" /> <img
																src="themes/images/stars3.gif" /> <input name="num" type="radio" value="4" id="comment_rank4" /> <img
																src="themes/images/stars4.gif" /> <input name="num" type="radio" value="5" checked="checked"
																id="comment_rank5" /> <img src="themes/images/stars5.gif" /></td>
														</tr>
														<tr>
															<td align="right" valign="top">评论内容：</td>
															<td><textarea name="contents" class="inputBorder" style="height: 50px; width: 620px;"></textarea> <input
																type="hidden" name="filesid" value="${files.filesid }" /></td>
														</tr>
														<tr>
															<td colspan="2"><input type="submit" value="评论" class="f_r bnt_blue_1" style="margin-right: 8px;" /></td>
														</tr>
													</table>
												</form>
											</c:if>
										</div>
									</div>
								</div>
							</div></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
