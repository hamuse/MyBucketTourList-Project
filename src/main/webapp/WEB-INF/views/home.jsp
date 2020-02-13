<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Tour</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" charset="UTF-8"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey="></script>   
   <script src="https://d3js.org/d3.v4.js" charset="UTF-8"></script>
   <script src="https://cdn.jsdelivr.net/gh/holtzy/D3-graph-gallery@master/LIB/d3.layout.cloud.js" charset="UTF-8"></script>   
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/animate.css">   
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/themify-icons.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/flaticon.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/gijgo.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/nice-select.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/slick.css">   
   <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/mytourcss/login.css">
   <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/mytourcss/changhost.css">
   <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/mytourcss/createhost.css">
   <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/mytourcss/tourizmstyle/star.css">
   <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/mytourcss/tourizmstyle/tourizmimg.css">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
   <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" charset="UTF-8"></script>
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">   
    <link href="<%=application.getContextPath()%>/resources/mytourjs/review/css/agency.min.css" rel="stylesheet">
    <link href="<%=application.getContextPath()%>/resources/mytourjs/review/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
   <script src="<%=application.getContextPath()%>/resources/mytourjs/app.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/cmm/router.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/cmm/mainHome.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/vue/mainVue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/vue/introVue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/myList/myList.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/myList/myListVue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/vue/mapVue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/vue/mapDVue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/js/intro.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/js/map.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/js/mapD.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/corona/js/corona.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/corona/vue/coronaVue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/hotel/vue/hotelVue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/hotel/js/hotel.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/resto/js/resto.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/crew/resto/vue/restoVue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/jquery-1.12.1.min.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/popper.min.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/bootstrap.min.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/jquery.magnific-popup.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/owl.carousel.min.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/masonry.pkgd.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/jquery.nice-select.min.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/gijgo.min.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/jquery.ajaxchimp.min.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/jquery.form.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/jquery.validate.min.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/mail-script.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/contact.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/js/custom.js" charset="UTF-8"></script>   
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/reviewjs/review.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/reviewjs/reviewbest.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/reviewjs/reviewdetailskill.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/reviewjs/update.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/reviewjs/write.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/reviewjs/wordcloud.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/vue/main_vue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/vue/detail_vue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/vue/write_vue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/vue/search_vue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/review/vue/wordcloudvue.js" charset="UTF-8"></script>   
   <script src="<%=application.getContextPath()%>/resources/mytourjs/user/login.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/user/logout.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/uservue/login_vue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/user/mypage.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/uservue/mypage_vue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/uservue/userupdate.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/user/findinfo.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/uservue/findinfo_vue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/user/deleteinfo.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/uservue/deleteinfo_vue.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/user/userjoin.js" charset="UTF-8"></script>
   <script src="<%=application.getContextPath()%>/resources/mytourjs/uservue/userjoin_vue.js" charset="UTF-8"></script>



   <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" charset="UTF-8"></script>

</head>
<body>

<script>
app.run('<%=application.getContextPath()%>')
</script>
</body>
</html>