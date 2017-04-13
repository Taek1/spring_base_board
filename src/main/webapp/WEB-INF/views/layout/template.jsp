<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" 	uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" 	uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" 	uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" 		uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			
		});
	</script>
</head>

<!-- R-Head ================================================== -->
<body>
<div id="header">
	<tiles:insertAttribute name="header"/>
</div>

<!-- R-Content	================================================== -->
<div id="content" class="container">
	<div class="col-md-9 col-sm-8 col-xs-12 mb20">
		<tiles:insertAttribute name="content"/>
	</div>
	<div class="col-md-3 col-sm-4 col-xs-12">
		<tiles:insertAttribute name="sideBar"/>
	</div>
</div>
<!-- R-Footer	================================================== -->

<div id="footer" style="margin-top: 25px;">
	<tiles:insertAttribute name="footer"/>
</div>

</body>
<!-- Body	================================================== -->

</html>