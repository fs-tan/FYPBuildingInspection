<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangeProfilePicture.aspx.cs" Inherits="BuildingInspection.ChangeProfilePicture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login">
        <strong>Change Profile Picture</strong>
        <asp:Image ID="Image1" runat="server" Height="10em" ImageAlign="Middle"/>
        <br />
        <br />

        <div style="margin-left:10%">
        <asp:FileUpload ID="fileUpload_Profilepicture" runat="server" accept=".png,.jpg,.jpeg,.gif" class="btn btn-default"/>
        </div>
            &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP (3) Product.productName, Product.productID, Product.productImage FROM [Order] INNER JOIN OrderDetail ON [Order].orderID = OrderDetail.orderID INNER JOIN Product ON OrderDetail.productID = Product.productID WHERE ([Order].orderBuyer = @userID) AND PRODUCTNAME NOT LIKE '%N/A%' ORDER BY [Order].orderDate DESC">
        <SelectParameters>
            <asp:SessionParameter Name="userID" SessionField="userID" />
        </SelectParameters>
        </asp:SqlDataSource>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Change Image" OnClick="Button1_Click" class="btn btn-default"/>
    </div>
</asp:Content>
