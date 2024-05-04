
function addStudent() {
	console.log(1);
    var formData = $("#studentForm").serialize(); 
    formData += "&action=add";

    $.ajax({
        type: "POST",
        url: "slvSV",
        data: formData,
        success: function(response) {
            $("#studentInfo").html(response);
        }
    });
}

function editStudent() {
    var formData = $("#studentForm").serialize();
    formData += "&action=edit";


    $.ajax({
        type: "POST",
        url: "slvSV",
        data: formData,
        success: function(response) {
            $("#studentInfo").html(response);
        }
    });
}

// Function to delete a student
function deleteStudent() {
    var formData = $("#studentForm").serialize(); // Serialize form data
    formData += "&action=delete"; // Add action parameter

    // Send AJAX request to servlet
    $.ajax({
        type: "POST",
        url: "slvSV",
        data: formData,
        success: function(response) {
            $("#studentInfo").html(response); // Update student information section with response
        }
    });
}