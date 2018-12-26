<%--
  User: TJL Date: 2018/12/25  Time: 15:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>section</title>
    <link href="styles/kendo.common.min.css" rel="stylesheet"/>
    <link href="styles/kendo.default.min.css" rel="stylesheet"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/kendo.web.min.js"></script>
</head>
<body>
<div id="myform">
    firstname:<input type="text" name="firstName" required /><br>
    lastname:<input type="text" name="lastName" required /><br>
    email:<input type="email" name="email" /><br>
    url:<input type="url" name="url" /><br>
    <button id="save" type="button">Save</button>
</div>
<script>
    // Initialize the Kendo UI Validator on your "form" container
    // (NOTE: Does NOT have to be a HTML form tag)
    var validator = $("#myform").kendoValidator().data("kendoValidator");

    // Validate the input when the Save button is clicked
    $("#save").on("click", function() {
        if (validator.validate()) {
            alert(validator.validate());
            // If the form is valid, the Validator will return true
            save();
        }
    });
</script>
</body>
</html>
