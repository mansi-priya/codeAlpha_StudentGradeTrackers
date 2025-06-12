<%@ page language="java" %>
<%  String name = request.getParameter("name");
String roll = request.getParameter("roll");
    int numSubjects = Integer.parseInt(request.getParameter("numSubjects"));
    int outOf = Integer.parseInt(request.getParameter("outOf"));
%>

<!DOCTYPE html>
<html>
<head>
    <title>Enter Marks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image:url('https://pics.craiyon.com/2023-11-04/dd53203bfa5c49c28ada80c26fcc30ad.webp');
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }

        input[type="number"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        
        
                   
               
        <h2>Enter Marks for Each Subject</h2>
        <form method="post" action="showGrade.jsp">
         <input type="hidden" name="name" value="<%= name %>">
            <input type="hidden" name="roll" value="<%= roll %>">
            
            <input type="hidden" name="numSubjects" value="<%= numSubjects %>">
            <input type="hidden" name="outOf" value="<%= outOf %>">

            <% for (int i = 1; i <= numSubjects; i++) { %>
                Subject <%= i %> Marks:
                <input type="number" name="marks<%= i %>" required><br>
            <% } %>

            <input type="submit" value="Find Grade">
        </form>
    </div>
</body>
</html>