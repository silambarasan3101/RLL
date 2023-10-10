<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reviews_page.aspx.cs" Inherits="RLL.Reviews_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center">Welcome</h2>
    <p style="text-align:center">
    </p>    
    <asp:Repeater ID="d1" runat="server">
    <ItemTemplate>
        <div class="card" style="width:40%">
            <h2><%# Eval("rating") %></h2>
            <p><%# Eval("comments") %></p>
            <img src="../<%# Eval("img") %>" alt='' style="width:50%; height:50%">
            

        </div>
    </ItemTemplate>
</asp:Repeater>

</asp:Content>
