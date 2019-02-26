<!DOCTYPE HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    
    <title>Insticator | Home</title>
    
    <link href="lib/css/bootstrap.min.css" rel="stylesheet">
    <link href="lib/css/style.css" rel="stylesheet">
    <!--[if lt IE 9]>
		<script src="lib/js/html5shiv.min.js"></script>
		<script src="lib/js/respond.min.js"></script>
	<![endif]-->    
</head>
<body>
	<div class="container text-center" id="tasksDiv">
		<h2>INSTICATOR</h2>
		<h3>Question</h3>
		<hr>
		<div class="table-responsive">
			<form class="form-horizontal" method="POST" action="submit-answer">
				<table class="table table-striped table-bordered text-left">
					<thead>
						<tr>
							<th>${question.content}</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="choice" items="${choices}">
							<tr>
								<td>${choice.content}</td>
							</tr>
						</c:forEach>
							<tr>
								<td>1</td>
							</tr>
							<tr>
								<td>2</td>
							</tr>
							<tr>
								<td>3</td>
							</tr>
							<tr>
								<td>4</td>
							</tr>
					</tbody>
				</table>
				<div class="form-group">
					<input type="submit" class="btn btn-primary" value="submit"/>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
