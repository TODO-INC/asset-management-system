<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        #name{
            margin-bottom: 10px;
        }
    </style>
    <title>Document</title>
</head>
<body>
    <form>
        <label for="name">Name:</label>
        <input type="text" name="name" id="name"><br />
        <label for="number">Age:</label>
        <input type="number" name="number" id="number">
        <button type="submit" id="add" >Submit</button>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <script>
    document.querySelector("#add").addEventListener('click', function (){
        var n = $('#name').val();
        var nu = $('#number').val();
        var form = {
            name: n,
            age: nu
        };
        $.ajax({
            url: "Valid", // Replace with your actual Java endpoint URL
            type: "POST",
            data: form,
            success: function(response) {
                // Handle the response from the backend as needed
                console.log("Success:", response);

                // Close the modal
                location.reload();

                // You can also update the card or refresh the page here
            },
            error: function(error) {
                console.error("Error:", error);
            }
        });
    });

    </script>
</body>
</html>