<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questions</title>
        <link href="<c:url value='/resources/core/css/bootstrap.min.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/resources/core/css/custom.css' />" rel="stylesheet"></link>
        
    </head>
    <body>
    	<div class="row">
    		<div class="col-md-5 col-md-offset-3">
    			<h1>Welcome to my page</h1>
    			<h2>Hello ${userName}</h2>
    		</div>
    	</div>
    	
    	
    	
    	<form:form method="POST"  class="form-horizontal">
    		<div class="row">
            	<div class="form-actions col-sm-1 col-sm-offset-2">
                	<input type="submit" value="Logout" class="btn btn-primary btn-sm">
            	</div>
        	</div>
    	</form:form>