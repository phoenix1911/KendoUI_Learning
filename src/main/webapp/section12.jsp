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
<img id="logo" data-bind="attr: { src: imageSource, alt: imageAlt }" />
<script>
    var viewModel = kendo.observable({
        imageSource: "https://7n.w3cschool.cn/attachments/image/wk/kendouidevelopmenttutorial/23.jpg",
        imageAlt: "Kendo Logo"
    });

    kendo.bind($("#logo"), viewModel);
</script>
<h1>等效于</h1>
<img id="logo2" src="https://7n.w3cschool.cn/attachments/image/wk/kendouidevelopmenttutorial/23.jpg" alt="Kendo Logo"/>


<hr>
<div data-bind="attr: { data-foo: fooValue, data-bar: barValue }"></div>

<script>
    var viewModel = kendo.observable({
        fooValue: "foo",
        barValue: "bar"
    });

    kendo.bind($("div"), viewModel);
</script>
</body>
</html>
