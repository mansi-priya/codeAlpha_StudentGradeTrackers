<!DOCTYPE html>
<html>
<head>
    <title>Subject and Marks Entry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image:url('https://pics.craiyon.com/2023-11-04/dd53203bfa5c49c28ada80c26fcc30ad.webp');
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
        }

        input[type="number"], input[type="submit"] {
            padding: 10px;
            margin: 10px 0;
            width: 100%;
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
        <h2>Enter Subject & Mark Info</h2>
        <form method="post" action="enterEachMark.jsp">
            
        <input type="hidden" name="name" value="<%= request.getParameter("name") %>">
        <input type="hidden" name="roll" value="<%= request.getParameter("roll") %>">
        
    
            
            Total Subjects: <input type="number" name="numSubjects" required><br>
            Marks Out Of: <input type="number" name="outOf" required><br>
            <input type="submit" value="Next">
        </form>
    </div>
</body>
</html>
