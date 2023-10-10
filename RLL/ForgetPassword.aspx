<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="RLL.ForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
       <div class ="row">
           <div class ="col-md-6 mx-auto">
               <br>
               <div class ="card">
                   <div class ="card-body">
                       
                       <div class ="row">
                           <div class="col">
                               <center>
                                   <img src="imgs/usericon.png" / width="130" height="130">

                               </center>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               <center>
                                   <h3>User Login</h3>

                               </center>
                           </div>
                       </div>

                        <div class ="row">
                           <div class="col">
                               <hr>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               <label>User ID</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="UserId" runat="server" placeholder="User ID"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User ID is Required" ControlToValidate="UserId" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UserId" ErrorMessage="UserId must contain atleast 3 characters and atleast 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*\d)(?=.*[a-zA-Z].*[a-zA-Z].*[a-zA-Z]).{3,}$"></asp:RegularExpressionValidator>
                               </div>                               

                               <label>Contact Number</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="ContactNumber" runat="server" placeholder="Contact Number"></asp:TextBox>
                                   
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="ContactNumber" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ContactNumber" ErrorMessage="Contact number must only contain 10 digits" ForeColor="#CC0000" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                               </div>
                               
                               <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                               <label>New Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="NewPassword" runat="server" placeholder="Password" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                                    <asp:CheckBox ID="pass" runat="server" Text=" Show Password" onclick="showpass(this)" />
                                   <script type="text/javascript">
                                       function showpass(check_box) {
                                           var spass = document.getElementById("NewPassword");
                                           if (check_box.checked)
                                               spass.setAttribute("Type", "Text");
                                           else
                                               spass.setAttribute("Type", "Password");
                                       }
                               </script>

                                   
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is Required" ControlToValidate="NewPassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="NewPassword" ErrorMessage="Password must contain atleast 6 characters including atleast 1 special character and 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-zA-Z]{3,})(?=.*\d)(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).{6,}$"></asp:RegularExpressionValidator>
                               </div>
                               
                                <%--<div class="form-group">
                                    <asp:Button class="btn btn-success w-100 btn-lg" ID="Button1" runat="server" Text="Login"  />
                               </div>--%>
                               

                               <div class="form-group">
                                   <asp:Button ID="Button1" class="btn btn-primary w-100 btn-lg" runat="server" Text="Update" OnClick="Button1_Click" />
                                  
                               </div>
                               <br>

                   </div>
               </div>

           </div>
           
        
    
        </div>

               <a href="homepage.aspx" style="text-decoration:none"><< Back to Home</a><br><br><br><br>

        </div>

           
    
      </div>
    </div>
</asp:Content>
