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
    <script src="lib/js/jquery-1.11.1.min.js"></script>
    <!--[if lt IE 9]>
		<script src="lib/js/html5shiv.min.js"></script>
		<script src="lib/js/respond.min.js"></script>
	<![endif]--> 
	
	<script>
	$(document).ready(function(){
	    $("#next").click(function(){
	    	changeQuestion();
	    	
		});
	    
	    $("#siteId").change(function() {
	    	changeQuestion();
	    });
	    
 	});
	
	function changeQuestion() {
        var jForm = $('<form></form>');
        jForm.attr('action', '/next');
        jForm.attr('method', 'post');
        
        var jInput1 = $("<input type='hidden'></input>");
        jInput1.attr('name', 'userId');
        jInput1.attr('value', $('#userId').val());
        jForm.append(jInput1);
        var jInput2 = $("<input type='hidden'></input>");
        jInput2.attr('name', 'siteId');
        jInput2.attr('value', $('#siteId').val());
        jForm.append(jInput2);
        $(document.body).append(jForm);
        
        jForm.submit();		
	}

	</script>
	
	   
</head>
<body>
	<div class="container text-center" id="tasksDiv">
		<h2>INSTICATOR</h2>
		<h3>Question</h3>
		<hr>
		<div class="table-responsive">
			<form id="mainForm" class="form-horizontal" method="POST" action="submit-answer">
				<table class="table table-striped table-bordered text-left">
					<thead>
						<tr>
							<th>${question.content}</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="choice" items="${choices}" varStatus="cnt" >
							<tr>
								<c:choose>
									<c:when test = "${mode == 'SHOW_ANSWER' && choice.correct}">
										<td style="background-color: #ffca82;">
									</c:when> 
									<c:otherwise>
										<td>
									</c:otherwise> 
								</c:choose> 
								<c:if test = "${mode != 'SHOW_ANSWER'}">
									<input type="radio" required  id="answer" name="answer" value="${cnt.count}"> 
								</c:if>
								<c:if test = "${choice.correct}">
									<input type="hidden"  id="rightAnswer" name="rightAnswer" value="${cnt.count}"> 
								</c:if>
								${choice.content} </td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<c:forEach var="img" items="${imgs}" >
					<div class="card container text-center" style="width: 20rem;">
						<img src="${img.filePath}" class="card-img-top" alt="${img.fileDesc}">
						<div class="card-body">
						  <p class="card-text">${img.fileDesc}</p>
						</div>
					</div>
				</c:forEach>
				<br>
				<input type="hidden" id="questionId" name="questionId" value="${question.id}"/>
				<div class="form-group">
				<c:if test = "${mode != 'SHOW_ANSWER'}">
					<input type="submit" class="btn btn-primary" value="submit"/>  
				</c:if> 
				<c:if test = "${mode == 'SHOW_ANSWER'}">
					<input id="next" name="next"  type="button" class="btn btn-info" value="next"/> 
				</c:if> 
				</div>
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text">User ID</span>
				  </div>
				<c:if test="${empty lastUserId}">
  					<input id="userId" name="userId" value="testUser" required type="text" class="form-control" placeholder="User ID" aria-label="User ID" aria-describedby="basic-addon1">
  				</c:if> 
				<c:if test="${not empty lastUserId}">
  					<input id="userId" name="userId" value="${lastUserId}" required type="text" class="form-control" placeholder="User ID" aria-label="User ID" aria-describedby="basic-addon1">
  				</c:if> 
				</div>
				
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <label class="input-group-text" for="inputGroupSelect01">Website</label>
				  </div>
				  <select class="custom-select" id="siteId" name="siteId" >
				    <option value="1" selected } >baseball magazine</option>
				    <option value="2" ${lastSiteId == '2' ? 'selected' : ''} >daily football</option>
				    <option value="3" ${lastSiteId == '3' ? 'selected' : ''} >weekly basketball</option>
				  </select>
				</div>
			</form>

		</div>
	</div>
</body>

</html>
