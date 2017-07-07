<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>

<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>修改客服管理人员</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x"
				action="${pageContext.request.contextPath}/merchant_edit.do">
				<div class="form-group">
					<div class="label">
						<label>姓名：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="${merchant.name}"
							name="merchant.name" data-validate="required:请输入姓名" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>手机号：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="${merchant.mobile}"
							name="merchant.mobile" data-validate="required:请输入手机号" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>角色：</label>
					</div>
					<div class="field">

						<select class="input" name="merchant.role.rid"
							style="width: 260px; line-height: 17px; display: inline-block"
							data-validate="required:请选择角色">
							<c:forEach items="${lists}" var="item">
								<option value="${item.rid}" <c:if test="${item.rid eq merchant.role.rid}">selected</c:if> >${item.rname}</option>
							</c:forEach>
						</select>

						<div class="tips"></div>
					</div>
				</div>


				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit">
							提交</button>
						<button class="button bg-green icon-backward" type="button"
							onclick="javascript:history.go(-1)">返回</button>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>

</html>