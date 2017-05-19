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
    			<h1>This is question verification page</h1>
    		</div>
    	</div>
    	
    	<form:form method="POST" modelAttribute="verification" class="form-horizontal">
    		<div class="row">
            	<div class="form-group">
            	<!-- Question -->
                	<label class="col-sm-1 col-sm-offset-2 control-lable" for="question">Question</label>
                	<div class="col-md-5">
                    	<form:select path="question" id="question" class="form-control input-sm">
                        	<form:option value="">Select a Question</form:option>
                        	<form:options items="${questionList}" />
                    	</form:select>
                    	<div class="has-error">
                        	<form:errors path="question" class="help-inline"/>
                    	</div>
                	</div>
            	</div>
        	</div>
        	<!-- Answer  -->
        	<div class="row">
            	<div class="form-group">
            	<!-- Question 1 -->
                	<label class="col-sm-1 col-sm-offset-2  control-lable" for="answer">Answer</label>
                		<div class="col-sm-3">
                    		<form:input type="text" path="answer" id="answer" class="form-control input-sm"/>
                    		<div class="has-error">
                        		<form:errors path="answer" class="help-inline"/>
                    		</div>
                    		<p><span style="color:red">${error}</span></p>
                		</div>
            	</div>
        	</div>
        	
        	
        	<div class="row">
            	<div class="form-actions col-sm-1 col-sm-offset-2">
                	<input type="submit" value="Submit" class="btn btn-primary btn-sm">
            	</div>
        	</div>
    	</form:form>
    	
    	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    </body>
</html>