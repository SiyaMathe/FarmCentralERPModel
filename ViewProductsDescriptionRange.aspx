<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProductsDescriptionRange.aspx.cs" Inherits="ABCSAMPLE.ViewProductsDescriptionRange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style> 
        body {
    text-align: center; 
    background-color: honeydew;
}

#main {
    margin-left: auto;
    margin-right: auto;
    text-align: left; 
    width: 100%;       
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProductDescription" DataValueField="ProductDescription">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductName], [ProductDescription] FROM [Products]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                <asp:BoundField DataField="FarmerID" HeaderText="FarmerID" SortExpression="FarmerID" />
                <asp:BoundField DataField="DateSelected" HeaderText="DateSelected" SortExpression="DateSelected" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductID], [ProductPrice], [FarmerID], [DateSelected], [ProductName] FROM [Products] WHERE ([ProductDescription] = @ProductDescription)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="ProductDescription" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btnButton" runat="server" OnClick="btnButton_Click" Text="Logout" />
    </form>
</body>
</html>
