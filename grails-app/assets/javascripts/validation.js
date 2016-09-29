//validation for courseName
function validateInput() {
    var x = document.forms["feedbackForm"]["courseName"].value;
    if (x == null || x == "") {
        alert("Course Name Must Be Added");
        return false;
    }
}

