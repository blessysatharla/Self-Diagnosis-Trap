<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<!-- ✅ NAVBAR -->
<div class="navbar">
    <h2>Self Diagnosis Trap</h2>
</div>

<!-- ✅ FORM -->
<div class="form-container">
  <form action="login" method="post" class="form-box">

    <h2>Login</h2>

    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password" required>

    <button type="submit" class="btn">Login</button>

    <p>Don't have an account? <a href="register.jsp">Register</a></p>

  </form>
</div>

</body>
</html>