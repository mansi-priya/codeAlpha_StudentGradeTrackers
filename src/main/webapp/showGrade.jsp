<%@ page language="java" %>
<%
    String name = request.getParameter("name");
    String roll = request.getParameter("roll");
    int numSubjects = Integer.parseInt(request.getParameter("numSubjects"));
    int outOf = Integer.parseInt(request.getParameter("outOf"));

    int total = 0;
    int highest = Integer.MIN_VALUE;
    int lowest = Integer.MAX_VALUE;

    int[] marks = new int[numSubjects];

    for (int i = 1; i <= numSubjects; i++) {
        marks[i - 1] = Integer.parseInt(request.getParameter("marks" + i));
        total += marks[i - 1];
        if (marks[i - 1] > highest) highest = marks[i - 1];
        if (marks[i - 1] < lowest) lowest = marks[i - 1];
    }

    double average = total / (double) numSubjects;
    String grade;

    if (average >= 90) grade = "A";
    else if (average >= 75) grade = "B";
    else if (average >= 60) grade = "C";
    else if (average >= 45) grade = "D";
    else grade = "F";
%>

<!DOCTYPE html>
<html>
<head>
    <title>Grade Summary</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image : url('https://media.istockphoto.com/id/1070923526/vector/abstract-background-blurred-dark-blue-and-purple-backdrop-smooth-banner-template-easy.jpg?s=612x612&w=0&k=20&c=MHeB4YFK3-OxRsmZYCAkll-BzYj53FPYSMismFmuNLU=');
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .summary-box {
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
            text-align: center;
            width: 400px;
        }

        h2 {
            color: #333;
        }

        p {
            font-size: 16px;
            margin: 8px 0;
        }

        .btn {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="summary-box">
    <h2>Grade Summary</h2>
    <p>Average: <%= String.format("%.2f", average) %></p>
    <p>Final Grade: <strong><%= grade %></strong></p>

    <form action="report.jsp" method="post">
        <input type="hidden" name="name" value="<%= name %>">
        <input type="hidden" name="roll" value="<%= roll %>">
        <input type="hidden" name="numSubjects" value="<%= numSubjects %>">
        <input type="hidden" name="outOf" value="<%= outOf %>">

        <% for (int i = 0; i < numSubjects; i++) { %>
            <input type="hidden" name="marks<%= i + 1 %>" value="<%= marks[i] %>">
        <% } %>

        <input type="hidden" name="average" value="<%= average %>">
        <input type="hidden" name="grade" value="<%= grade %>">
        <input type="hidden" name="total" value="<%= total %>">
        <input type="hidden" name="highest" value="<%= highest %>">
        <input type="hidden" name="lowest" value="<%= lowest %>">

        <button type="submit" class="btn">Generate full Report</button>
    </form>
</div>
</body>
</html>
