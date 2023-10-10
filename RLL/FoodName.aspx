<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FoodName.aspx.cs" Inherits="RLL.FoodName" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Your existing styles go here -->
    <style>
        /* Inline CSS styles for this page */
        body {
            background-color: #F0F0F0;
            background-image: url('https://i.pinimg.com/originals/fc/ef/da/fcefda8549f3ea4c7f14e1747c45e8b5.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }

        .auto-style1 {
            color: #00CC00;
        }

        .auto-style3 {
            font-size: smaller;
            text-decoration: underline;
        }

        .auto-style4 {
            font-size: larger;
            text-decoration: underline;
        }

        .auto-style5 {
            color: #000000;
            font-size: larger;
            text-decoration: underline;
        }

        .auto-style6 {
            color: #00CC00;
            text-decoration: underline;
        }

        .auto-style7 {
            text-decoration: underline;
        }

        .auto-style10 {
            background-color: #66FF66;
        }

        .auto-style12 {
            font-size: xx-large;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h1 class="center" ><span class="auto-style7" ></span><span class="auto-style4">F</span><span class="auto-style6">ood_</span><span class="auto-style5">N</span><span class="auto-style1"><span class="auto-style7">ame </span><span class="auto-style3">&amp;</span><span class="auto-style7"> </span></span><span class="auto-style5">F</span><span class="auto-style6">ood_</span><span class="auto-style5">C</span><span class="auto-style6">ost</span></h1>
        
            
       
       
        <br />
        <div class="float-end">
            <a href="Reviews.aspx" class="text-decoration-none">
            <button type="button" class="btn btn-info" style="height: 50px; width: 200px">
                <strong style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">Feedback</strong>
            </button>
                </a>
        </div>
        <br />
        <asp:Repeater ID="d1" runat="server">
            <ItemTemplate>
                <div class="row mt-4">
                    <div class="col-md-3">
                        <img src="../<%# Eval("img") %>" class="img-fluid" alt="Food Image">
                    </div>
                    <div class="col-md-9">
                       <strong> <p><%# Eval("FoodName") %></p>
                        <p>Rs. <%# Eval("FoodCosts") %></p></strong>
                    </div>
                </div>
                <br />
                <br />
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
