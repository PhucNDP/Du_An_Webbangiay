<%@ Page Title="" Language="C#" MasterPageFile="~/form.Master" AutoEventWireup="true" CodeBehind="timkiem-suadoi.aspx.cs" Inherits="web_ban_giay.timkiem_suadoi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <hr />
    <div class="row">
        <div class="col-md-6">
            <div class="form-inline">
                Tên Giày<asp:TextBox ID="txttengiay" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="btntracuu" runat="server" Text="Tìm" CssClass="btn btn-secondary"  />
            </div>
        </div>
        <div class="col-md-6 text-right">
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Themgiay.aspx" runat="server" CssClass="btn btn-info">Thêm giày</asp:HyperLink>
        </div>
    </div>
    <asp:GridView ID="gvGiay" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="MaGiay" DataSourceID="dsgiay" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            
            <asp:BoundField DataField="TenGIAY" HeaderText="Tên giày"  />
            <asp:BoundField DataField="Gia" HeaderText="Giá" DataFormatString="{0: #,##0} Đồng" />
            <asp:ImageField DataImageUrlField="Hinh" DataImageUrlFormatString="Uploads/hinh_san_pham/{0}" HeaderText="Ảnh giày" ControlStyle-Width="80px" ReadOnly="true">
<ControlStyle Width="60px"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="MaLoai" HeaderText="Mã loại" SortExpression="MaLoai" />
            <asp:BoundField DataField="NgayDang" HeaderText="Ngày đăng" DataFormatString="{0: dd/MM/yyyy}" />
            <asp:BoundField DataField="SoLuotXem" HeaderText="Số lượt xem" SortExpression="SoLuotXem" />
            <asp:CommandField ShowEditButton="true" EditText="Sửa" UpdateText="Ghi" CancelText="Không" ButtonType="Button" ControlStyle-CssClass="btn btn-success" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btxoa" runat="server" Text="Xoá" CommandName="Delete" CssClass="btn btn-danger" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="dsgiay" runat="server" ConnectionString="<%$ ConnectionStrings:BangiayDBConnectionString %>" DeleteCommand="DELETE FROM [Giay] WHERE [MaGiay] = @MaGiay" InsertCommand="INSERT INTO [Giay] ([TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (@TenGIAY, @Gia, @Hinh, @MaLoai, @NgayDang, @SoLuotXem)" SelectCommand="SELECT * FROM [Giay] WHERE ([TenGIAY] LIKE '%' + @TenGIAY + '%')" UpdateCommand="UPDATE [Giay] SET [TenGIAY] = @TenGIAY, [Gia] = @Gia, [Hinh] = @Hinh, [MaLoai] = @MaLoai, [NgayDang] = @NgayDang, [SoLuotXem] = @SoLuotXem WHERE [MaGiay] = @MaGiay">
        <DeleteParameters>
            <asp:Parameter Name="MaGiay" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenGIAY" Type="String" />
            <asp:Parameter Name="Gia" Type="Double" />
            <asp:Parameter Name="Hinh" Type="String" />
            <asp:Parameter Name="MaLoai" Type="Int32" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
            <asp:Parameter Name="SoLuotXem" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txttengiay" Name="TenGIAY" DefaultValue=" " PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenGIAY" Type="String" />
            <asp:Parameter Name="Gia" Type="Double" />
            <asp:Parameter Name="Hinh" Type="String" />
            <asp:Parameter Name="MaLoai" Type="Int32" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
            <asp:Parameter Name="SoLuotXem" Type="Int32" />
            <asp:Parameter Name="MaGiay" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
