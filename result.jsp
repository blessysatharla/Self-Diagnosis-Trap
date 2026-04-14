<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Result</title>

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

<!-- ✅ RESULT CARD -->
<div class="card" style="text-align:center;">

<%
int total = 0;

try {
    String p1 = request.getParameter("q1");
    String p2 = request.getParameter("q2");
    String p3 = request.getParameter("q3");
    String p4 = request.getParameter("q4");
    String p5 = request.getParameter("q5");
    String p6 = request.getParameter("q6");

    int q1 = (p1 != null) ? Integer.parseInt(p1) : 0;
    int q2 = (p2 != null) ? Integer.parseInt(p2) : 0;
    int q3 = (p3 != null) ? Integer.parseInt(p3) : 0;
    int q4 = (p4 != null) ? Integer.parseInt(p4) : 0;
    int q5 = (p5 != null) ? Integer.parseInt(p5) : 0;
    int q6 = (p6 != null) ? Integer.parseInt(p6) : 0;

    total = q1 + q2 + q3 + q4 + q5 + q6;

} catch(Exception e) {
%>
    <h3>Error in processing your responses</h3>
<%
}
%>

<h2>Your Score: <%= total %></h2>

<%
String message = "";
String color = "";

if(total <= 5){
    message = "Low Stress";
    color = "green";
} 
else if(total <= 10){
    message = "Moderate Stress";
    color = "orange";
} 
else {
    message = "High Stress";
    color = "red";
}
%>

<!-- ✅ SAFE OUTPUT (NO STYLE ERROR) -->
<h3 style="color: <%= color %>;">
    <%= message %>
</h3>

<p>Your mental health matters. Take care of yourself</p>

<br>

<!-- ✅ BUTTONS -->
<a href="quiz.jsp">
    <button class="btn">Retake Quiz</button>
</a>

<a href="appointment.jsp">
    <button class="btn">Book Appointment</button>
</a>
<br>

<a href="mood.jsp">
    <button class="btn">Improve Your Mood</button>
</a>
</div>

</body>
</html>