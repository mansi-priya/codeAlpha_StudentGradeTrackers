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

    for (int i = 0; i < numSubjects; i++) {
        marks[i] = Integer.parseInt(request.getParameter("marks" + (i + 1)));
        total += marks[i];
        if (marks[i] > highest) highest = marks[i];
        if (marks[i] < lowest) lowest = marks[i];
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
    <title>Final Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://media.istockphoto.com/id/1070923526/vector/abstract-background-blurred-dark-blue-and-purple-backdrop-smooth-banner-template-easy.jpg?s=612x612&w=0&k=20&c=MHeB4YFK3-OxRsmZYCAkll-BzYj53FPYSMismFmuNLU=');
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .report-card {
            background: #fff;
            padding: 40px;
            border-radius: 15px;
            width: 500px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            color: #333;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .summary {
            margin-top: 20px;
            font-size: 16px;
        }

        .grade {
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="report-card">
        <h2>Final Report Card</h2>
        <p><strong>Name:</strong> <%= name %></p>
        <p><strong>Roll Number:</strong> <%= roll %></p>

        <table>
            <tr><th>Subject</th><th>Marks (out of <%= outOf %>)</th></tr>
            <% for (int i = 0; i < numSubjects; i++) { %>
                <tr><td>Subject <%= i + 1 %></td><td><%= marks[i] %></td></tr>
            <% } %>
        </table>

        <div class="summary">
            <p><strong>Total Marks:</strong> <%= total %> / <%= numSubjects * outOf %></p>
            <p><strong>Average:</strong> <%= String.format("%.2f", average) %></p>
            <p><strong>Highest:</strong> <%= highest %></p>
            <p><strong>Lowest:</strong> <%= lowest %></p>
        </div>

        <p class="grade">Final Grade: <%= grade %></p>
    </div>
</body>
</html>
