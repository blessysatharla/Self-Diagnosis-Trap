<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>

<!-- ✅ GLOBAL CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">

</head>

<body>

<%
if(session.getAttribute("user") == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!-- ✅ NAVBAR -->
<div class="navbar">
    <h2>Self Diagnosis Trap</h2>
    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="quiz.jsp">Assessment</a>
        <a href="appointment.jsp">Appointment</a>
    </div>
</div>

<!-- ✅ HERO SECTION -->
<div class="hero">
    <h1>Your Mental Health Matters</h1>
    <p>Take a mental health assessment and connect with professionals.</p>

    <!-- ✅ BUTTONS (FIXED) -->
    <a href="quiz.jsp">
        <button class="btn">Start Assessment</button>
    </a>

    <a href="appointment.jsp">
        <button class="btn">Book Appointment</button>
    </a>
</div>

</body>
</html>