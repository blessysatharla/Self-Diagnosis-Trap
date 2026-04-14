<!DOCTYPE html>
<html>
<head>
<title>Appointment</title>
<link rel="stylesheet" href="css/style.css">

<style>
/* Card layout */
.card {
    max-width: 500px;
    margin: 40px auto;
    padding: 25px;
    background: white;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.1);
}

/* Inputs */
input, select {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    border-radius: 8px;
    border: 1px solid #ccc;
}

/* Button */
.btn {
    margin-top: 20px;
    padding: 12px;
    width: 100%;
    border: none;
    border-radius: 25px;
    background: #ff6b6b;
    color : white;
    font-size: 16px;
    cursor: pointer;
}

.btn:hover {
    background: #ff6b6b;
}

/* Success message */
.success-msg {
    margin-top: 20px;
    padding: 15px;
    background: #d4edda;
    color: #ff6b6b;
    border-radius: 10px;
    text-align: center;
}
</style>

</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <h2>Self Diagnosis Trap</h2>
    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="quiz.jsp">Assessment</a>
        <a href="appointment.jsp">Appointment</a>
    </div>
</div>

<!-- FORM CARD -->
<div class="card">

<h2>Book Appointment</h2>

<form action="appointment" method="post">

<input type="text" name="name" placeholder="Full Name" required>

<input type="email" name="email" placeholder="Email" required>
<select name="doctor">
<option>Dr. Asha Sharma (Psychologist)</option>
<option>Dr. Rahul Mehta (Psychiatrist)</option>
<option>Dr. Neha Verma (Clinical Psychologist)</option>
<option>Dr. Arjun Kapoor (Counseling Psychologist)</option>
<option>Dr. Sneha Iyer (Mental Health Therapist)</option>
<option>Dr. Karan Malhotra (Psychiatrist)</option>
<option>Dr. Pooja Reddy (Behavioral Therapist)</option>
<option>Dr. Vikram Singh (Neuropsychiatrist)</option>
<option>Dr. Ananya Das (Child Psychologist)</option>
<option>Dr. Rohan Gupta (Addiction Specialist)</option>
</select>

<input type="date" name="date" required>

<select name="time">
<option>10:00 AM</option>
<option>11:00 AM</option>
<option>2:00 PM</option>
<option>3:00 PM</option>
<option>4:00 PM</option>
</select>

<!-- ✅ ONLY ONE BUTTON -->
<button type="submit" name="book" class="btn">Book Appointment</button>

</form>

<!-- ✅ SUCCESS MESSAGE -->
<%
if(request.getParameter("success") != null){
%>
    <div class="success-msg">
        Appointment Booked Successfully
    </div>
<%
}
%>

</div>

</body>
</html>