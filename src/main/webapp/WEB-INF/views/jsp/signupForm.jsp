<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
        <link href="<c:url value='/resources/core/css/bootstrap.min.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/resources/core/css/custom.css' />" rel="stylesheet"></link>
    </head>
    <body>
    	<div class="row">
    		<div class="col-md-3 col-md-offset-3">
    			<h1>This is signup page</h1>
    		</div>
    		
    	</div>
        
        <form:form method="POST" modelAttribute="userinfo" class="form-horizontal">
        	
        	<div class="row">
        		<div class="form-group">
                	<label class="col-sm-1 col-sm-offset-2  control-lable" for="userName">User Name</label>
                	<div class="col-sm-3">
                    	<form:input type="text" path="userName" id="userName" class="form-control input-sm"/>
                    	<div class="has-error">
                        	<form:errors path="userName" class="help-inline"/>
                    	</div>
                	</div>
            	</div>
        	</div>
        	
        	<div class="row">
            <div class="form-group">
                <label class="col-sm-1 col-sm-offset-2 control-lable" for="dob">Date of birth</label>
                <div class="col-sm-3">
                    <form:input type="text" path="dob" id="dob" placeholder="MM/DD/YYYY" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="dob" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-actions col-sm-1 col-sm-offset-2">
                <input type="submit" value="Register" class="btn btn-primary btn-sm">
            </div>
        </div>
        </form:form>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    </body>
</html>