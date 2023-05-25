<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFarmers.aspx.cs" Inherits="ABCSAMPLE.AddFarmers" %>

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
        <div class ="#main">
            <asp:Label ID="lblName" runat="server" style="display:inline;text-align:center;"  Text="Name:"></asp:Label>
            <asp:TextBox ID="txtFarmerName" runat="server"></asp:TextBox>
        
        <p>
            <asp:Label ID="lblCompany" runat="server" Text="Farmer Company:"></asp:Label>
            <asp:TextBox ID="txtFarmerCompany" runat="server" Height="28px"></asp:TextBox>
            
        </p>
        <p>
             <asp:Label ID="lblNumber" runat="server" Text="Contact Number:"></asp:Label>
            <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox>
            
        </p>
          <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        
        <p>
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            
        </p>
        </div>
        
        <asp:Button ID="btnPopulate" runat="server" Text="Save" ToolTip="S" OnClick="btnPopulate_Click" />
        
        <p>
            <asp:Button ID="btnViewProducts" runat="server" OnClick="btnViewProducts_Click" style="margin-left: 0px" Text="View Products" Width="160px" />
        </p>
        
    </form>
</body>
</html>
