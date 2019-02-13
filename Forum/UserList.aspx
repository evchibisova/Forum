<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="Forum.UserList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>ForumDB</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>
    <link href="css/userlist.css" rel="stylesheet"/>
    <link href="css/presets/preset1.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="images/favicon.ico"/>
</head>
<body>
    <form id="form1" runat="server">
        <header id="home">
            <div class="main-nav">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="Index.aspx">
                            <img class="img-responsive" src="images/logo.png" alt="logo" />
                        </a>
                    </div>
                    <div class="navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="scroll"><a href="Index.aspx">Главная</a></li>
                            <li class="scroll"><a href="#features">Статистика</a></li>
                            <li class="scroll"><a href="#contact">Наши контакты</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

        <section id="services">
            <div class="container">
                <div class="heading">
                    <div class="row">
                        <div class="text-center ">
                            <h2>Список участников</h2>
                        </div>
                    </div>
                </div>
                <div class="text-center our-services">
                    <asp:Table ID="UserTable" runat="server" class="table table-bordered table-hover usertable">
                        <asp:TableRow CssClass="usertable-head">
                            <asp:TableHeaderCell>№</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Участник</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Город</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Корпус</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Номер</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Прибытие</asp:TableHeaderCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </div>
        </section>

        <section id="features" class="parallax">
            <div class="container">
                <div class="row count">
                    <div class="col-sm-3 col-xs-6">
                        <img src="images/stat/calendar.png" class="action-img" />
                        <h3>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </h3>
                        <p>
                            <asp:Label ID="SubLabel11" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <img src="images/stat/man.png" class="action-img" />
                        <h3>200</h3>
                        <p>зарегистрированных участников</p>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <img src="images/stat/check.png" class="action-img" />
                        <h3>10</h3>
                        <p>участников уже здесь</p>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <img src="images/stat/clock.png" class="action-img" />
                        <h3>многие</h3>
                        <p>ещё в пути</p>
                    </div>
                </div>
            </div>
        </section>
        <!--/#features-->

        <footer id="footer">
            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <p>&copy; 2018</p>
                        </div>
                        <div class="col-sm-6 right-div">
                            <p class="pull-right">На свете нет ничего невозможного</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
