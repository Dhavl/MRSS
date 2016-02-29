<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Grade Calculator </title>
<style type="text/css">

body {
	font-family: "Times New Roman", Times, serif;
	
	background-repeat: no-repeat;
	background-size: cover;
}

.container {
font-size: 1.2em;
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
height: 40px;
background-color: light gray;
font-size: 0.7em;
color: #600000;
}

 
</style>
<SCRIPT LANGUAGE="JavaScript">

function calc1(form) {
numatt = (form.numatt.value/100) * 5;
form.att.value = numatt;
 
numhw1 = (form.numhw1.value/100) * 5;
form.hw1.value = numhw1;

numhw2 = (form.numhw2.value/100) * 5;
form.hw2.value = numhw2;

nummid1 = (form.nummid1.value/100) * 5;
form.mid1.value = nummid1;

nummid2 = (form.nummid2.value/100) * 5;
form.mid2.value = nummid2; 

numpap = (form.numpap.value/100) * 10;
form.pap.value = numpap; 

numpro = (form.numpro.value/100) * 50;
form.proj.value = numpro; 

numex = (form.numex.value/100) * 15;
form.ex.value = numex; 

fscore = (numatt+numhw1+numhw2+nummid1+nummid2+numpap+numpro+numex);
form.fscore.value = fscore;

if (fscore >= 90) {
form.fgrade.value = "A";
//alert("Total Points of "+fscore+" gives you an A");

}
else if (fscore <= 90 && fscore >= 80) {
form.fgrade.value = "B";
//alert("Total Points of "+fscore+" gives you a B");

}
else if (fscore <= 80 && fscore >= 70) {
form.fgrade.value = "C";
//alert("Total Points of "+fscore+" gives you a C");

}
else if (fscore <= 70 && fscore >= 60) {
form.fgrade.value = "D";
//alert("Total Points of "+fscore+" gives you a D");

}
else if (fscore <= 60) {
form.fgrade.value = "F";
//alert("Total Points of "+fscore+" gives you a F");

}
}
</script>
</head>
<body>

<div class = "container">

<form name="GradeCal" action="RegServlet" method="post">
<input type="hidden" name="pagename" value="StudentForm"/>
Return <a href="GradeForm.jsp">Home</a>
<fieldset>
<legend>Score Sheet</legend>

<h2>Grading Criterion (Description):</h2>
<table>
<tr><td>Attendance => 5%</td></tr>
<tr><td>Homework1 => 5% </td></tr>
<tr><td>Homework2 => 5%</td></tr>
<tr><td>Midterm1 => 5% </td></td>
<tr><td>Midterm2 => 5%</td></tr>
<tr><td>Research Paper => 10% </td></tr>
<tr><td>Project => 50%</td></tr>
<tr><td>Final Exam => 15% </td></tr>
</table>
<hr>
<table cellpadding="1" cellspacing="1">
<p>Insert the student's information below<p>
<tr>
	<td>First Name</td>
	<td><input type="text" name="txtfName"  placeholder="Enter First Name"/></td>
	</tr><tr><td>Last Name</td>
	<td><input type="text" name="txtlName"  placeholder="Enter Last Name"/></td>
</tr>
<tr>
	<td>Student Id</td>
	<td><input type="text" name="sId" placeholder="Enter Student Id"/></td>
</tr>
</table>
<p>Insert the student's scores below (All Scores are out of 100).</p>
<table border="1px solid black">
<tr><td></td><td align="center">Score (Out of 100)</td><td align="center">Score (Mapped)</td></tr>
<tr>
<td>Attendance</td>
<td><input type="text" name="numatt" placeholder="Attendance out of 100" maxlength=4 />
</td>
<td align=center> <input type="text" name="att" placeholder="Out of 5" size=10 maxlength=4></td>

</tr>
<tr>
	<td>Homework</td>
	<tr><td></td><td><input type="text" name="numhw1" placeholder="Homework1 out of 100" maxlength=4/></td>
	<td align=center> <input type="text" name="hw1" placeholder="Out of 5" size=10 maxlength=4></td></tr>
	<tr><td></td><td><input type="text" name="numhw2" placeholder="Homework2 out of 100"/></td>
	<td align=center> <input type="text" name="hw2" placeholder="Out of 5" size=10 maxlength=4></td></tr>
</tr>
<tr>
	<td>Midterm</td>
	<tr><td></td><td><input type="text" name="nummid1" placeholder="Midterm1 out of 100" maxlength=4 /></td>
	<td align=center> <input type="text" name="mid1" placeholder="Out of 5" size=10 maxlength=4></td></tr>
	<tr><td></td><td><input type="text" name="nummid2" placeholder="Midterm2 out of 100"/></td>
	<td align=center> <input type="text" name="mid2" placeholder="Out of 5" size=10 maxlength=4></td></tr>
</tr>
<tr>
	<td>Research Paper</td>
	<td><input type="text" name="numpap" placeholder="Score out of 100" maxlength=4 /></td>
	<td align=center> <input type="text" name="pap" placeholder="Out of 10" size=10 maxlength=4></td>
</tr>
<tr>
	<td>Project</td>
	<td><input type="text" name="numpro" placeholder="Score out of 100" maxlength=4 /></td>
	<td align=center> <input type="text" name="proj" placeholder="Out of 50" size=10 maxlength=4></td>
</tr>
<tr>
	<td>Final Exam</td>
	<td><input type="text" name="numex" placeholder="Score out of 100" maxlength=4 /></td>
	<td align=center> <input type="text" name="ex" placeholder="Out of 15" size=10 maxlength=4></td>
</tr>

<tr>
	<td align=center><input type="submit" value="Calculate" onClick="calc1(this.form)"></td>
	<td align=center>Final Score: <input type="text" name="fscore" placeholder="Out of 100" size=10 maxlength=4 ></td>
	<td align=center>Final Grade: <input type="text" name="fgrade" placeholder="Final Grade" size=10 maxlength=4 >
</tr>
</table>
</fieldset>


</form>

<br><hr>
</div>


</body>
</html>