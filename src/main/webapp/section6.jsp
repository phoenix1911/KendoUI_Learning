<%--
  User: TJL Date: 2018/12/25  Time: 15:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>section6</title>
    <link href="styles/kendo.common.min.css" rel="stylesheet"/>
    <link href="styles/kendo.default.min.css" rel="stylesheet"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/kendo.web.min.js"></script>
</head>
<body>

<script>
    var movies = [{
        title: "Star Wars: A New Hope",
        year: 1977
    }, {
        title: "Star Wars: The Empire Strikes Back",
        year: 1980
    }, {
        title: "Star Wars: Return of the Jedi",
        year: 1983
    }
    ];
    var localDataSource = new kendo.data.DataSource({data: movies});
</script>

</body>
</html>
