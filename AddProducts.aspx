<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="ABCSAMPLE.AddProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>


    <style> 
        body {
    text-align: center; 
    background-color:darkseagreen;
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
        <div class ="#main">
            <asp:Label ID="lblName" runat="server" style="display:inline;text-align:center;"  Text="Product Name:"></asp:Label>
            <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        
        <p>
            <asp:Label ID="lblCompany" runat="server" Text="Product Description:"></asp:Label>
            <asp:TextBox ID="txtProdDescription" runat="server" Height="28px"></asp:TextBox>
            
        </p>


        <p>
             <asp:Label ID="lblNumber" runat="server" Text="Product Price:"></asp:Label>
            <asp:TextBox ID="txtProdPrice" runat="server"></asp:TextBox>
            
        
        
        </div>
        
        <p>
&nbsp;<asp:Calendar ID="UserCalendarDate" runat="server" Width="994px"></asp:Calendar>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                    <asp:BoundField DataField="DateSelected" HeaderText="DateSelected" SortExpression="DateSelected" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [ProductDescription], [ProductPrice], [DateSelected] FROM [Products]"></asp:SqlDataSource>
        </p>
        <p>
        
        <asp:Button ID="btnPopulate" runat="server" Text="Save" ToolTip="S" OnClick="btnPopulate_Click" />
        
        </p>
        
        <p>
            <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" Width="155px" />
        </p>
        
    </form>
</body>
</html>