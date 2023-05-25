<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="ABCSAMPLE.ViewProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>


    <style> 
        body {
    text-align: center; 
    background-color: rosybrown;
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
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DropDownListFarmerIDSelection" DataTextField="FarmerID" DataValueField="FarmerID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="DropDownListFarmerIDSelection" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FarmerID], [FarmerName] FROM [Farmers]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource4" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                <asp:BoundField DataField="DateSelected" HeaderText="DateSelected" SortExpression="DateSelected" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [ProductDescription], [ProductPrice], [DateSelected] FROM [Products] WHERE ([FarmerID] = @FarmerID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="FarmerID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        <asp:Button ID="btnFilterDateRange" runat="server" Height="29px" OnClick="btnFilterDateRange_Click" Text="Filter Through Data Range" Width="374px" />
        <p>
            <asp:Button ID="btnFilterThroughProdDesription" runat="server" Height="42px" OnClick="btnFilterThroughProdDesription_Click" Text="Filter Through Product Description" />
        </p>
    </form>
</body>
</html>
