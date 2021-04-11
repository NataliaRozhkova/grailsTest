<!DOCTYPE html>
<!-- saved from url=(0035)http://localhost:8090/country/index -->
<html lang="en" class="no-js"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
        Справочник отелей
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-ico" href="http://localhost:8090/assets/starred.png">

    <link rel="stylesheet" href="./Hotel List_files/bootstrap.css">
    <link rel="stylesheet" href="./Hotel List_files/grails.css">
    <link rel="stylesheet" href="./Hotel List_files/main.css">
    <link rel="stylesheet" href="./Hotel List_files/mobile.css">
    <link rel="stylesheet" href="./Hotel List_files/application.css">

        <meta name="layout" content="main">

</head>


<body>
    <br><br>
    <div>
        <g:form name="myForm" url="[action:'hotelList',controller:'hotel']">
            <div class="row">
                <input class="form-control" name="name" placeholder="Введите название" required type="text">
            </div>
            <br>
            <div class="row">
                <select class="form-control" id="country" name="country.id">
                    <option value="">Выберите страну</option>
                    <g:each var="country" in="${countryList}">
                            <option value = ${country.id}
                                    text="">${country.name}</option>
                    </g:each>
                </select></div>
            </div>
            <br>
            <div class="row">
                <button class="btn btn-default">Поиск</button>
            </div>
        </g:form>
    </div>


<script type="text/javascript" src="./Hotel List_files/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./Hotel List_files/bootstrap.js"></script>
<script type="text/javascript" src="./Hotel List_files/popper.min.js"></script>
<script type="text/javascript" src="./Hotel List_files/application.js"></script>




</body></html>