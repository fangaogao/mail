<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

	<head>
		<%@ include file="common.jsp"%>
		<title>增加客服管理人员</title>
	</head>
	
	<!-- 
		判断手机号是否已经存在。
		忘了ajax异步请求，回学校参考以前代码写...
		<script type="text/javascript" src="admin/js/jquery.js"></script> 
		<script type="text/javascript"> 
		
			$(".mobile").blur(function(){
				var url = "${imgctx}/merchant_find.do";
				var val = $(".mobile").val();
				var datas = {name:val};
				$.post(url,datas,function(data){
					...
				},json);
			});
	
		</script> 
	 -->
	

	<body>
	
		<div class="panel admin-panel">
			<div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加客服管理人员</strong></div>
			<div class="body-content">
				<form method="post" class="form-x" action="${imgctx}/merchant_add.do">
					<div class="form-group">
						<div class="label">
							<label>姓名：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50" value="" name="merchant.name" data-validate="required:请输入姓名" />
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>手机号：</label>
						</div>
						<div class="field">
							<input type="text" class="mobile" value="" name="merchant.mobile" data-validate="required:请输入手机号" />
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>角色：</label>
						</div>
						<div class="field">
							<select name="merchant.role.rid" class="input"   style="width:260px; line-height:17px; display:inline-block" data-validate="required:请选择角色" >
					            	<option value="">--请选择--</option>
					            <c:forEach items="${roles}" var="item">
					            	<option value="${item.rid}">${item.rname}</option>
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
							<button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
							<button class="button bg-green icon-backward" type="button" onclick="javascript:history.go(-1)"> 返回</button>
						</div>
					</div>
				</form>
			</div>
		</div>

	</body>

</html>