<%@ Page Title="" Language="C#" MasterPageFile="~/form.Master" AutoEventWireup="true" CodeBehind="Themgiay.aspx.cs" Inherits="web_ban_giay.Themgiay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row_themgiay">
        <div class="boxcenter">
            <div class="form-group">
                Danh mục:
            <asp:DropDownList ID="ddloai" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="form-group">
                Tên Giày:
            <asp:TextBox ID="txttengiay" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                Giá:
            <asp:TextBox ID="txtgia" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                Ngày cập nhật:
            <asp:Calendar ID="clngaycapnhat" runat="server"></asp:Calendar>
            </div>
            <div class="form-group">
                Hình:
            <asp:FileUpload ID="Fhinh" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Button ID="btxuly" runat="server" Text="Thêm mới" CssClass="btn btn-info" OnClick="btxuly_Click" />
            </div>
            <div class="form-group">
                <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
