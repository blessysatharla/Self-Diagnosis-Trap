<%
String doctor = (String) request.getAttribute("doctor");
String date = (String) request.getAttribute("date");
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="section">

<h2>Select Slot</h2>
<p>Doctor: <%= doctor %></p>
<p>Date: <%= date %></p>

<form action="book" method="post">

<input type="hidden" name="doctor" value="<%= doctor %>">
<input type="hidden" name="date" value="<%= date %>">

<button name="time" value="10:00 AM">10:00 AM</button>
<button name="time" value="11:00 AM">11:00 AM</button>
<button name="time" value="2:00 PM">2:00 PM</button>

</form>

<a href="appointment.jsp">⬅ Back</a>

</div>

</body>
</html>