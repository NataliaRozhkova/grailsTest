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


    <g:if test="${!hotelList.isEmpty()}">

        <div id="list-hotel" class="content scaffold-list" role="main">
            <h1>Найдено ${hotelList.size}</h1>
            <div class="lead">
                <table>
                    <tr>
                        <th>Звездность</th>
                        <th>Название</th>

                    </tr>

                    <g:each var="hotel" in="${hotelList}">

                        <tr class="even">
                            <td> ${hotel.stars}</td>
                            <td>
                                <a href="/hotel/show/${hotel.id}" > ${hotel.name}</a>
                                <br>
                                <g:if test="${hotel.webPage}">
                                    <a href="${hotel.webPage}" target="_blank"> Перейти на сайт</a>
                                </g:if>
                            </td>

                        </tr>
                    </g:each>
                </table>
            </div>
        </div>
    </g:if>
    <g:if test="${hotelList.isEmpty()}">
       <h1> По Вашему запросу ничего не найдено </h1>
    </g:if>


<script type="text/javascript" src="./Hotel List_files/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./Hotel List_files/bootstrap.js"></script>
<script type="text/javascript" src="./Hotel List_files/popper.min.js"></script>
<script type="text/javascript" src="./Hotel List_files/application.js"></script>


</body></html>