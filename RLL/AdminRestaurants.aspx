<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminRestaurants.aspx.cs" Inherits="RLL.AdminRestaurants" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        
        <tr>
            <td><strong>Restaurant Name</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td><strong>Restaurant image</strong></td>
            <td>
                <asp:FileUpload ID="f1" runat="server" accept=".jpg, .jpeg, .png, .gif"/>
                
            </td>
        </tr>
        <tr>
            <td style="height: 53px"><strong>Places Name</strong></td>
            <td style="height: 53px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" class="btn btn-success" runat="server" Height="38px" text="upload" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
