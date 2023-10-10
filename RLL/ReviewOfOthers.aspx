<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReviewOfOthers.aspx.cs" Inherits="RLL.ReviewOfOthers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FeedbackId" DataSourceID="SqlDataSource1" CssClass="table table-striped">
                        <Columns>
                            <asp:BoundField DataField="FeedbackId" HeaderText="FeedbackId" InsertVisible="False" ReadOnly="True" SortExpression="FeedbackId" />
                            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                            <asp:BoundField DataField="rating" HeaderText="Rating" SortExpression="rating" />
                            <asp:BoundField DataField="comments" HeaderText="Comments" SortExpression="comments" />
                            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <img src='<%# Eval("img") %>' class="img-thumbnail" alt="Image" style="max-width: 200px; max-height: 200px;" />
            </ItemTemplate>
        </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton= "false"  />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyTravelDbConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [FeedbackId] = @original_FeedbackId AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL)) AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL)) AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL)) AND (([img] = @original_img) OR ([img] IS NULL AND @original_img IS NULL))" InsertCommand="INSERT INTO [Feedback] ([UserId], [rating], [comments], [img]) VALUES (@UserId, @rating, @comments, @img)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:MyTravelDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [UserId] = @UserId, [rating] = @rating, [comments] = @comments, [img] = @img WHERE [FeedbackId] = @original_FeedbackId AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL)) AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL)) AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL)) AND (([img] = @original_img) OR ([img] IS NULL AND @original_img IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_FeedbackId" Type="Int32" />
                            <asp:Parameter Name="original_UserId" Type="String" />
                            <asp:Parameter Name="original_rating" Type="Int32" />
                            <asp:Parameter Name="original_comments" Type="String" />
                            <asp:Parameter Name="original_img" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="UserId" Type="String" />
                            <asp:Parameter Name="rating" Type="Int32" />
                            <asp:Parameter Name="comments" Type="String" />
                            <asp:Parameter Name="img" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="UserId" Type="String" />
                            <asp:Parameter Name="rating" Type="Int32" />
                            <asp:Parameter Name="comments" Type="String" />
                            <asp:Parameter Name="img" Type="String" />
                            <asp:Parameter Name="original_FeedbackId" Type="Int32" />
                            <asp:Parameter Name="original_UserId" Type="String" />
                            <asp:Parameter Name="original_rating" Type="Int32" />
                            <asp:Parameter Name="original_comments" Type="String" />
                            <asp:Parameter Name="original_img" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>

</asp:Content>
