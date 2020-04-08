<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>JT鞋子</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Product Pricing Plans Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<script src="js/jquery-1.11.1.min.js"></script> 
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
</head>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script language="JavaScript">
	$(function () {
		loadPage();
		var id = 0;
		$("#appointment").click(function () {
			$.ajax({
				type: "post",
				url: "appoint",
				data: {shoseId:$("#shoseId").val(),wechat:$("#Wechat").val()},
				dataType: "json",
				success: function (data) {
					if(data.success == "true"){
						alert("预定成功！");
					}else {
						alert("预定失败！"+data.error);
					}

				},
				//null值不会被success回调函数捕获，因此可以通过error来实现该功能
				error: function () {
					alert("预定失败");
				}
			})
		})

		// $("#appoint").click(function (obj) {
		// 	id = $("#shoseId").val();
		// })
	})
	function loadPage() {
		$.ajax({
			type: "get",
			url: "findall",
			// data: $("#sid"),
			dataType: "json",
			success: function (data) {
				for(var i = 0;i<data.length;i++){
					var memberList=$("#shoselist").find("#shoselist1").clone(true);
					memberList.find("#shoseId").val(data[i].shoseId);
					memberList.find("#name").html(data[i].name);
					memberList.find("#number").html(data[i].number);
					memberList.find("#remarks").html(data[i].remarks);
					memberList.find("#price").html(data[i].price);
					// memberList.find("#simg").html(data[i].simg);
					memberList.find("#simg").attr("src",data[i].simg);
					$("#shoselist").append(memberList);
				}
				$("#shoselist1").empty();

			},
			//null值不会被success回调函数捕获，因此可以通过error来实现该功能
			error: function () {
				alert("获取数据失败！");

			}
		})
	}
</script>
<body>
	<div class="main">

		<h1>Shose Shop</h1>

		<div class="w3l_main_grids" id = 'shoselist'>
			<div class="w3l_main_grid" id = 'shoselist1'>
				<div class="w3l_main_grid_top" id = "shoseId">
					<h3 id = 'name'>Product</h3>
					<img id = 'simg' src="images/1.png" alt=" " />
				</div>
				<div class="w3l_main_grid_middle" >
					数量：<span id = 'number'></span>
				</div>
				<div class="w3l_main_grid_middle">
					简介：<span id = 'remarks'></span>
				</div>
				<div class="w3ls_order">
					<h3 >$<span id = 'price'>143</span></h3>
					<a class="popup-with-zoom-anim" href="#small-dialog" id="appoint">预定</a>
				</div>
			</div>
<%--			<div class="w3l_main_grid">--%>
<%--				<div class="w3l_main_grid_top w3l_main_grid_top1">--%>
<%--					<h3>Product <span>2</span></h3>--%>
<%--					<img src="images/2.png" alt=" " />--%>
<%--				</div>--%>
<%--				<div class="w3l_main_grid_middle w3l_main_grid_middle1">--%>
<%--					<ul>--%>
<%--						<li>velit esse quam nihil</li>--%>
<%--						<li>enim ipsam voluptatem</li>--%>
<%--						<li>beatae vitae cta sunt</li>--%>
<%--					</ul>--%>
<%--				</div>--%>
<%--				<div class="w3ls_order w3ls_order1">--%>
<%--					<h3>$129</h3>--%>
<%--					<a class="popup-with-zoom-anim" href="#small-dialog">Order Now</a>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			<div class="w3l_main_grid">--%>
<%--				<div class="w3l_main_grid_top w3l_main_grid_top2">--%>
<%--					<h3>Product <span>3</span></h3>--%>
<%--					<img src="images/3.png" alt=" " />--%>
<%--				</div>--%>
<%--				<div class="w3l_main_grid_middle w3l_main_grid_middle2">--%>
<%--					<ul>--%>
<%--						<li>iste natus error sit</li>--%>
<%--						<li>occaecat cupidatat non</li>--%>
<%--						<li>in culpa qui officia</li>--%>
<%--					</ul>--%>
<%--				</div>--%>
<%--				<div class="w3ls_order w3ls_order2">--%>
<%--					<h3>$112</h3>--%>
<%--					<a class="popup-with-zoom-anim" href="#small-dialog">Order Now</a>--%>
<%--				</div>--%>
<%--			</div>--%>
			<div class="clear"> </div>
		</div>
		<div class="wthree_pop_up"> 
			<div id="small-dialog" class="mfp-hide agile_book_form">
				<h2>鞋子预定信息</h2>
				<form action="#" method="post">
					<div class="wthree_pop_up_left"> 
						<h4>姓名</h4>
						<input type="text" id="BuyName" placeholder="名字" required=""/>
						<h4>微信号</h4>
						<input type="text" id="Wechat" class="" placeholder="微信号" required=""/>
                        <h4>手机号</h4>
                        <input type="text" id="Phone" class="" placeholder="手机号" required=""/>
                        <input type="submit" id="appointment" value="Order Now">

