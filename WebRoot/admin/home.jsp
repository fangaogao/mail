<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

	<head>
		<%@ include file="common.jsp"%>
		<title>主页</title>
		<style type="text/css">
			 
			.item a{
				display: inline-block;
				float: left;
				width:200px;
				height:80px;
				margin-right: 50px;
				border-radius:2px;
				overflow: hidden;
			}
			.item a div{
				float: left; 
			}
			 
			.item a div:nth-child(1){
				width:40%;
			}
			.item a div:nth-child(2){
				width:60%;
				text-align: right;
				padding-right: 10px;
				color:#ffffff;
			}
			.item a div:nth-child(2) h3{
				line-height: 50px;font-size: 25px;
			}
			table{
			min-width: 70%;
			max-width:100%;
			}
			table tr{
				border-bottom:1px  dashed #989898;
			}
			table tr td{
				line-height: 80px;
				text-align: center;
			}
			.point{
				display: block;
				width: 10px;
				height: 10px;
				border-radius:50%;
				background: #686868;
			}
			
		</style>
		
	</head>

	<body>
		<div class="item">
			<a style="background:#5CB431;">
				<div><img src="${ctx }/images/dfh.jpg" style="width:70px;"></div>
				<div>
					<h3>待发货</h3>
					<h6>数量：12</h6>
				</div>
			</a>
			<a style="background:#0175b0;">
				<div><img src="${ctx }/images/dtk1.jpg" style="width:70px;"></div>
				<div>
					<h3>待退款</h3>
					<h6>数量：100</h6>
				</div>
			</a>
			<a style="background:#ffae00;">
				<div><img src="${ctx }/images/yhjy1.jpg" style="width:70px;"></div>
				<div>
					<h3>用户建议</h3>
					<h6>数量：12</h6>
				</div>
			</a>
		</div>
		<div style="height: 50px;clear: both;"></div>
		<h2 style="font-weight: 600;border-left:10px solid green;padding-left: 20px;">待发货订单</h2>
		<div style="width: 80%;">
			<marquee  direction="up" height="300px" scrollamount="2">
				<table>
					<tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr>
					
					<tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr><tr>
						<td><span class="point"></span></td>
						<td>天天杯子</td>
						<td>500ML</td>
						<td>5袋</td>
						<td>2000元</td>
						<td>付款时间：2017-09-09 12:00:00</td>
						<td>不要坏的</td>
						<td style="color:green;">待发货</td>
					</tr>
				</table>
			</marquee>
		</div>
		
	</body>

</html>