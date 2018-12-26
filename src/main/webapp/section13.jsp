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
<input type="checkbox" data-bind="checked: isChecked" />
<script>
    var viewModel = kendo.observable({
        isChecked: false
    });

    kendo.bind($("input"), viewModel);
</script>

<hr>
<input type="checkbox" value="Red" data-bind="checked: colors" />Red
<input type="checkbox" value="Green" data-bind="checked: colors" />Green
<input type="checkbox" value="Blue" data-bind="checked: colors" />Blue
<script>
    var viewModel = kendo.observable({
        colors: ["Red"]
    });

    kendo.bind($("input"), viewModel);
</script>

<p>测试 2 和 3 时有冲突 </p>

<hr>
<div id="test3">
<input type="radio" value="Red" name="color" data-bind="checked: selectedColor" />Red
<input type="radio" value="Green" name="color" data-bind="checked: selectedColor" />Green
<input type="radio" value="Blue" name="color" data-bind="checked: selectedColor" />Blue
</div>
<script>
    var viewModel = kendo.observable({
        selectedColor: "Green"
    });

    kendo.bind($("test3"), viewModel);
</script>
</body>
</html>
