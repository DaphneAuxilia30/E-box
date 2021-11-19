<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Event Weekend</title>
<style type="text/css">
#grad1 {
	height: 50%;
        background: lightsteelblue;
	background: linear-gradient(lightsteelblue, lightskyblue);
}

body {
        background: #f7f9fc;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
}

.header {
	background-color: lightsteelblue;
	width: 100%;
}

.footer {
	position: absolute;
	right: 0;
	bottom: 0;
	left: 0;
	height: 5%;
	text-align: center;
}

#content {
	position: absolute;
	top: 220px;
	left: 150px;
	text-align: center;
}

p {
	margin-left: 20px;
	font-family: 'Courier New', Courier, 'Lucida Sans Typewriter',
		'Lucida Typewriter', monospace;
	font-size: 16px;
	font-style: normal;
	font-variant: normal;
	font-weight: bold;
	line-height: 26.4px;
}

.boxed {
	width: 500px;
	padding: 10px;
	border: 2px solid black;
	margin: 10px;
	text-align: center;
	background-color: lightblue;
}

.p1 {
	color: white;
}
#data{
   
     padding-left:20px;
}
</style>
</head>

<body>
	<div class="header">
		<table>
			<tr>
				<td><img
					src="${pageContext.request.contextPath}/resources/images/abcevents.png"
					height="120" width="150" style="float: left";></td>
				<td><span style="vertical-align: middle">
						<h1
							style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">
							Enriching Entertainment
							</h3>
				</span></td>
			</tr>
		</table>
		
	</div>
	
	<div id="data">
		<h2>Hall Details</h2>
		<table border="2" id="tableDetails">
			<tr>
				<th align="center">Hall id</th>
				<th align="center">Hall Name</th>
				<th align="center">Hall Owner Name</th>
				<th align="center">Owner Contact</th>
				<th align="center">Owner email</th>
				<th align="center">Cost per Day</th>
			</tr>
	<c:forEach items="${tableDetails }" var="tuple">
	<tr>
	
<td align ="center" >${tuple.id }</td>
<td align ="center" >${tuple.hallName }</td>
<td align ="center" >${tuple.hallOwnerName }</td>
<td align ="center" >${tuple.ownerMobile }</td>
<td align ="center" >${tuple.ownerEmailId }</td>
<td align ="center" >${tuple.hallFare }</td>

	</tr>
	</c:forEach>
		</table>
		<form id="form1" action="deleteHallProcess" method="POST">
                    <table id="formTable" style="padding-top:20px;">
                        <tr>
                            <td>Name</td>
                            <td><input type="text" name="name"/></td>
                            
                        </tr>
                        <tr>
                            <td colspan="2"><button>View Changes</button> </td>
                        </tr>
                    </table>
		
		</form>
	</div>
</body>
</html>
