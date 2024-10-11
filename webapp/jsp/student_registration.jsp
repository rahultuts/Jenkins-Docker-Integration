<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cloud Gen Softech System - Student Registration</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <h1>Cloud Gen Softech System - Student Registration Form</h1>

    <h2>Welcome to Cloud Gen Softech System!</h2>
    <p>Please fill in the form below to register for our courses. Today's date: <span id="currentDate"></span></p>

    <form action="register" method="post">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required><br>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>

        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required><br>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required><br>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender">
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select><br>

        <label for="education">Education Qualification:</label>
        <input type="text" id="education" name="education" required><br>

        <label for="course">Select Course:</label>
        <select id="course" name="course">
            <optgroup label="Cloud Computing">
                <option value="AWS">AWS</option>
                <option value="Azure">Azure</option>
                <option value="GCP">Google Cloud Platform</option>
            </optgroup>
            <optgroup label="DevOps">
                <option value="CI/CD">CI/CD</option>
                <option value="Docker">Docker</option>
                <option value="Kubernetes">Kubernetes</option>
                <option value="Jenkins">Jenkins</option>
            </optgroup>
            <optgroup label="Software Development">
                <option value="Web Development">Web Development</option>
                <option value="Mobile Development">Mobile Development</option>
            </optgroup>
            <optgroup label="Short-Term Courses">
                <option value="Crash Course on DevOps">Crash Course on DevOps</option>
            </optgroup>
            <optgroup label="Long-Term Courses">
                <option value="Full Stack Development">Full Stack Development</option>
                <option value="Data Science">Data Science</option>
            </optgroup>
        </select><br>

        <label for="trainingMode">Training Mode:</label>
        <input type="radio" id="online" name="trainingMode" value="Online" required>Online
        <input type="radio" id="offline" name="trainingMode" value="Offline" required>Offline<br>

        <label for="address">Address:</label>
        <textarea id="address" name="address"></textarea><br>

        <label for="remarks">Additional Remarks:</label>
        <textarea id="remarks" name="remarks"></textarea><br>

        <button type="submit">Submit Registration</button>
    </form>

    <script>
        // Set current system date in the form
        document.getElementById('currentDate').innerText = new Date().toLocaleDateString();
    </script>
</body>
</html>
