<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="Forum.AddUser" %>

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
                            <h2>Новый участник</h2>
                        </div>
                    </div>
                </div>
                <div class="text-center our-services">
                    <div class="form-row">
                        <p class="text-center">Фамилия, имя и отчество</p>
                    </div>
                    <div class="form-row userrow">
                        <div class="col">
                            <asp:TextBox ID="PSurname" runat="server" placeholder="Фамилия" CssClass="form-control" ></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="PName" runat="server" placeholder="Имя" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="PPatronymic" runat="server" placeholder="Отчество" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="form-row userrow">
                        <div class="col">
                            <label for="BirthDate">Дата рождения</label>
                            <asp:TextBox ID="BirthDate" runat="server" placeholder="Дата рождения" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="col">
                            <label for="Gender">Пол</label>
                            <asp:DropDownList ID="Gender" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <label for="Gender">Серия и номер паспорта</label>
                            <asp:TextBox ID="PassportNum" runat="server" placeholder="Серия и номер паспорта" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-row userrow">
                        <div class="col">
                            <label for="BirthDate">Кем выдан паспорт</label>
                            <asp:TextBox ID="PassIssue" runat="server" placeholder="Кем выдан" CssClass="form-control"></asp:TextBox>
                        </div> 
                        <div class="col">
                            <label for="BirthDate">Когда выдан паспорт</label>
                            <asp:TextBox ID="PassDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>


                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="form-row">
                                <div class="col">
                                    <asp:Label ID="OldCityLabel" runat="server" Text="Город" CssClass="userlabel"></asp:Label>
                                </div>
                                <div class="col">
                                    <label for="CityCheckBox" class="text-center">Этого города нет в списке!</label>
                                </div>
                                <div class="col">
                                    <asp:Label ID="NewCityLabel" runat="server" Text="Введите название города" CssClass="userlabel" Visible="False"></asp:Label>
                                </div>
                            </div>
                            <div class="form-row userrow">
                                <div class="col">
                                    <asp:DropDownList ID="CityDropList" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                        
                                <div class="col">
                                    <asp:CheckBox ID="CityCheckBox" runat="server" CssClass="" AutoPostBack="True"/>       
                                </div>         
                                <div class="col">
                                    <asp:TextBox ID="NewCityName" runat="server" placeholder="Город" CssClass="form-control" Visible="False"></asp:TextBox>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <div class="form-row">
                        <p class="text-center">Организация и ответственный руководитель</p>
                    </div>
                    <div class="form-row userrow">
                        <div class="col">
                            <asp:TextBox ID="OrgName" runat="server" placeholder="Организация" CssClass="form-control"></asp:TextBox>
                        </div> 
                        <div class="col">
                            <asp:TextBox ID="Leader" runat="server" placeholder="Сопровождающий" CssClass="form-control"></asp:TextBox>
                        </div> 
                    </div>
                    <div class="form-row">
                        <p class="text-center">Контакты</p>
                    </div>
                    <div class="form-row userrow">
                        <div class="col">
                            <asp:TextBox ID="PPhoneNumber" runat="server" placeholder="Телефон" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                        </div> 
                        <div class="col">
                            <asp:TextBox ID="PEmail" runat="server" placeholder="E-mail" CssClass="form-control" TextMode="Email" ></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="SocialNetworks" runat="server" placeholder="Социальные сети" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <p class="text-center">Информация о родственниках</p>
                    </div>
                    <div class="form-row userrow">
                        <div class="col">
                            <asp:TextBox ID="RelativeName" runat="server" placeholder="ФИО родственника" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="Relationship" runat="server" placeholder="Кем приходится родственник" CssClass="form-control"></asp:TextBox>
                        </div> 
                        <div class="col">
                            <asp:TextBox ID="RelativeContact" runat="server" placeholder="Контакты родственника" CssClass="form-control"></asp:TextBox>
                        </div>  
                    </div>
                    <div class="form-row">
                        <p class="text-center">Медицинские противопоказания</p>
                    </div>
                    <div class="form-row userrow">
                        <div class="col">
                            <asp:TextBox ID="MedContr" runat="server" CssClass="form-control" Rows="5" TextMode="MultiLine"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row userrow">
                        <div class="col">
                            <label for="TransportNum">Номер транспорта</label>
                            <asp:TextBox ID="TransportNum" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <label for="Housing">Корпус</label>
                            <asp:TextBox ID="Housing" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <label for="Room">Комната</label>
                            <asp:TextBox ID="Room" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="col">
                            <label for="Arrival">Отряд</label>
                            <asp:TextBox ID="Squad" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="col">
                            <label for="Arrival">Прибытие</label>
                            <asp:DropDownList ID="Arrival" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-row userrow">
                        <div class="col">
                            <asp:Button ID="AddButton" runat="server" Text="Добавить участника" class="btn-info btn-lg" OnClick="Button1_Click"/>
                        </div>
                    </div>
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
