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
<div id="foo">
    I will be animated
</div>

<script>
    var effectWrapper = kendo.fx($("#foo"));
    var fadeOutEffect = effectWrapper.fadeOut();
    fadeOutEffect.duration(8000).play();
</script>
<hr>
<div id="foo2">
    I will be animated
</div>

<script>
    <%--三种是一个效果--%>
    var fadeOut1 = kendo.fx($("#foo2")).fadeOut().play();
    // var fadeOut2 = kendo.fx($("#foo")).fade("out");
    // var fadeOut3 = kendo.fx($("#foo")).fade().direction("out");

    //Call .play() to run any of the above animations
</script>

<hr>
<div id="foo3">
    I will be faded out and zoomed out.
</div>

<script>
    var effectWrapper = kendo.fx($("#foo3"));
    var fadeOutEffect = effectWrapper.fadeOut();
    fadeOutEffect.add(effectWrapper.zoomOut());
    fadeOutEffect.duration(8000).play();
    // Calling reverse will zoom in and fade in.
</script>
</body>
</html>
