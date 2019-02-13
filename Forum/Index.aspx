<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Forum.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>ForumDB</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>
    <link href="css/presets/preset1.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="images/favicon.ico"/>
</head>
<body>
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
                    <div class="text-center">
                        <h2>Название лагеря</h2>
                    </div>
                </div>
            </div>
            <div class="text-center our-services">
                <div class="row">
                    <div class="col-sm-4">
                        <a href="AddUser.aspx">
                            <div class="service-icon">
                                <img src="images\actions\checkmark.png" class="action-img" />
                            </div>
                        </a>
                        <div class="service-info">
                            <h3>Добавить участника</h3>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <a href="UserList.aspx">
                            <div class="service-icon">
                                <img src="images\actions\book.png" class="action-img" />
                            </div>
                        </a>
                        <div class="service-info">
                            <h3>Список участников</h3>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <a href="#">
                            <div class="service-icon">
                                <img src="images/actions/hat.png" class="action-img" />
                            </div>
                        </a>
                        <div class="service-info">
                            <h3>Вкладка для чего-то</h3>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <a href="#">
                            <div class="service-icon">
                                <img src="images/actions/globe.png" class="action-img" />
                            </div>
                        </a>
                        <div class="service-info">
                            <h3>Города</h3>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <a href="#">
                            <div class="service-icon">
                                <img src="images/actions/org.png" class="action-img" />
                            </div>
                        </a>
                        <div class="service-info">
                            <h3>Организации</h3>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <a href="#">
                            <div class="service-icon">
                                <img src="images/actions/arrow_down.png" class="action-img" />
                            </div>
                        </a>
                        <div class="service-info">
                            <h3>Импорт и экспорт данных</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="features" class="parallax">
        <div class="container">
            <form id="form1" runat="server">
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
            </form>
        </div>
    </section>

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

</body>
</html>
