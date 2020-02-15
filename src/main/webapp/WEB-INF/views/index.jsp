<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Tour</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"
	charset="UTF-8"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
</head>
<body>

	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

	<div class="container" style="margin-left: 2%;">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<div class="well well-sm" style="width: 1400px;">
					<div class="row">
						<div class="col-sm-6 col-md-4">
							<img
								src="<%=application.getContextPath()%>/resources/mytourimg/hamuse.jpg"
								alt="" class="img-rounded img-responsive" />
						</div>
						<div style="margin-left: 40%;">
							<h1>장해경</h1>
							<p>
							<h3>hamuseco@gmail.com</h3>
							<h3>https://github.com/hamuse</h3>
							<h3></h3>
							<br /> <a href="http://www.장해경.coo.kr">www.장해경.coo.kr</a> <br />
							
							<br />

							<p></p>
							<p>
							<h2>안녕하세요 장해경입니다.</h2>
							저의 프로젝트에 대해서 소개하고자 합니다.<br /> 페이지 아래쪽으로 가시면 <br /> 프로젝트 URL/
							시연영상/ PPT를 확인하실수 있습니다.

							<h1>
								<b>전문기술</b>
							</h1>
							<p>
							<h3 style="word-spacing: 20px;">
								JAVA ECMASCRIPT6 JQUERY MYBATIS <br /> <br /> ANDROID KOTLIN
								SWIFT IOS
							</h3>
							<p></p>
							<br />
							<p>
							<h2>
								<b>자주 사용하는 소프트웨어</b>
							</h2>
							<h3 style="word-spacing: 20px;">
								MARIADB ORACLE MYSQL MAVEN <br /> <br /> SPRING5 SPRINGBOOT
								GIT 전자정부프레임워크
							</h3>
							<p></p>

							<!-- Split button -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-left: 27%;">
		<iframe width="560" height="315"
			src="https://www.youtube.com/embed/IiYp6irxKhQ" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
	</div>
	<div class="btnClass"
		style="-webkit-writing-mode: vertical-lr; width: 100%; margin-left: 35%;">
		<div style="margin-right: 20%;">
			<button id="projectbtn" type="button">
				<img
					src="<%=application.getContextPath()%>/resources/mytourimg/instagram-2433265_640.png"
					alt="" style="width: 100px; height: 100px;">
				<h4>Project</h4>
			</button>
		</div>
		<div style="margin-right: 20%;">
			<button id="pptbtn" type="button">
				<img
					src="<%=application.getContextPath()%>/resources/mytourimg/ppt.png"
					alt="" style="width: 100px; height: 100px;">
				<h4>PPT</h4>
			</button>
		</div>
	</div>
	<script>
$('#projectbtn').click(()=>{
	location.href = '<%=application.getContextPath()%>/home'
})
$('#pptbtn').click(()=>{
	location.href = 'https://docs.google.com/presentation/d/1683xI0XZTCN8r20lCEQePsdL-J44skLwv4vrWl0-yb4/edit?usp=sharing'
})
$('#ytbbtn').click(()=>{
	location.href = 'https://youtu.be/IiYp6irxKhQ'
})

</script>
</body>
</html>
