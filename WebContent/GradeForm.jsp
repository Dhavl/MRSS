<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grade Calculator</title>
<style type="text/css">

body {
	font-family: "Times New Roman", Times, serif;
	
	background-repeat: no-repeat;
	background-size: cover;
}

.container {
font-size: 1.1em;
font-weight: 600;
width: 80%;
position: absolute;
margin-top: 2em;
margin-left: 5em;

color: brown;
}

.pure-button {
margin-left: 2em;
box-shadow: 3px 3px 5px #888888;
width: 110px;
height: 35px;
background-color: light gray;
font-size: 0.7em;
color: #600000;
}

</style>
</head>
<body>
<div class = "container">
<form name="GradeCal" action="StudentForm.jsp" method="post">
<fieldset>



<legend><h1>Course: Advance Database Management</h1></legend>
<table cellpadding="1" cellspacing="1">

	<p style="font-family:Serif; font-size: 20px; color:blue " >Professor: Chun-I Philip Chen, Ph.D.<br>
	<small>Chuchen@fullerton.edu<br></small>
	<small>California State University, Fullerton<br></small>
	<small>Department of Computer Science<br></small>
	<small>Office: CS524,</small><br>
	<small>Office Hour: Tuesday: 5:45 p.m. - 6: 45 p.m. Thursday: 5:45 p.m. - 6: 45 p.m</p></small>
<hr>
	<p><h2>Course Description:	</h2><h5>This course covers the following topics; Database Design Theory and Normalization,
	File structure, <br>Indexing and Hashing, Query processing & Optimization, Transaction processing concepts and theory, 
	<br>Concurrency control & recovery, Database  backup and recovery, 	Database  performance tuning, Distributed 
	<br>Database, Data Warehousing,  Big Data, Data mining, Database  Security / Cyber Security and other advanced <br>database topics.

	</h5></p>
	<!--p>Syllabus</p-->
	<hr><p><h2>Grading Policy:</h2></p>
	<br><table border= "1px solid black">
	<tr><td><b>Score Range (Out of 100)</b></td><td><b>Final Grade</b></td></tr>
	<tr><td>100 - 90</td><td><b>A</b></td></tr>
	<tr><td>90 - 80</td><td><b>B</b></td></tr>
	<tr><td>80 - 70</td><td><b>C</b></td></tr>
	<tr><td>70 - 60</td><td><b>D</b></td></tr>
	<tr><td>Below 60</td><td><b>F</b></td></tr>
	</table>
	<p>To Enter Student Information (Records and Grades), click the button below.. </p>
	<input type="submit" value="Student Records" />
	

</table>
</fieldset>
<br><hr>
</div>

</form>

</body>
</html>