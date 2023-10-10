<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Citys.aspx.cs" Inherits="RLL.Citys" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Your existing styles go here -->
    <style>
        /* Inline CSS styles for this page */
        body {
            background-color: #F0F0F0;
            background-image: url('https://t4.ftcdn.net/jpg/06/34/29/61/240_F_634296178_VdLtyGtRjqtGilNS20pzI4avrmMOwzxe.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }

        .auto-style1 {
            font-size: larger;
        }

        .auto-style2 {
            color: #00CC00;
            text-decoration: underline;
        }

        .auto-style3 {
            text-decoration: underline;
        }

        .auto-style4 {
            background-color: white;
            width: 9%;
        }

        .auto-style5 {
            width: 11%;
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        
        <h1 class="text-center"> <span class="auto-style1"><span class="auto-style2"><strong><em>C</em></strong></span><span class="auto-style3"><strong><em>ities</em></strong></span></span></h1>
        <asp:Repeater ID="d1" runat="server">
            <ItemTemplate>
                
                <div class="row mt-4" style=" width:90%">
                   
                        <div class="col-md-4">
                            <img src="../<%# Eval("Cityimage") %>" class="img-fluid" alt="City Image" style="width: 100%; height:inherit">
                            
                          </div>
                            <div class="col-md-6">
                            
                                <a href="C-place.aspx?id=<%# Eval("CityName") %>" class="text-decoration-none">
                            <h3><%# Eval("CityName") %></h3></a>
                            
                            
                                <p><strong><%# Eval("Description") %></strong></p>
                                <h4>Cost of trip- <%# Eval("Cost") %></h4>
                                <br />
                            </div>
               
                </div>
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