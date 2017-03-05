<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryList.ascx.cs" Inherits="GameStore.Controls.CategoryList" %>


            <ul>
	    	    <li><%= CreateHomeLinkHtml() %></li>

                <% foreach (string category in GetCategories()) {
                    Response.Write(CreateLinkHtml(category));       
                }%>
            </ul>


