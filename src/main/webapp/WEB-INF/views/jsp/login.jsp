<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
        <link href="<c:url value='/resources/core/css/bootstrap.min.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/resources/core/css/custom.css' />" rel="stylesheet"></link>
        
        <script>
        $(function()
                {
                    $("#loginForm").validate(
                        {
                            rules: 
                            {
                            	userName: 
                                {
                                    required: true,
                                    maxlength: 12,
                                    minlength: 5,
                                    pattern: /^[a-zA-Z0-9]+$/i
                                }
                            }
                    });	
                });
        </script>
        
    </head>
    <body>
    	<div class="row">
    		<div class="col-md-3 col-md-offset-3">
    			<h1>This is Login page</h1>
    		</div>
    		
    	</div>
        
        <form:form method="POST" modelAttribute="login" class="form-horizontal" id="loginForm">
        	
        	<div class="row">
        		<div class="form-group">
                	<label class="col-sm-1 col-sm-offset-2  control-lable" for="userName">User Name</label>
                	<div class="col-sm-3">
                    	<input type="text" id="userName" name="userName" class="form-control input-sm"/>
                    	<p><span style="color:red">${error}</span></p>
                	</div>
            	</div>
        	</div>
        	
        
        <div class="row">
            <div class="form-actions col-sm-1 col-sm-offset-2">
                <input type="submit" value="Login" class="btn btn-primary btn-sm">
            </div>
        </div>
        </form:form>
    
    	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
        <!--include jQuery Validation Plugin-->
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"
            type="text/javascript"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/additional-methods.min.js"
		type="text/javascript"></script>
    </body>
</html>