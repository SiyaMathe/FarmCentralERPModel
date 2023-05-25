<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProductsDataRange.aspx.cs" Inherits="ABCSAMPLE.ViewProductsDataRange" %>

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
        <div class ="#main">
            <asp:Label ID="lblStartDate" runat="server" style="display:inline;text-align:center;"  Text="Start Date:"></asp:Label>
            <asp:TextBox ID="txtStartDate" TextMode="Date" runat="server"></asp:TextBox>
        
        <p>
            <asp:Label ID="lblEndDate" runat="server" Text="End date:"></asp:Label>
            <asp:TextBox ID="txtEndDate" TextMode="Date" runat="server" Height="28px"></asp:TextBox>
            
        </p>
       
        </div>
        
        <asp:Button ID="btnSearchBetweenUserRange" runat="server" Text="Search" ToolTip="S" OnClick="btnSearchBetweenUserRange_Click"  />
        
        <p>
            <asp:Label ID="lblRangeStatus" runat="server" Text="Range"></asp:Label>
        </p>
        
        <asp:GridView ID="GridViewProducts" runat="server">
        </asp:GridView>
        
        <asp:Button ID="btnFilterDescriptionRange" runat="server" OnClick="btnFilterDescriptionRange_Click" style="margin-left: 0px" Text="Filter Through Description" />
        <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" Width="293px" />
        
    </form>
</body>
</html>
