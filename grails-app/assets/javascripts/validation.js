//validation for courseName
function validateInput() {
    var x = document.forms["feedbackForm"]["courseName"].value;
    if (x == null || x == "") {
        alert("Course Name Must Be Added");
        return false;
    }
}


//validation for instituteName
function validateInput() {
    var x = document.forms["feedbackForm"]["instituteName"].value;
    if (x == null || x == "") {
        alert("Institute Name Must Be Added");
        return false;
    }
}

//validation for trainerName
function validateInput() {
    var x = document.forms["feedbackForm"]["trainerName"].value;
    if (x == null || x == "") {
        alert("Trainer Name Must Be Added");
        return false;
    }
}

//validation for courseDuration
function validateInput() {
    var x = document.forms["feedbackForm"]["courseDuration"].value;
    if (x == null || x == "") {
        alert("Course Duration Must Be Added");
        return false;
    }
}

//validation for totalFees
function validateInput() {
    var x = document.forms["feedbackForm"]["totalFees"].value;
    if (x == null || x == "") {
        alert("Total Fees Must Be Added");
        return false;
    }
}

//validation for feedback
function validateInput() {
    var x = document.forms["feedbackForm"]["feedback"].value;
    if (x == null || x == "") {
        alert("Feedback Must Be Added");
        return false;
    }
}
