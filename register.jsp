<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<!-- ✅ NAVBAR -->
<div class="navbar">
    <h2>Self Diagnosis Trap</h2>
</div>

<!-- ✅ FORM -->
<div class="form-container">
  <form action="register" method="post" class="form-box">

    <h2>Create Account</h2>

    <input type="text" name="name" placeholder="Full Name" required>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password" required>

    <button type="submit" class="btn">Register</button>

    <p>Already have an account? <a href="login.jsp">Login</a></p>

  </form>
</div>

</body>
</html>