<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateCites.aspx.cs" Inherits="RLL.UpdateCites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 155px;
        }
        .auto-style2 {
            width: 155px;
            height: 75px;
        }
        .auto-style3 {
            height: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <br />
        <table class="w-100">
            <tr>
                <td class="auto-style1"> &nbsp;&nbsp; Update City name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Update Image&nbsp;&nbsp;</td>
                <td> <asp:FileUpload ID="f1" runat="server" CssClass="form-control-file" accept=".jpg, .jpeg, .png, .gif" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="46px" OnClick="Button1_Click" Text="Button" Width="77px" />
                    <br />
                    <br />
                    <asp:Label ID="LblMsg" runat="server"></asp:Label>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
    </p>

</asp:Content>
