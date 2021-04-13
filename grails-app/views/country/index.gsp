<!DOCTYPE html>
<!-- saved from url=(0035)http://localhost:8090/country/index -->
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
        Country List
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-ico" href="http://localhost:8090/assets/starred.png">

    <link rel="stylesheet" href="./Country List_files/bootstrap.css">
    <link rel="stylesheet" href="./Country List_files/grails.css">
    <link rel="stylesheet" href="./Country List_files/main.css">
    <link rel="stylesheet" href="./Country List_files/mobile.css">
    <link rel="stylesheet" href="./Country List_files/application.css">

    <meta name="layout" content="main">

</head>

<body>
<a href="/country/index#list-country" class="skip" tabindex="-1">Skip to content…</a>
<div class="nav" role="navigation">
    <ul>
        <li><a href="/country/create" class="create">Добавить страну</a></li>
    </ul>
</div>
<div id="list-country" class="content scaffold-list" role="main">
    <h1>Список стран</h1>
    <div class="lead">
        <table>
            <tr>
                <th>Название</th>
                <th>Столица</th>
                <th>Редактировать</th>
                <th>Удалить</th>
            </tr>
            <g:each var="country" in="${countryList}">
                <tr class="even">
                    <td>
                        <a href="/country/show/${country.id}"> ${country.name}</a>
                    </td>
                    <td> ${country.capital}</td>
                    <td>
                        <a href="/country/edit/${country.id}"> Редактировать </a>
                    </td>
                    <td>
                        <form action="/country/delete/${country.id}" method="post">
                            <input class="delete" type="submit" value="Delete" onclick="return confirm('Are you sure?');">
                        </form>
                    </td>
                </tr>
            </g:each>
        </table>
    </div>
</div>

<script type="text/javascript" src="./Country List_files/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./Country List_files/bootstrap.js"></script>
<script type="text/javascript" src="./Country List_files/popper.min.js"></script>
<script type="text/javascript" src="./Country List_files/application.js"></script>


</body>
</html>