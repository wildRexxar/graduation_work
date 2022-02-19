<#macro page>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>GP</title>
        <link rel="stylesheet" href="/"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
              integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
              crossorigin="anonymous"/>


        <style>

            nav {
                background-color: #F1ED13;
            }

            body {
                background-color: #111133;
            }

            #cardStyle {
                background-color: #111133;
                font-style : normal;
                font-weight : bold;
                color : #F1ED13;
                font-family: Arial, Helvetica, Verdana, sans-serif;
                font-size: 150%;
            }

            #cardStyle2 {
                background-color: #111133;
                color : #F1ED13;
                border-radius: 8px;
                border: 2px solid #FFFFFF;
            }

            #authorName {
                color : #FFFFFF;
                font-style : italic;
                font-family: Arial, Helvetica, Verdana, sans-serif;
                font-size: 125%;
            }

            #textNavbarLogo {
                font-style : normal;
                font-weight : bold;
                color : #111133;
                font-family: Arial, Helvetica, Verdana, sans-serif;
                font-size: 200%;
            }

            #textNavbar1 {
                font-style : normal;
                font-weight : bold;
                color : #111133;
                font-family: Arial, Helvetica, Verdana, sans-serif;
                font-size: 150%;
            }

            #textNavbar2 {
                font-style : italic;
                color : #111133;
                font-family: Arial, Helvetica, Verdana, sans-serif;
                font-size: 125%;
            }

            #buttonNavbar {
                background-color: #111133;
                font-style : italic;
                color : #F1ED13;
                font-family: Arial, Helvetica, Verdana, sans-serif;
                font-size: 125%;
                border-radius: 8px;
                border: 4px solid #FFFFFF;
            }

            #buttonPage {
                background-color: #F1ED13;
                font-style : italic;
                color : #111133;
                font-family: Arial, Helvetica, Verdana, sans-serif;
                font-size: 125%;
                border-radius: 8px;
                border: 4px solid #FFFFFF;
            }

            #labelText {
                font-style : normal;
                font-weight : bold;
                color : #F1ED13;
                font-size: 100%;
            }

            #list1{
                font-style : normal;
                font-weight : bold;
                color : #F1ED13;
                font-size: 125%;
                background-color: #111133;
            }

            #input1 {
                border: 4px solid #F1ED13;
                border-radius: 4px;
                background-color: #111133;
                color : #F1ED13;
                font-style : italic;
                font-size: 100%
            }

            h3{
                font-style : italic;
                font-weight : bold;
                color : #F1ED13;
                font-family: Arial, Helvetica, Verdana, sans-serif;
                font-size: 200%;
            }

            h4{
                font-style : italic;
                font-weight : bold;
                color : #F1ED13;
                font-family: Arial, Helvetica, Verdana, sans-serif;
                font-size: 250%;
            }

            h5{
                font-style : italic;
                font-weight : bold;
                color : #F1ED13;
                font-family: Arial, Helvetica, Verdana, sans-serif;
                font-size: 200%;
            }


        </style>
    </head>
    <body>
    <#include "navbar.ftlh">
    <div class="container mt-5">
        <#nested>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </body>
    </html>
</#macro>