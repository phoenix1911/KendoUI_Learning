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
<div id="view">
    <input data-bind="value: name" />
    <button data-bind="click: displayGreeting">Display Greeting</button>
</div>

<script>
    var viewModel = kendo.observable({
        name: "John Doe",
        displayGreeting: function () {
            var name = this.get("name");
            alert("Hello, " + name + "!!!");
        }
    });

    kendo.bind($("#view"), viewModel);
</script>

<hr>
name:<div data-bind="text: person.name"></div>
toLowerCase():<div data-bind="text: person.lowerCaseName"></div>

<script>
    var viewModel = kendo.observable({
        person: {
            name: "John Doe",
            lowerCaseName: function() {
                return this.get("name").toLowerCase();
            }
        }
    });
    kendo.bind($("div"), viewModel);
</script>


</body>

</html>
