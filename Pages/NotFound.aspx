<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Store.Master" AutoEventWireup="true" CodeBehind="NotFound.aspx.cs" 
    Inherits="GameStore.Pages.NotFound" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <h1>Ошибка 404 - страница не найдена</h1>
    <p>Среда ASP.NET не нашла указанную страницу.</p>
    <p><a href="<%= GetHomeLink() %>">Перейти на главную?</a></p>
</asp:Content>
