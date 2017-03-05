<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listing.aspx.cs" Inherits="GameStore.Pages.Listing" 
    MasterPageFile="~/Pages/Store.Master"%>
<%@ Import Namespace="System.Web.Routing" %>

<asp:Content ContentPlaceHolderID="bodyContent" runat="server">
   
    <div id="content">
        <asp:LoginView ID="LoginView2" runat="server">
            <LoggedInTemplate>
                <asp:Repeater ID="Repeater1" ItemType="GameStore.Models.Game"
                 SelectMethod="GetGames" runat="server">
                    <ItemTemplate>
                         <div class="post">
                            <div class="post_title"><h2> <asp:LinkButton ID="Show" OnClick="Show_Click" Text="<%# Item.Name %>" runat="server" /></h2></div>
						    <div class="post_body">
                                <div><%# Item.Description %></div>
						        <div  class="price">
						            <h4><%# Item.Price.ToString("c") %></h4>
                                    <button name="add" type="submit" value="<%# Item.GameId %>" runat="server">
                                        Добавить в корзину
                                    </button>                                   
                                </div>
                            </div>
                            
					    </div>
                    </ItemTemplate>
                </asp:Repeater>
            </LoggedInTemplate>
            <AnonymousTemplate>
                <asp:Repeater ID="Repeater1" ItemType="GameStore.Models.Game"
                    SelectMethod="GetGames" runat="server">
                    <ItemTemplate>
                        <div class="post">
                            <div class="post_title"><h2> <asp:LinkButton ID="Show" OnClick="Show_Click" Text="<%# Item.Name %>" runat="server" /></h2></div>
						    <div class="post_body">
                                <div><%# Item.Description %></div>
                                <div  class="price">
						            <h4><%# Item.Price.ToString("c") %></h4>                                   
                                </div> 
                                <p>Авторизируйтесь для покупки</p>                           
                            </div>
                            
					    </div>
                    </ItemTemplate>
                 </asp:Repeater>
            </AnonymousTemplate>
        </asp:LoginView>
    </div>


    <div class="pager">
        <%
            for (int i = 1; i <= MaxPage; i++)
            {
                string category = (string)Page.RouteData.Values["category"]
                    ?? Request.QueryString["category"];
                
                string path = RouteTable.Routes.GetVirtualPath(null, null,
                    new RouteValueDictionary() { {"category", category}, { "page", i } }).VirtualPath;
                Response.Write(
                    String.Format("<a href='{0}' {1}><span class='page'>{2}</a>",
                        path, i == CurrentPage ? "class='selected'" : "", i));
            }
        %>
    </div>
</asp:Content>