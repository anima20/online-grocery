<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="palceorder.aspx.cs" Inherits="project.palceorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 433px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            width: 46px;
        }
        .auto-style4 {
            margin-left: 0px;
            margin-bottom: 2px;
        }
        .auto-style5 {
            width: 153px;
        }
        .auto-style6 {
            width: 153px;
            height: 14px;
        }
        .auto-style7 {
            width: 46px;
            height: 14px;
        }
        .auto-style8 {
            margin-left: 7px;
            margin-bottom: 0px;
        }
        .auto-style9 {
            margin-right: 0px;
        }
        .auto-style10 {
            width: 433px;
            height: 83px;
        }
        .auto-style11 {
            margin-bottom: 0px;
        }
        .auto-style12 {
            width: 433px;
            height: 46px;
        }
        .auto-style13 {
            width: 433px;
            height: 47px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            <table align="center" style="margin-top:50px ; width:525px ; height:563px;" bgcolor="Darkcyan">
                <tr>
                    <td class="auto-style1" colspan="2" align="center" style="vertical-align:top">
                        <asp:Label ID="Label1" runat="server" Text="Card Details" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td  colspan="2" align="center" >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Empty" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Frist Name should me characters" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="190px" placeholder="First Name" CssClass="auto-style9" OnTextChanged="TextBox1_TextChanged" >
                        </asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" placeholder="Last Name" CssClass="auto-style2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is Empty" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Last Name should me characters" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                
                </tr>
                <tr>
                    <td class="auto-style10" colspan="2" align="center" >
                        <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="2px" ImageUrl="~/images/payment.png" Width="438px" CssClass="auto-style11" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2" align="center">
                        <asp:Label ID="Label2" runat="server" Text="Card Number" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2" align="center" style="vertical-align:top">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Card Number must be of 16 digits" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Card Number is Empty" ControlToValidate="TextBox3" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="435px" placeholder="16 Digits" style="margin-left:-20px">
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" align="center">
                        <asp:Label ID="Label3" runat="server" Text="Expiry Date" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3"  align="center">
                        <asp:Label ID="Label4" runat="server" Text="CVV" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" align="center" style="vertical-align:top">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Expiry Date is Empty" ControlToValidate="TextBox4" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="43px" Width="183px" placeholder="MMYY(Eg:091999)" CssClass="auto-style4" OnTextChanged="TextBox4_TextChanged" style="margin-left:30px"></asp:TextBox>
                    </td >
                    <td align="center" style="vertical-align:top" class="auto-style7">
                        <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="41px" Width="181px" placeholder="3 Digits" CssClass="auto-style8" style="margin-left:-40px ; margin-right:30px">
                        </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="cvv is Empty" ControlToValidate="TextBox5" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="cvv Number must be of 3 Digits" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="[0-9]{3}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" align="center" colspan="2" style="vertical-align:top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address is Empty" ControlToValidate="TextBox6" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="435px" placeholder="Billing Address" TextMode="MultiLine" style="margin-left:-15px">
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Black" BorderColor="White" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="44px" Width="188px" OnClick="Button1_Click"  />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="true" ForeColor="Red" HeaderText="fix the following errors" /> 
                        </td>
                </tr>
                <tr>
                    <td  colspan="2">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/addtocart.aspx">previous Page</asp:HyperLink>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/home.aspx">Home Page</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
