<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="GameStore.Pages.PasswordRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Восстановление пароля</title>
    <style>
        h2 {
            color: white;
            background-color:#3F3B33;
            
        }
        div.container {
            border: 4px solid;
            border-color: #3F3B33;
            padding: 10px;
            font-family: Courier New;
            margin: 0 auto;
            color: #000543;
        }
        .button {
            padding: 5px;
            margin: 10px 30px 0 0;
            width: 150px;
        }
    </style>
    <link rel="stylesheet" href="/Content/LoginStyles.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="login_wrapper">
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
            <MailDefinition From="admin@gamestore.ua" Subject="Password recovery" Priority="High" />
            <UserNameTemplate>
                <div class="container">
                    <h2>Хотите восстановить пароль?</h2>
                    <asp:Label ID="Label1" runat="server" Text="Введите ваше имя:  " />
                    <asp:TextBox ID="UserName" runat="server" />
                    <br />
                    <div style="text-align: right">
                        <asp:Button ID="SubmitButton" CommandName="Submit" runat="server" Text="Далее" CssClass="button" />
                    </div>
                    <br />
                    <span style="color:red">
                        <asp:Literal ID="FailureText" runat="server" />
                    </span>
                </div>
            </UserNameTemplate>
            <QuestionTemplate>
                 <div class="container">
                    <h2>Хотите восстановить пароль?</h2>
                    Привет <asp:Literal ID="UserName" runat="server" />! <br />
                    Пожалуйста ответьте на контрольный вопрос:<br />
                    <asp:Literal ID="Question" runat="server" /><br />
                    <asp:TextBox ID="Answer" runat="server" /><br />
                    <div style="text-align: right">
                        <asp:Button ID="Button1" CommandName="Submit" runat="Server" 
                            Text="Отправить ответ" CssClass="button" /><br />
                    </div>
                    <asp:Literal ID="FailureText" runat="server" /></span>
                </div>
            </QuestionTemplate>
            <SuccessTemplate>
                Ваш пароль был успешно выслан на ваш email-адрес. 
                <% Response.Write(CreateHomeLinkHtml()); %>
            </SuccessTemplate>
        </asp:PasswordRecovery>
    </div>
    </form>
</body>
</html>
