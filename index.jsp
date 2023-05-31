<%-- 
    Document   : mainpage
    Created on : 1 Mar, 2023, 8:30:49 PM
    Author     : ak542
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%--<%@page  import="java.text.SimpleDateFormat,java.util.Date"%>--%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles.css">
<title> Our Java App </title>
</head>
<body>
  <body>
    <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h3>LOGIN</h3>
            <p>Please enter your credentials to login.</p>
          </div>
        </div>
        <form class="login-form" action="indexpage.jsp">
            <input type="text" name="uname" value="Name...." onclick="this.value=''" required/><br/>  
            <input type="password" name="upass"  value="Password...." onclick="this.value=''" required/><br/> 
          <button type="submit">login</button>
        </form>
      </div>
    </div>
</body>
</body>
</html>
