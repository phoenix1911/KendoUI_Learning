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
<div id="example"></div>
<script>
    var template = kendo.template("<div id='box'>#= firstName #</div>");
    var data = { firstName: "Todd" }; //A value in JavaScript/JSON
    var result = template(data); //Pass the data to the compiled template
    $("#example").html(result); //display the result
</script>

<hr>

<div id="example2"></div>
<script>
    var template = kendo.template("<div id='box'>#: firstName #</div>");
    var data = { firstName: "<b>Todd</b>" }; //Data with HTML tags
    var result = template(data); //Pass the data to the compiled template
    $("#example2").html(result); //display the resulting encoded HTML Output (<b>Todd</b>)
</script>

<hr>
<div id="example3"></div>

<script id="javascriptTemplate" type="text/x-kendo-template">
    <ul>
        # for (var i = 0; i < data.length; i++) { #
        <li>#= data[i] #</li>
        # } #
    </ul>
</script>

<script type="text/javascript">
    //Get the external template definition using a jQuery selector
    var template = kendo.template($("#javascriptTemplate").html());

    //Create some dummy data
    var data = ["Todd", "Steve", "Burke"];

    var result = template(data); //Execute the template
    $("#example3").html(result); //Append the result
</script>
</body>
</html>
