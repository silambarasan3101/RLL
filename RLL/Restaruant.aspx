<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Restaruant.aspx.cs" Inherits="RLL.Restaruant" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Your existing styles go here -->
    <style>
        /* Inline CSS styles for this page */
        body {
            background-color: #F0F0F0;
            background-image: url('https://img.freepik.com/free-photo/tabletop-looking-out-empty-restaurant_23-2147701293.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }

        .auto-style6 {
            font-size: larger;
        }

        .auto-style7 {
            color: #33CC33;
        }

        .auto-style3 {
            font-size: larger;
            color: #00CC00;
            text-decoration: underline;
        }

        .auto-style4 {
            font-size: larger;
            color: #000000;
            text-decoration: underline;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h1 class="auto-style2 text-center" ><strong> </strong> <span class="auto-style3"><strong><em>Restaurants</strong></span><span class="auto-style4"></span></h1>
        <asp:Repeater ID="d1" runat="server">
            <ItemTemplate>
                <div class="row mt-4">
                    <div class="col-md-3">
                        <img src="../<%# Eval("img") %>" class="img-fluid" alt="Restaurant Image" >
                    </div>
                    <div class="col-md-9">
                        <a href="FoodName.aspx?id=<%# Eval("RestaurantPlace") %>" class="text-decoration-none">
                            <h3><%# Eval("RestaurantPlace") %></h3>
                        </a>
                    </div>
                </div>
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
