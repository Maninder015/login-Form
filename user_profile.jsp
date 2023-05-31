<%@page import="java.sql.*" %>
<% 
String result=request.getParameter("result");

//out.println(result);
      String url = "jdbc:derby://localhost:1527/mydatabase";
        String username = "maninder";
        String password = "kooner";
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection(url,username,password);
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from untitled where sid="+result);
            while(rs.next())
            {%>
            <head>
<link rel="stylesheet" href="styles.css">
<title> Our Java App </title>
</head>
<body>
            <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h3>Student Data</h3>
          </div>
        </div><%
                out.println("Id = "+rs.getString("sid")) ;%><br>
                <%out.println("Name = "+rs.getString("name"));%><br>
                <%out.println("Company Name = "+rs.getString("comapny"));%><br>
                <%out.println("Year = "+rs.getString("batch"));%><br>
                <%out.println("Age = "+rs.getString("age"));%><br>
                <%
             }
            con.close();
        }
        catch(Exception e) {
        System.out.println(e);
        }

%>
</div>
    </div>
</body>