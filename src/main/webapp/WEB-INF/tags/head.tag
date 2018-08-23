<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

        <!--
        Springfield :: a Framework production
        -->

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <sec:csrfMetaTags />

        <title>KBS系统</title>

        <!-- ================== Favicons ================== -->
        <spring:url value="/assets/image/favicon.png" var="favoriteIcon"/>
        <link href="${favoriteIcon}" rel="icon"/>

        <!-- ================== BEGIN BASE CSS STYLE ================== -->
        <spring:url value="/assets/vendor/bootstrap/css/bootstrap.min.css" var="bootstrapCss"/>
        <link href="${bootstrapCss}" rel="stylesheet" type="text/css" media="screen, projection"/>

        <spring:url value="/assets/vendor/font-awesome/css/font-awesome.min.css" var="fontAwesomeCss"/>
        <link href="${fontAwesomeCss}" rel="stylesheet" type="text/css" media="screen, projection"/>

        <spring:url value="/assets/vendor/animate/animate.min.css" var="animateCss"/>
        <link href="${animateCss}" rel="stylesheet" type="text/css" media="screen, projection"/>

        <spring:url value="/assets/vendor/toastr/css/toastr.min.css" var="toastrCss"/>
        <link href="${toastrCss}" rel="stylesheet" type="text/css" media="screen, projection"/>

        <spring:url value="/assets/vendor/inspinia/css/style.min.css" var="bootstrapThemeCss"/>
        <link href="${bootstrapThemeCss}" rel="stylesheet" type="text/css" media="screen, projection"/>

        <spring:url value="/assets/vendor/springfield/css/springfield.helper.min.css" var="springfieldHelperCss"/>
        <link href="${springfieldHelperCss}" rel="stylesheet" type="text/css" media="screen, projection"/>

        <spring:url value="/assets/vendor/springfield/css/springfield.min.css" var="springfieldCss"/>
        <link href="${springfieldCss}" rel="stylesheet" type="text/css" media="screen, projection"/>

        <spring:url value="/assets/style/app.min.css" var="app"/>
        <link href="${app}" rel="stylesheet" type="text/css" media="screen, projection"/>

        <!-- ================== END BASE CSS STYLE ================== -->
