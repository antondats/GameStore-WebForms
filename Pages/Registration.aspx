<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="GameStore.Pages.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Регистрация</title>
    <link rel="stylesheet" href="/Content/LoginStyles.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="login_wrapper">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnContinueButtonClick="CreateUserWizard1_ContinueButtonClick" 
            BorderColor="#3F3B33"
	        BorderPadding="10" BorderStyle="Solid" BorderWidth="4px">
            <ContinueButtonStyle BackColor="#554433" />
            <TitleTextStyle BackColor="#3F3B33" Font-Bold="True" Font-Size="1.5em"
	            ForeColor="#CCCCBB" CssClass="Title" />
            <ContinueButtonStyle BackColor="#554433" BorderColor="#554433" BorderStyle="Solid"
	            BorderWidth="2px" Font-Names="Verdana" Font-Size="1em" ForeColor="#F0F0B0" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
    </form>
</body>
</html>
