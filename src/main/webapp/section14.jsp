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
    <span data-bind="click: showDescription">点一下就出来了</span>
    <span data-bind="visible: isDescriptionShown, text: description"></span>
</div>
<script>
    var viewModel = kendo.observable({
        description: "出来就回不去了",
        isDescriptionShown: false,
        showDescription: function (e) {
            // show the span by setting isDescriptionShown to true
            this.set("isDescriptionShown", true);
        }
    });

    kendo.bind($("#view"), viewModel);
</script>
</body>
</html>
