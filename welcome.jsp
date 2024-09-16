<html>
<head>
    <link rel="stylesheet" href="welcome.css" />
</head>
<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();">
    <script language="javascript">
        function noBack() {
            window.history.forward();
        }
    </script>
    <div>
        <span>
            <%
             response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" ); // HTTP 1.1.
             response.setHeader("Pragma", "no-cache" ); // HTTP 1.0. response.setHeader("Expires", "0" );
             out.print("Login Successful, Welcome to Home Page"); %>
            <br /><br /><a href="logout.jsp">Logout</a>
        </span>
    </div>
</body>
</html>