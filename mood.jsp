<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Mood Booster</title>

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
<meta charset="UTF-8">

</head>

<body>

<div class="navbar">
    <h2>Self Diagnosis Trap</h2>
    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="quiz.jsp">Assessment</a>
        <a href="appointment.jsp">Appointment</a>
    </div>
</div>

<div class="card" style="text-align:center;">

<h2>✨ Mood Booster</h2>

<p>🌿 Take a deep breath</p>
<p>🎧 Listen to calming music</p>
<p>📖 Read something positive</p>
<p>🏃 Go for a short walk</p>

<br>

<button class="btn" onclick="showQuote()">Motivate Me 💪</button>

<br><br>

<p id="quote" style="font-size:18px; color:#555;"></p>

</div>

<script>
function showQuote() {
  const quotes = [
    "You are stronger than you think 💙",
    "This moment will pass 🌈",
    "Keep going, you're doing great 💯",
    "Small steps matter 🚶"
  ];

  document.getElementById("quote").innerText =
    quotes[Math.floor(Math.random() * quotes.length)];
}
</script>

</body>
</html>