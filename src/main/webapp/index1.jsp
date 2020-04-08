<!--
JT
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<head>
<title>JT鞋子</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Webhosting Pricing Tables Widget a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Default-JavaScript-File -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //Default-JavaScript-File -->

<!-- default-css-files -->
	<link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
<!-- default-css-files -->

<link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all" /><!-- popup css -->  

<!-- style.css-file -->
	<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- //style.css-file -->
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script language="JavaScript">
		$(function () {
			$("#search").click(function () {
				$.ajax({
					type: "post",
					url: "findbysid",
					data: $("#sid"),
					dataType: "json",
					success: function (data) {
						var html = "";
						html +=
								"<td>" + data.shoseId + "</td><td>" + data.name + "</td><td>" + data.number
								+ "</td><td>" + data.price + "</td><td>" + data.remarks + "</td>";
						$("#shose").html(html);
					},
					//null值不会被success回调函数捕获，因此可以通过error来实现该功能
					error: function () {
						alert("请输入正确的鞋子号！");
					}
				})
			})
		})
	</script>
</head>
<!-- Head -->
<body>

<!-- /plans -->
<div class="plans-section">
	<div class="plans-main">
		<h1 class="w3l-inner-h-title">Shose Shop</h1>
				 <div class="price-grid">
					<div class="price-block agile">
						<div class="price-gd-top pric-clr1">
							<i class="fab fa-accusoft"></i>
							<h4>搜索鞋子</h4>
<%--							<h3>Free</h3>--%>
<%--							<p>1 SoftWare updates</p>--%>
<%--							<p>1 Master Account</p>--%>
<%--							<p>1GB Storage Usage</p>--%>
<%--							<p>10 Email Accounts</p>--%>
<%--							<h5>Localization Features, Adding Policy terms</h5>--%>
						</div>
						<div class="price-gd-bottom">
							   
							<div class="price-selet pric-sclr1">		    			   
								<a href="#findshose" class="w3_agileits_sign_up2 popup-with-zoom-anim  ab scroll">搜索</a>
							</div>
						</div>
					</div>
				</div>
<%--				<div class="price-grid ">--%>
<%--					<div class="price-block price-block1 agile">--%>
<%--						<div class="price-gd-top pric-clr2">--%>
<%--							<i class="fab fa-adn"></i>--%>
<%--							<h4>Half Year</h4>--%>
<%--							<h3><span>$</span>50</h3>--%>
<%--							<p>10 SoftWare updates</p>--%>
<%--							<p>5 Master Accounts</p>--%>
<%--							<p>25GB Storage Usages</p>--%>
<%--							<p>20 Email Accounts</p>--%>
<%--						--%>
<%--							<h5>Core Multi Live Exchange Rates, dual pro</h5>--%>
<%--						</div>--%>
<%--						<div class="price-gd-bottom">--%>
<%--							--%>
<%--							<div class="price-selet pric-sclr2">--%>
<%--								<a href="#small-dialog" class="w3_agileits_sign_up2 popup-with-zoom-anim ab scroll" >Signup Now</a>--%>

<%--							</div>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--				<div class="price-grid1 lost">--%>
<%--					<div class="price-block price-block2 agile">--%>
<%--						<div class="price-gd-top pric-clr3">--%>
<%--							<i class="fab fa-angellist"></i>--%>
<%--							<h4>Annual</h4>--%>
<%--							<h3><span>$</span>100</h3>--%>
<%--							<p>Unlimited SoftWare updates</p>--%>
<%--							<p>Unlimited  Master Accounts</p>--%>
<%--							<p>Unlimited  Storage Usages</p>--%>
<%--							<p>Unlimited  Email Accounts</p>--%>
<%--							--%>
<%--							<h5>Adapting Types & Multi premium core</h5>--%>
<%--						</div>--%>
<%--						<div class="price-gd-bottom">--%>
<%--							--%>
<%--							<div class="price-selet pric-sclr3">--%>
<%--								<a href="#small-dialog" class="w3_agileits_sign_up2 popup-with-zoom-anim  ab scroll" >Signup Now</a>--%>
<%--							</div>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--				</div>--%>
				<div class="clear"></div>
	</div>
</div>
<!-- //plans -->
	
<!-- copyright -->
<div class="copyright-agile">
<%--	<p>&copy; 2020 JT. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>--%>
</div>
<!-- //copyright -->

	<!-- popup signup form -->
	<div class="wthree_pop_up"> 
		<div id="small-dialog" class="mfp-hide agile_signup_form">
			<h2>Signup For Your Selected Choice</h2>
			<form action="#" method="post">
			<div class="w3_ab">
				<div class="form-control"> 
					<label class="header">First Name :</label>
					<input type="text" id="firstname" name="firstname"  title="Please enter your First Name" required="">
				</div>
				
				<div class="form-control">
					<label class="header1">Last Name :</label>
					<input type="text" id="lastname" name="firstname"  title="Please enter your Last Name" required="">
				</div>

				<div class="form-control">	
					<label class="header2">Email Address :</label>
					<input type="email" id="email" name="email" title="Please enter a valid email" required="">
				</div>

				

				<div class="form-control">	
					<label class="header3">Password :</label>
					<input type="password" class="lock" name="password"  id="password1" required="">
				</div>

				<div class="form-control">	
					<label class="header4">Confirm Password :</label>	
					<input type="password" class="lock" name="confirm-password"  id="password2" required="">
				</div>	
				
				<div class="w3_submit">
					<input type="submit" class="register" value="SignUp">
				</div>
				</div>
			</form>
		</div>
		<div id="findshose" class="mfp-hide agile_signup_form">
			<h2>选择你要搜索的鞋子号</h2>
			<form action="#" method="post">
				<div class="w3_ab">
					<div class="form-control">
<%--						<label class="header">鞋子编号 :</label>--%>
						<input type="text" id="sid" class="lock"  name="sid"  title="Please enter your Shose Id" required="">
					</div>
					<div class="w3_submit">
						<input type="button" id="search"  class="register" value="Search">
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}
		function validatePassword(){
			var pass2=document.getElementById("password2").value;
			var pass1=document.getElementById("password1").value;
			if(pass1!=pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');	 
				//empty string means no validation error
		}
	</script>

<!-- //popup signup form -->

<!-- pop-up-box -->
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
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
	<!--//pop-up-box -->
	
</body>
</html>