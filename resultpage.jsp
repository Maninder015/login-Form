<%@page import="java.sql.*" %>
<%
    String comp= request.getParameter("companies");
    String syear=request.getParameter("syear");
     String url = "jdbc:derby://localhost:1527/mydatabase";
        String username = "maninder";
        String password = "kooner";
//        out.println(comp+" "+syear);
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection connection=DriverManager.getConnection(url,username,password);
            Statement statement=connection.createStatement();
            ResultSet resultset=statement.executeQuery("Select * from untitled where comapny ='"+comp+"' and  batch ='"+syear+"'");
%>
<html>
<head>
<link rel="stylesheet" href="styles.css">
<title> Employees </title>
</head>
<body>
  <body>
    <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h3>Employees</h3>
            <p>Please select the Employee.</p>
          </div>
        </div>
<form action="user_profile.jsp">
<select name="result" id="result"> 
<%
            while(resultset.next())
            {%> 
            <option value="<%=resultset.getInt(("sid"))%>"><%=resultset.getInt(("sid"))+"----------------------> "+resultset.getString(("name"))%></option>
            <%}%>
</select>
            <button type="submit"  >Submit</button>
            </form>
            </div>
    </div>
<%
            connection.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>