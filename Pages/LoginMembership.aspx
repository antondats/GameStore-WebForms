<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginMembership.aspx.cs" Inherits="GameStore.Pages.LoginMembership" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Вход/Регистрация
    </title>
    <link rel="stylesheet" href="/Content/LoginStyles.css" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="login_wrapper"> 
        <div>
        <asp:Login ID="Login1" runat="server" 
            InstructionText="Пожалуйста введите имя пользователя и пароль для входа в систему" 
            CreateUserText="Регистрация в системе"
            PasswordRecoveryText="Забыли пароль?"
            CreateUserUrl="~/Pages/Registration.aspx"
            PasswordRecoveryUrl="~/Pages/PasswordRecovery.aspx"
            TitleText="Войти в систему"
            FailureText="Oooooooops....."
            BorderColor="#3F3B33"
	        BorderPadding="10" BorderStyle="Solid" BorderWidth="4px" Font-Names="Verdana"
	        Font-Size="0.8em" ForeColor="#543" TextLayout="TextOnTop" 
	        CssClass="Login" OnLoggedIn="Login1_LoggedIn">
            <TextBoxStyle Font-Size="1em" CssClass="MyLoginTextBoxStyle" />
	        <LoginButtonStyle BackColor="#554433" BorderColor="#554433" BorderStyle="Solid"
	            BorderWidth="2px" Font-Names="Verdana" Font-Size="1em" ForeColor="#F0F0B0" />
	        <InstructionTextStyle Font-Italic="True" ForeColor="#543" />
	        <TitleTextStyle BackColor="#3F3B33" Font-Bold="True" Font-Size="1.5em"
	            ForeColor="#CCCCBB" CssClass="Title" />
        </asp:Login>
      </div>
    </div>
  </form>
</body>
</html>
