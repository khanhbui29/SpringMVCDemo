<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questions</title>
        <link href="<c:url value='/resources/core/css/bootstrap.min.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/resources/core/css/hello.css' />" rel="stylesheet"></link>
        
    </head>
    <body>
    	<div class="row">
    		<div class="col-md-5 col-md-offset-3">
    			<h1>This is security questions page</h1>
    		</div>
    	</div>
    	
    	<form:form method="POST" modelAttribute="questions" class="form-horizontal">
    		<div class="row">
            	<div class="form-group">
            	<!-- Question 1 -->
                	<label class="col-sm-1 col-sm-offset-2 control-lable" for="question1">Question 1</label>
                	<div class="col-md-5">
                    	<form:select path="question1" id="question1" class="form-control input-sm">
                        	<form:option value="">Select a Question</form:option>
                        	<form:options items="${questionList}" />
                    	</form:select>
                    	<div class="has-error">
                        	<form:errors path="question1" class="help-inline"/>
                    	</div>
                	</div>
            	</div>
        	</div>
        	<!-- Answer 1 -->
        	<div class="row">
            	<div class="form-group">
            	<!-- Question 1 -->
                	<label class="col-sm-1 col-sm-offset-2  control-lable" for="userName">Answer 1</label>
                		<div class="col-sm-3">
                    		<form:input type="text" path="answer1" id="answer1" class="form-control input-sm"/>
                    		<div class="has-error">
                        		<form:errors path="answer1" class="help-inline"/>
                    		</div>
                		</div>
            	</div>
        	</div>
        	
        	<!-- Question 2 -->
        	<div class="row">
            	<div class="form-group">
            	
                	<label class="col-sm-1 col-sm-offset-2 control-lable" for="country">Question 2</label>
                	<div class="col-md-5">
                    	<form:select path="question2" id="question2" class="form-control input-sm">
                        	<form:option value="">Select a Question</form:option>
                        	<form:options items="${questionList}" />
                    	</form:select>
                    	<div class="has-error">
                        	<form:errors path="question2" class="help-inline"/>
                    	</div>
                	</div>
            	</div>
        	</div>
        	<!-- Answer 2 -->
        	<div class="row">
            	<div class="form-group">
            	<!-- Question 1 -->
                	<label class="col-sm-1 col-sm-offset-2  control-lable" for="userName">Answer 2</label>
                		<div class="col-sm-3">
                    		<form:input type="text" path="answer2" id="answer2" class="form-control input-sm"/>
                    		<div class="has-error">
                        		<form:errors path="answer2" class="help-inline"/>
                    		</div>
                		</div>
            	</div>
        	</div>
        	
        	<!-- Question 3 -->
        	<div class="row">
            	<div class="form-group">
            	
                	<label class="col-sm-1 col-sm-offset-2 control-lable" for="country">Question 3</label>
                	<div class="col-md-5">
                    	<form:select path="question3" id="question3" class="form-control input-sm">
                        	<form:option value="">Select a Question</form:option>
                        	<form:options items="${questionList}" />
                    	</form:select>
                    	<div class="has-error">
                        	<form:errors path="question3" class="help-inline"/>
                    	</div>
                	</div>
            	</div>
        	</div>
        	<!-- Answer 3 -->
        	<div class="row">
            	<div class="form-group">
            	<!-- Question 1 -->
                	<label class="col-sm-1 col-sm-offset-2  control-lable" for="userName">Answer 3</label>
                		<div class="col-sm-3">
                    		<form:input type="text" path="answer3" id="answer3" class="form-control input-sm"/>
                    		<div class="has-error">
                        		<form:errors path="answer3" class="help-inline"/>
                    		</div>
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