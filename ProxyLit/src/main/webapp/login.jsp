<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <form action="LoginServlet" method="post">
        <label>Username:</label>
        <input type="text" name="username"><br>
        <label>Password:</label>
        <input type="password" name="password"><br>
        <input type="submit" value="Login">
    </form>

    <%
        String error = request.getParameter("error");
        if (error != null && error.equals("invalid")) {
            out.println("<p style='color: red;'>Invalid username or password.</p>");
        }
    %>
</body>
</html>
