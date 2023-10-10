<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="RLL.UserSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
       <div class ="row">
           <div class ="col-md-8 mx-auto">
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
                                   <h3>User Registration</h3>

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
                                   <asp:TextBox CssClass="form-control" ID="Email" runat="server" placeholder="Email ID"></asp:TextBox>
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
                                   <asp:TextBox CssClass="form-control" ID="Dob" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="DOB is Required" ControlToValidate="Dob" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Dob" ErrorMessage="Age must be above 10 years" ForeColor="#CC0000" MaximumValue="2013-01-01"></asp:RangeValidator>
                               </div>
                               

                               <div class ="row">
                                   <center>
                                       <div class="col">
                                           <span class="badge rounded-pill text-bg-info text-white">Login Credentials</span>
                                       </div>
                                   </center>
                                   
                               </div>


                               <label>User ID</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="UserId" runat="server" placeholder="User ID"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="User Id is required" ControlToValidate="UserId" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="UserId" ErrorMessage="UserId must contain atleast 3 characters and atleast 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*\d)(?=.*[a-zA-Z].*[a-zA-Z].*[a-zA-Z]).{3,}$"></asp:RegularExpressionValidator>
                               </div>
                               

                             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                               <label>Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Password" runat="server" placeholder="Password" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                                           <asp:CheckBox ID="pass" runat="server" Text=" Show Password" onclick="showpass(this)" />
                                   <script type="text/javascript">
                                       function showpass(check_box) {
                                           var spass = document.getElementById("Password");
                                           if (check_box.checked)
                                               spass.setAttribute("Type", "Text");
                                           else
                                               spass.setAttribute("Type", "Password");
                                       }
                               </script>
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password is Required" ControlToValidate="Password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="Password" ErrorMessage="Password must contain atleast 6 characters including atleast 1 special character and 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-zA-Z]{3,})(?=.*\d)(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).{6,}$"></asp:RegularExpressionValidator>

                               </div>
                               

                               <label>Confirm Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="ConfirmPassword" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirm Password is Required" ControlToValidate="ConfirmPassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Password must contain atleast 6 characters including atleast 1 special character and 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-zA-Z]{3,})(?=.*\d)(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).{6,}$"></asp:RegularExpressionValidator>
                                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password must match Password" ForeColor="#CC0000"></asp:CompareValidator>
                               </div>

                               

                               <div class="form-group">
                                  <asp:Button ID="Button1" class="btn btn-success w-100 btn-lg" runat="server" Text="Sign Up" OnClick="Button1_Click"/>

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
