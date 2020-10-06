<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>The Code</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row pt-5">
            <div class="col-sm-8 offset-sm-2">
                <div class="card border-dark">
                    <div class="card-body">
                        <c:if test="${message != null}">                        
	                        <div class="alert alert-primary alert-dismissible fade show" role="alert">
	                           <strong>Message:</strong>
	                           ${ message }
	                           <button type="button" class="close" data-dismiss="alert" aria-label="Close">
								    <span aria-hidden="true">&times;</span>
							   </button>
	                        </div>
                        </c:if>
                        <form action="/process" method="post">
                            <div class="form-group">
                                <label>What is the code?</label>
                                <input type="text" name="code" class="form-control">
                            </div>
                            <input type="submit" value="Try Code" class="btn btn-dark btn-block">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>