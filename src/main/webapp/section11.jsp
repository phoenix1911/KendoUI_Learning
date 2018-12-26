<%--
  User: TJL Date: 2018/12/25  Time: 15:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>section11</title>
    <link href="styles/kendo.common.min.css" rel="stylesheet"/>
    <link href="styles/kendo.default.min.css" rel="stylesheet"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/kendo.web.min.js"></script>
</head>
<body>
    <script>
        var viewModel = kendo.observable({
            name: "John Doe"
        });

        var name = viewModel.get("name");
        viewModel.set("age", "18");
        var age = viewModel.get("age");
        alert(name); // shows "John Doe"
        alert(age);
    </script>

<hr>
    <span data-bind="text: fullName"></span>
    <script>
        var viewModel = kendo.observable({
            firstName: "John",
            lastName: "Doe",
            age:18,
            fullName: function() {
                return this.get("firstName") + " " + this.get("lastName")+this.get("age");
            }
        });

        kendo.bind($("span"), viewModel);
    </script>
</body>
</html>
