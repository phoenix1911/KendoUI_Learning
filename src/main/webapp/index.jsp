<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Kendo UI Web</title>
    <link href="styles/kendo.common.min.css" rel="stylesheet" />
    <link href="styles/kendo.default.min.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/kendo.web.min.js"></script>
</head>
<body>
<input id="datepicker" />
<hr>
<div id="container">
    <input data-role="numerictextbox" />
</div>
<hr>
<div id="container1">
    <input data-role="autocomplete"
           data-ignore-case="true"
           data-text-field="name"
           data-source="{data: [{name: 'John Doe'},{name: 'Jane Doe'}]}" />
</div>
<h3>自动补全</h3>
<input id="autocomplete" />
<h3>自动补全</h3>
<p>Animal: <input id="animal" /></p>

<h3>grid组件</h3>
<div id="grid"></div>

<h3>使用kendoUI组件</h3>
<input id="autocomplete2" />

<h4>监听KendoUI事件</h4>
<input id="autocomplete3" />


<br><br><br><br><br><br>


<script>
    $(function () {
        $("#datepicker").kendoDatePicker();
    });

    kendo.init($("#container"));
    kendo.bind($("#container1"), {});

    $("#autocomplete").kendoAutoComplete(["Apples", "Oranges", "Grapes"]);
</script>
<script>
    $(function() {
        // create a new widget instance
        $("#animal").kendoAutoComplete({ dataSource: [ "Ant", "Antilope", "Badger", "Beaver", "Bird" ] });

        // retrieve the widget instance
        var autoComplete = $("#animal").data("kendoAutoComplete");

        console.log(autoComplete);
    });
</script>
<script>
    $("#grid").kendoGrid({
        height: 200,
        columns:[
            {
                field: "FirstName",
                title: "First Name"
            },
            {
                field: "LastName",
                title: "Last Name"
            }
        ],
        dataSource: {
            data: [
                {
                    FirstName: "John",
                    LastName: "Doe"
                },
                {
                    FirstName: "Jane",
                    LastName: "Doe"
                }
            ]
        }
    });
</script>
<script>
    $("#autocomplete2").kendoAutoComplete(["Apples", "Oranges", "Grapes"]);
    var autocomplete = $("#autocomplete2").data("kendoAutoComplete");
    autocomplete.value("Cherries");
    var value = autocomplete.value();
    // alert(value); // Displays "Cherries"
</script>


<script>
    function autocomplete_change() {
        // Handle the "change" event
    }
    $("#autocomplete3").kendoAutoComplete({
        change: autocomplete_change
    });
</script>
<script>
    function autocomplete_change() {
        // Handle the "change" event
    }
    $("#autocomplete3").kendoAutoComplete();
    var autocomplete = $("#autocomplete3").data("kendoAutoComplete");
    autocomplete.bind("change", autocomplete_change);
    alert("Handle the \"change\" event");
</script>
</body>
</html>