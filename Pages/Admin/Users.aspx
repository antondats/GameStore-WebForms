<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" 
    Inherits="GameStore.Pages.Admin.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="LisrView1" ItemType="GameStore.Models.User" SelectMethod="GetUsers" 
        DataKeyNames="Email" UpdateMethod="UpdateUser" EnableViewState="true" runat="server">
        <LayoutTemplate>
            <div class="outerContainer">
                <table id="productsTable">
                    <tr>
                        <th>Имя</th>
                        <th>Роль</th>
                        <th>E-mail</th>
                    </tr>
                    <tr runat="server" id="itemPlaceholder"></tr>
                </table>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Item.Name %></td>
                <td><%# Item.Role %></td>
                <td><%# Item.Email %></td>
                <td>
                    <asp:Button ID="Button1" CommandName="Edit" Text="Изменить" runat="server" />
                    
                </td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
              <tr>
                <td>
                    <input name="Name" value="<%# Item.Name %>" />
                </td>
                <td>
                    <input name="Role" value="<%# Item.Role %>" />
                </td>
                <td>
                    <input name="email" value="<%# Item.Email %>" /></td>
                <td>
                    <asp:Button ID="Button3" CommandName="Update" Text="Обновить" runat="server" />
                    <asp:Button ID="Button4" CommandName="Cancel" Text="Отмена" runat="server" />
                </td>
            </tr>
            </tr>
        </EditItemTemplate>
    </asp:ListView>
</asp:Content>
