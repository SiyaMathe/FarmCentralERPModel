<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="ABCSAMPLE.FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        .content {
            background: #000;
            height: 100vh;
            overflow: hidden;
        }

            .content h1 {
                color: #fff;
                position: absolute;
                top: 50%;
                left: 50%;
                font-family: candara;
                text-transform: uppercase;
                transform: translate(-50%, -50%);
                z-index: 1;
                font-size: 80px;
                text-align: center;
            }

        .box ul li {
            position: absolute;
            width: 35px;
            height: 35px;
            list-style: none;
            opacity: 0;
            background: radial-gradient(deepskyblue, transparent, transparent);
            bottom: 0;
            left: 10vw;
            animation: animate 15s linear infinite;
        }

            .box ul li:nth-child(2) {
                left: 36vw;
                animation-delay: 2s;
            }

            .box ul li:nth-child(3) {
                left: 22vw;
                animation-delay: 4s;
            }

            .box ul li:nth-child(4) {
                left: 56vw;
                animation-delay: 6s;
            }

            .box ul li:nth-child(5) {
                left: 76vw;
                animation-delay: 4s;
            }

            .box ul li:nth-child(6) {
                left: 80vw;
                animation-delay: 8s;
            }

        @keyframes animate {
            0% {
                transform: scale(0);
                opacity: 1;
                bottom: 0;
            }

            100% {
                transform: scale(10);
                opacity: 0;
                bottom: 100vh;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <h1>WELCOME BACK TO FARM CENTRAL </h1>

            
           
          <div> 

             <p><a style ="color:white" href="EmployeeLogin.aspx">Employee Login</a> </p>

            <p><a style ="color:white" href="FarmerLogin.aspx">Farmer Login</a> </p>

        </div>



        </div>
        

        <div class="box">

            <ul>
               <li></li> 
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </form>
</body>
</html>
