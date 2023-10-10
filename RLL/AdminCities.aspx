<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminCities.aspx.cs" Inherits="RLL.AdminCities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
        .auto-style2 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <table class="w-100">
        
        <tr>
            <td><strong>CityName</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td><strong>City image</strong></td>
            <td>
                <asp:FileUpload ID="f1" runat="server" accept=".jpg, .jpeg, .png, .gif"/>
                
            </td>
        </tr>
        <tr>
            <td style="height: 53px"><strong>State</strong></td>
            <td style="height: 53px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td style="height: 53px"><strong>Description</strong></td>
            <td class="auto-style1">
                
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td style="height: 53px"><strong>Cost</strong></td>
            <td class="auto-style2">
                
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="38px" text="upload"  class="btn btn-success" OnClick="Button1_Click" Width="125px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                
                
                <br />
                <br />
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

   

</asp:Content>