##Student Grade Tracker is a web-based Java application designed to collect and evaluate student performance. Built using HTML, CSS, JSP, and Servlets, it allows students to enter their name, roll number, number of subjects, and marks. The system then calculates the total, average, highest and lowest scores, and assigns a final grade based on performance. A clean and responsive interface guides users through the form submission and report generation process. The final report card is displayed in a structured and visually appealing format. This project is ideal for academic assessment automation and helps simplify student evaluation workflows.
## Grade Tracker Web App Flow
Landing Page (index.html)
➤ Stylish welcome page with “Calculate Grade” button → redirects to studentForm.html.

Student Details Form (studentForm.html)
➤ Collects name and roll number → posts to enterMarks.jsp.

Subject & OutOf Form (enterMarks.jsp)
➤ Collects number of subjects and total marks → posts to enterEachMark.jsp.

Subject Marks Form (enterEachMark.jsp)
➤ Dynamically generates input fields for each subject mark using:
![Screenshots](https://github.com/mansi-priya/codeAlpha_StudentGradeTrackers/blob/main/screenshots/Screenshot%20(233).png)
![Screenshots](https://github.com/mansi-priya/codeAlpha_StudentGradeTrackers/blob/main/screenshots/Screenshot%20(234).png)
![Screenshots](https://github.com/mansi-priya/codeAlpha_StudentGradeTrackers/blob/main/screenshots/Screenshot%20(235).png)
![Screenshots](https://github.com/mansi-priya/codeAlpha_StudentGradeTrackers/blob/main/screenshots/Screenshot%20(236).png)
![Screenshots](https://github.com/mansi-priya/codeAlpha_StudentGradeTrackers/blob/main/screenshots/Screenshot%20(237).png)
![Screenshots](https://github.com/mansi-priya/codeAlpha_StudentGradeTrackers/blob/main/screenshots/Screenshot%20(238).png)
