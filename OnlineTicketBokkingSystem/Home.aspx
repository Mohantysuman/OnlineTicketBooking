<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineTicketBokkingSystem.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .gridView{
            margin-top: 15%;
        }
        .myalert{
                visibility:visible;
            }
         .login__submit:active,
            .login__submit:focus,
            .login__submit:hover {
                border-color: #6A679E;
                outline: none;
            }

        .button__icon {
            font-size: 24px;
            margin-left: auto;
            color: #7875B5;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div runat="server" style="visibility:hidden" id="alertBoxSuccss" class="alert alert-success myalert" role="alert">
                            
                        </div>
        <div>

            <asp:GridView Width="80%" CssClass="gridView" ID="gbMovies" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="MovieName" HeaderText="Movie Name" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <br />
             <asp:Button ID="btnCreateBooking" class="button login__submit" Width="80%" runat="server" OnClick="btnCreateBooking_Click" Text="Book a Movie" />
        </div>
    </form>
</body>
</html>
