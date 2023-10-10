<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteRestauant.aspx.cs" Inherits="RLL.DeleteRestauant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 171px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
        <br />
        <table class="w-100">
            <tr>
                <td class="auto-style1">&nbsp;<strong>Resturant place</strong>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>


                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
                    <asp:Button ID="Button1" runat="server" class="btn btn-danger" OnClick="Button1_Click" Text="Delete" />
    </p>
    <p>
    </p>
    <p>
    </p>
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
    <br />
   
</asp:Content>
