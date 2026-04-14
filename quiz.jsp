<!DOCTYPE html>
<html>
<head>
<title>Quiz</title>

<!-- ✅ GLOBAL CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">

</head>

<body>

<!-- ✅ NAVBAR -->
<div class="navbar">
    <h2>Self Diagnosis Trap</h2>
    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="quiz.jsp">Assessment</a>
        <a href="appointment.jsp">Appointment</a>
    </div>
</div>

<!-- ✅ CARD CONTAINER -->
<div class="card">

<h2>Mental Health Quiz</h2>

<form action="result" method="post">

<div class="question">
<p>Do you feel anxious?</p>
<select name="q1">
<option value="0">Never</option>
<option value="2">Sometimes</option>
<option value="4">Often</option>
</select>
</div>

<div class="question">
<p>Do you feel stressed?</p>
<select name="q2">
<option value="0">Never</option>
<option value="2">Sometimes</option>
<option value="4">Often</option>
</select>
</div>

<div class="question">
<p>Do you feel overwhelmed?</p>
<select name="q3">
<option value="0">Never</option>
<option value="2">Sometimes</option>
<option value="4">Often</option>
</select>
</div>

<div class="question">
<p>How often do you feel stressed?</p>
<select name="q4">
<option value="0">Never</option>
<option value="1">Sometimes</option>
<option value="2">Often</option>
<option value="3">Always</option>
</select>
</div>

<div class="question">
<p>Do you feel anxious frequently?</p>
<select name="q5">
<option value="0">No</option>
<option value="1">Rarely</option>
<option value="2">Yes</option>
<option value="3">Always</option>
</select>
</div>

<div class="question">
<p>Trouble sleeping?</p>
<select name="q6">
<option value="0">No</option>
<option value="1">Sometimes</option>
<option value="2">Yes</option>
<option value="3">Daily</option>
</select>
</div>

<div style="text-align:center;">
    <button type="submit" class="btn">Submit</button>
</div>

</form>

</div>

</body>
</html>