<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="RLL.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #F0F0F0;
            background-image: url('https://img.freepik.com/free-vector/realistic-travel-background-with-elements_52683-77784.jpg?w=996&t=st=1696665648~exp=1696666248~hmac=b736a406891d53ddf59b1a81dda0d6d8f3919cca6281eb67717dcb5298a2fccd');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">
       <div class ="row">
           
           <div class ="col-md-6" style="margin-left:330px;">
               <br>
               
               <div class ="card">
                   <div class ="card-body">
                       
                       <div class ="row">
                           <div class="col">
                               <center>
                                   <img src="imgs/usericon.png" / width="150" height="150">

                               </center>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               <center>
                                   <h3>Your Profile</h3>
                                                                   
                               </center>
                           </div>
                       </div>                      

                        <div class ="row">
                           <div class="col">
                               <hr>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col-md-6">
                              <label>First Name</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="FirstName" runat="server" placeholder="First Name"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="FirstName" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="The name must be between 3 and 15 characters long" ForeColor="#CC0000" ValidationExpression="^([\S\s]{3,15})$"></asp:RegularExpressionValidator>
                               </div>
                           </div>

                           <div class="col-md-6">
                              <label>Last Name</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="LastName" runat="server" placeholder="Last Name"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="LastName" ForeColor="#CC0000"></asp:RequiredFieldValidator>

                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="LastName" ErrorMessage="The name must be between 1 and 15 characters long" ForeColor="#CC0000" ValidationExpression="^([\S\s]{1,15})$"></asp:RegularExpressionValidator>
                               </div>
                           </div>
                       </div>
                       

                       <div class ="row">
                           <div class="col-md-6">
                              <label>Email ID</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Email" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Id is required" ControlToValidate="Email" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Email must contain @ and ." ForeColor="#CC0000" ValidationExpression="^[^@]+@[^@]+\.[^@]+$"></asp:RegularExpressionValidator>
                               </div>
                           </div>

                           <div class="col-md-6">
                              <label>Contact Number</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="ContactNumber" runat="server" placeholder="Contact Number"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact Number is required" ControlToValidate="ContactNumber" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="ContactNumber" ErrorMessage="Contact number must only contain 10 digits" ForeColor="#CC0000" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                               </div>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               

                               <label>Date of Birth</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="DOB" runat="server" placeholder="Date of Birth" TextMode="DateTime" ></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="DOB is Required" ControlToValidate="Dob" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                               </div>
                               

                               <div class ="row">
                                   <center>
                                       <div class="col">
                                           <span class="badge rounded-pill text-bg-info text-white">Login Credentials</span>
                                       </div>
                                   </center>
                                   
                               </div>
                               

                               
                           <div class="col-md-6 w-100">
                              <label>User ID</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="UserId" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>                                   
                               </div>
                           </div>
                           <br>

                           <div class="col-md-6 w-100">
                             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                               <label>Old Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Password" runat="server" placeholder="Password" ClientIDMode="Static" ReadOnly="True"></asp:TextBox>
                                           
                                   
                                    </div>
                           </div>
                            <br />
                               <div class="col-md-6 w-100">
                             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                               <label>New Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="NewPassword" runat="server" placeholder="Password" ClientIDMode="Static" ReadOnly="false"></asp:TextBox>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="NewPassword" ErrorMessage="Password must contain atleast 6 characters including atleast 1 special character and 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-zA-Z]{3,})(?=.*\d)(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).{6,}$"></asp:RegularExpressionValidator>        
                                   
                                    </div>
                           </div>
                               <br>
                               <div class="form-group">
                                   <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Update" OnClick="Button1_Click" />
                                  
                               </div>                                                                     

                               
                               
                               
                         </div>
                    </div>
                </div>       
            </div>
           <a href="homepage.aspx" style="text-decoration:none"><< Back to Home</a><br><br><br><br>
        </div>

           


      </div>
    </div>
</asp:Content>
