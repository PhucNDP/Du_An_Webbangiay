<%@ Page Title="" Language="C#" MasterPageFile="~/form.Master" AutoEventWireup="true" CodeBehind="xemhang.aspx.cs" Inherits="web_ban_giay.xemhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Loại Giày:
    <asp:DropDownList ID="Dd1" runat="server" DataSourceID="sqlloai" DataTextField="TenLoai" DataValueField="MaLoai" AutoPostBack="true">
        <asp:ListItem Text="Tất cả" Value="0" />
    </asp:DropDownList>
    <div class="row">
        <asp:Repeater ID="rptGiay" runat="server" DataSourceID="Sqlgiay">
            <ItemTemplate>
                <div class="container col-md-3 col-sm-6 item ">
                    <div class="i">
                        <a href="xemthongtin.aspx">
                            <img src='<%# Eval("Hinh", "Uploads/hinh_san_pham/{0}") %>' />
                        </a>
                    </div>
                    <div class="t">
                        <asp:Label ID="lbTenGiay" runat="server" Text='<%# Eval("TenGiay") %>'></asp:Label>
                        <br></br>
                        Giá bán:
                        <asp:Label ID="lbGiaBan" runat="server" Text='<%# Eval("Gia", "{0: #,##0} Đồng") %>'></asp:Label>
                        <br></br>
                        <asp:Button  ID="Button1" runat="server" Text="Đặt hàng" CssClass="btn btn-danger" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>




    <asp:SqlDataSource ID="sqlloai" runat="server" ConnectionString="<%$ ConnectionStrings:BangiayDBConnectionString %>" SelectCommand="SELECT * FROM [LoaiGiay]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="Sqlgiay" runat="server" ConnectionString="<%$ ConnectionStrings:BangiayDBConnectionString %>" SelectCommand="SELECT * FROM [Giay] WHERE ([MaLoai] = @MaLoai)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Dd1" Name="MaLoai" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
