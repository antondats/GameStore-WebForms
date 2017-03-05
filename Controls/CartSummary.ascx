<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CartSummary.ascx.cs" Inherits="GameStore.Controls.CartSummary" %>

<div id="cartSummary">
    <div class="link">
        <a id="csLink" runat="server">Корзина</a>
    </div>
    <span class="caption">
        <b>В корзине:</b>
        <span id="csQuantity" runat="server"></span> товаров,
        <span id="csTotal" runat="server"></span>
    </span>
    
</div>