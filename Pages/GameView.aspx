<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Store.Master" AutoEventWireup="true" CodeBehind="GameView.aspx.cs" Inherits="GameStore.Pages.GameView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <div>
        <h2><%= Game.Name %></h2>
        <p> <%= Game.Description %></p>
        <p> <%= Game.Category %></p>
        <h2> <%= Game.Price %></h2>
        <button name="add" type="submit" value="<%= Game.GameId %>" runat="server">
             Добавить в корзину
        </button>
        <br />
        <p class="actionButtons">
            <a href="<%= BackUrl %>">Назад</a>   
        </p>             
    </div>
</asp:Content>
