document.addEventListener("DOMContentLoaded", function () {
    // Get references to the form, email, password, and the result message div
    const loginForm = document.getElementById("login-form");
    const emailInput = document.getElementById("email");
    const passwordInput = document.getElementById("password");
    const resultMsgs = document.getElementById("result-msgs");

    // Listen for form submit
    loginForm.addEventListener("submit", function (e) {
        e.preventDefault();  // Prevent form submission and page reload
        
        // Get the form data
        const email = emailInput.value.trim();
        const password = passwordInput.value.trim();

        // Validate the email and password fields (simple checks)
        if (!email || !password) {
            resultMsgs.innerHTML = "<span class='resMsg'>Please fill in both fields.</span>";
            return;
        }

        // Create a new FormData object
        const formData = new FormData();
        formData.append('email', email);
        formData.append('password', password);

        // Create an AJAX request (using Fetch API)
        fetch('login.php', {
            method: 'POST',
            body: formData,
        })
        .then(response => response.text())  // Get the response as text
        .then(data => {
            if (data === "redirect") {
                // If successful, redirect to dashboard or home
                window.location.href = "dashboard.html";  // Modify to your dashboard page
            } else {
                // If failed, display the error message
                resultMsgs.innerHTML = data;
            }
        })
        .catch(error => {
            // Handle any errors that occur during the fetch request
            console.error('Error during login:', error);
            resultMsgs.innerHTML = "<span class='resMsg'>An error occurred, please try again.</span>";
        });
    });
});