<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Destination.aspx.cs" Inherits="RLL.Destination" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <!-- Define inline styles for this page -->
    <style>
        /* Inline CSS styles for this page */
        body {
            background-color: #F0F0F0;
            background-image:url('https://png.pngtree.com/background/20210710/original/pngtree-cartoon-national-holiday-season-travel-banner-picture-image_1008735.jpg');
            background-repeat:no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
            

        }
        .auto-style2 {
            margin-left: 119px;
        }
        .auto-style5 {
            color: black;
        }
        .auto-style8 {
            font-size: xx-large;
        color: #FF66FF;
    }
    .auto-style9 {
        --bs-position: end;
        margin-left: 163;
        font-size: larger;
    }
    .auto-style10 {
        --bs-position: end;
        margin-left: 648px;
    }
    .auto-style11 {
        font-size: larger;
    }
    .auto-style12 {
        font-size: xx-large;
        color: black;
    }
    .auto-style13 {
        color: #00CC00;
    }
    .auto-style14 {
        font-size: larger;
        font-weight: bold;
    }
    </style>
</asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           
    <h1 style="color:deeppink">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style14"><em><strong>&nbsp;</strong></em></span><span class="auto-style12"><em>N</em></span><span class="auto-style5"><em>ever<span class="auto-style11"> s</span>top</em></span> <span class="auto-style13"><span class="auto-style9"><em>E</em></span><em>xploring</em></span></h1>
    <h4 style="color:deeppink">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em><span class="auto-style8"><strong>Start your destiny here</strong></span></em></h4>
    <p style="color:deeppink">&nbsp;</p>
    <p style="color:deeppink">&nbsp;</p>
    <p style="color:deeppink">&nbsp;</p>

    
    
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" ProviderName="<%$ ConnectionStrings:con.ProviderName %>" SelectCommand="SELECT * FROM [States]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style10"  DataTextField="StateName" DataValueField="StateName" Width="290px" Height="37px" DataSourceID="SqlDataSource1">
    </asp:DropDownList>

    <asp:Button ID="Button1" runat="server"  class="btn btn-success auto-style2" OnClick="Button1_Click" Text="Explore" Width="129px" Style="align-button:center" Height="40px" />
   
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
       
</asp:Content>

