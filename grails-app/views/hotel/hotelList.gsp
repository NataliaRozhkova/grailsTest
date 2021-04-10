<!DOCTYPE html>
<!-- saved from url=(0035)http://localhost:8090/country/index -->
<html lang="en" class="no-js"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
        Справочник отелей
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-ico" href="/assets/starred.png">

    <link rel="stylesheet" href="./Hotel List_files/bootstrap.css">
    <link rel="stylesheet" href="./Hotel List_files/grails.css">
    <link rel="stylesheet" href="./Hotel List_files/main.css">
    <link rel="stylesheet" href="./Hotel List_files/mobile.css">
    <link rel="stylesheet" href="./Hotel List_files/application.css">

        <meta name="layout" content="main">

</head>

<body>

        <div class="nav" role="navigation">
            <ul>
                <li><a href="/hotel/search" class="create">Новый поиск</a></li>
            </ul>
        </div>
        <div id="list-hotel" class="content scaffold-list" role="main">
            <h1>Список отелей</h1>
            <div class="lead">
                <table>
                    <tr>
                        <th>Количество звезд</th>
                        <th>Название</th>
                        <th>Сайт</th>
                        <th>Страна</th>

                    </tr>

                    <g:each var="hotel" in="${hotelList}">

                        <tr class="even">
                            <td> ${hotel.stars}</td>
                            <td>
                                <a href="/hotel/show/${hotel.id}" > ${hotel.name}</a>
                            </td>
                            <td>
                               <a href="${hotel.webPage}" > Перейти на сайт</a>
                            </td>
                            <td>
                                <a href="/country/show/${hotel.country.id}" > ${hotel.country.name}</a>
                            </td>

                        </tr>
                    </g:each>
                </table>
            </div>
        </div>

<script type="text/javascript" src="./Hotel List_files/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./Hotel List_files/bootstrap.js"></script>
<script type="text/javascript" src="./Hotel List_files/popper.min.js"></script>
<script type="text/javascript" src="./Hotel List_files/application.js"></script>




</body></html>