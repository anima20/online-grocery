<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pdf.aspx.cs" Inherits="project.pdf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Panel ID="Panel1" runat="server" style="margin-left:300px ; margin-top:50px;width:300px">
                <table border="1" style="font-size:20px ; width:700px">
                    <tr>
                        <td style="text-align:center">
                            <h2 style="text-align:center">Retail Invoice</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>Order No:
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />
                            Order Date:
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td>Buyer Address:
                                        <br />
                                        <br />
                                        <asp:Label ID="Label3" runat="server" Text="Label" Width="450px"></asp:Label>
                                    </td>
                                    
                                    <td >Seller Address:
                                        <br />
                                        <br />
                                        R.L Vatika appartment , Salimpur Ahaara, Patna , Bihar.. </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>Grand Total:
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="950px">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="SNo">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="p_id" HeaderText="Product Id">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="pr_name" HeaderText="Product Name">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="p_qty" HeaderText="Quantity">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="p_price" HeaderText="Product Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="p_totalprice" HeaderText="Total Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr align="right" >
                        
                        <td>Grand Total:
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">This is computer generated invoice and it is done by me for project work. </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Button ID="Button1" runat="server" Text="Download Pdf" OnClick="Button1_Click" style="height:30px ; margin-left:45% ; margin-top:20px" />&nbsp&nbsp&nbsp&nbsp&nbsp
            <a href="home.aspx" style="font-weight:bold ; font-size:25px">Home Page</a>
        </div>
    </form>
</body>
</html>