<%--						<div class="agileits_pop_up_left"> --%>
<%--							<h3>Your Shoe Model</h3>--%>
<%--							<div class="colr">--%>
<%--								<label class="radio"><input type="radio" name="radio" checked=""><i></i>Casual Wear</label>--%>
<%--							</div>--%>
<%--							<div class="colr">--%>
<%--								<label class="radio"><input type="radio" name="radio"><i></i>Party Wear</label>--%>
<%--							</div>--%>
<%--							<div class="colr">--%>
<%--								<label class="radio"><input type="radio" name="radio"><i></i>Formal Wear</label>--%>
<%--							</div>--%>
<%--						</div>--%>
					</div>
<%--					<div class="wthree_pop_up_left"> --%>
<%--						<div class="wthree_pop_up_left1">--%>
<%--							<h4>Your Card Number</h4>--%>
<%--							<input type="text" name="Name" placeholder="××××...." required=""/>--%>
<%--							<h4>Country</h4>--%>
<%--							<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">--%>
<%--								<option value="null">Australia</option>--%>
<%--								<option value="null">America</option> --%>
<%--								<option value="null">Russia</option>					--%>
<%--								<option value="null">Japan</option>								--%>
<%--							</select>--%>
<%--						</div>--%>
<%--						<div class="wthree_pop_up_left1_sub">--%>
<%--							<img src="images/card.png" alt=" " />--%>
<%--						</div>--%>
<%--						<div class="clear"> </div>--%>
<%--						<div class="w3_delivery_address">--%>
<%--							<h5>Delivery Address</h5>--%>
<%--							<h4>Email Address</h4>--%>
<%--							<input type="email" name="Email" placeholder="Your Email" required=""/>--%>
<%--							<h4>Street Line Address</h4>--%>
<%--							<input type="text" name="Street Line Address" placeholder="Street Line Address" required=""/>--%>
<%--							<h4>PIN / Zip Code</h4>--%>
<%--							<input type="text" name="Pin" placeholder="1234" required=""/>--%>
<%--							<input type="submit" value="Order Now">--%>
<%--						</div>--%>
<%--					</div>--%>
					<div class="clear"> </div>
				</form>
			</div>
			<!-- pop-up-box -->
			<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!--//pop-up-box -->
			<script>
				$(document).ready(function() {
					$('.popup-with-zoom-anim').magnificPopup({
						type: 'inline',
						fixedContentPos: false,
						fixedBgPos: true,
						overflowY: 'auto',
						closeBtnInside: true,
						preloader: false,
						midClick: true,
						removalDelay: 300,
						mainClass: 'my-mfp-zoom-in'
					});														
				});
			</script>
		</div>

		<div class="agile_copy_right">
<%--			<p>&copy; 2016 Product Pricing Plans Widget. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>--%>
		</div>
	</div>
</body>
</html>