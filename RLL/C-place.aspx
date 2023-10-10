<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="C-place.aspx.cs" Inherits="RLL.C_place" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        /* Inline CSS styles for this page */
        body {
            background-image: url('https://img.freepik.com/premium-photo/travel-minimal-background-model-airplane-flight-empty-colored-background-copy-space_90380-761.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }

        .auto-style2 {
            margin-left: 0px;
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
        <h1 class="auto-style2 text-center"><strong> </strong> <span class="auto-style3"><strong><em>P</strong></span><span class="auto-style4"><strong>laces</em></strong></span></h1>
        <asp:Repeater ID="d1" runat="server">
            <ItemTemplate>
                <div class="row mt-4">
                    <div class="col-md-3">
                        <a href="Restaruant.aspx?id=<%# Eval("CityPlace") %>" class="text-decoration-none">
                            <img src="../<%# Eval("img") %>" class="img-fluid" alt="Place Image" style="width: 100%;">
                        </a>
                    </div>
                    <div class="col-md-9">
                        <a href="Restaruant.aspx?id=<%# Eval("CityPlace") %>" class="text-decoration-none">
                            <h3><%# Eval("CityPlace") %></h3>
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

</asp:Content>
