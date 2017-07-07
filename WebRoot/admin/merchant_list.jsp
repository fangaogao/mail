<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title></title>
		<link rel="stylesheet" href="css/pintuer.css">
		<link rel="stylesheet" href="css/admin.css">
		<script src="js/jquery.js"></script>
		<script src="js/pintuer.js"></script>
	</head>

	<body>
		<form method="post" action="" id="listform">
			<div class="panel admin-panel">
				<div class="panel-head"><strong class="icon-reorder"> 客服列表</strong>
					<a href="merchant_add.html" style="float:right; display:none;">添加字段</a>
				</div>
				<div class="padding border-bottom">
					<ul class="search" style="padding-left:10px;">
						<li>
							<a class="button border-main icon-plus-square-o" href="${pageContext.request.contextPath}/merchant_addPre.do"> 添加内容</a>
						</li>
						<li>
							<input type="text" placeholder="请输入客服姓名" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
							<a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()"> 搜索</a>
						</li>
					</ul>
				</div>
				<table class="table table-hover text-center">
					<tr>
						<th width="10%">ID</th>
						<th>姓名</th>
						<th>手机号</th>
						<th>状态</th>
						<th>角色</th>
						<th>创建时间</th>
						<th>操作</th>
					</tr>

					<c:forEach items="${merLists}" var="merchant">
						<tr>
								<td width="10%">${merchant.mid}</td>
								<td>${merchant.name}</td>
								<td>${merchant.mobile}</td>
								<td>${merchant.status}</td>
								<td>${merchant.role.rid}</td>
								<td>${merchant.cts}</td>
							
								<td>
									<div class="button-group">
										<a class="button border-green" href="#">
											<span class="icon-user"></span>
											<c:if test="${merchant.status eq 1}">启用</c:if>
										</a>
										<a class="button border-red" href="#">
											<span class="icon-fighter-jet"></span>
											<c:if test="${merchant.status eq 0}">禁用</c:if>
										</a>
										<a class="button border-blue" href="#"><span class="icon-adn"></span>初始化密码</a>
										<a class="button border-main" href="${pageContext.request.contextPath}/merchant_editPre.do?merchant.mid=${merchant.mid}"><span class="icon-edit"></span> 修改</a>
										<a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a>  
									</div>
								</td>
						</tr>
					</c:forEach>	
						
						<tr>
							<td colspan="8">
								<div class="pagelist">
									<a href="">上一页</a> <span class="current">1</span>
									<a href="">2</a>
									<a href="">3</a>
									<a href="">下一页</a>
									<a href="">尾页</a>
								</div>
							</td>
						</tr>
				</table>
			</div>
		</form>
		
		
		 
		<script type="text/javascript">
			 

			//单个删除
			function del(id, mid, iscid) {
				if(confirm("您确定要删除吗?")) {

				}
			}

			 
		</script>
	</body>

</html>