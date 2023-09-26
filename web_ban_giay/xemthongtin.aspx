<%@ Page Title="" Language="C#" MasterPageFile="~/form.Master" AutoEventWireup="true" CodeBehind="xemthongtin.aspx.cs" Inherits="web_ban_giay.xemthongtin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="card">
            <div class="container-fliud">
                <div class="wrapper row">
                    <div class="preview col-md-6">
                        <div class="preview-pic tab-content">
                            <div class="tab-pane active" id="pic-1">
                                <img src="Uploads/Hinh_San_Pham/jdden.jpg" alt="">
                            </div>
                            <div class="tab-pane" id="pic-2">
                                <img src="Uploads/Hinh_San_Pham/as.jpg" alt="">
                            </div>
                            <div class="tab-pane" id="pic-3">
                                <img src="Uploads/Hinh_San_Pham/ht.jpg" alt="">
                            </div>
                            <div class="tab-pane" id="pic-4">
                                <img src="Uploads/Hinh_San_Pham/cm.jpg" alt="">
                            </div>
                            <div class="tab-pane" id="pic-5">
                                <img src="Uploads/Hinh_San_Pham/da.jpg" alt="">
                            </div>
                        </div>
                        <ul class="preview-thumbnail nav nav-tabs">
                            <li class="active"><a data-target="#pic-1" data-toggle="tab">
                                <img src="Uploads/Hinh_San_Pham/jdden.jpg" alt=""></a>
                            </li>
                            <li><a data-target="#pic-2" data-toggle="tab">
                                <img src="Uploads/Hinh_San_Pham/as.jpg" alt=""></a>
                            </li>
                            <li><a data-target="#pic-3" data-toggle="tab">
                                <img src="Uploads/Hinh_San_Pham/ht.jpg" alt="e"></a>
                            </li>
                            <li><a data-target="#pic-4" data-toggle="tab">
                                <img src="Uploads/Hinh_San_Pham/cm.jpg" alt=""></a>
                            </li>
                            <li><a data-target="#pic-5" data-toggle="tab">
                                <img src="Uploads/Hinh_San_Pham/tc.jpg" alt=""></a>
                            </li>
                        </ul>
                    </div>
                    <div class="details col-md-6">
                        <h3 class="product-title">Giày Nike</h3>
                        <div class="rating">
                            <div class="stars">
                                <span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span>
                            </div>
                            <span class="review-no">123 đánh giá</span>
                        </div>
                        <p class="product-description">Giày cao gót nữ MWC NUSD- 2888 sử dụng chất liệu da tổng hợp bền đẹp, lớp lót giày mềm mại cực kỳ êm chân </p>
                        <h4 class="price">Giá bán: 700.000 đ</h4>
                        <p class="vote">
                            <strong>91%</strong> of người mua hài lòng với sản phẩm này <strong>(87 bình chọn)</strong>
                        </p>
                        <h5 class="sizes">Kích cỡ: <span class="size" data-toggle="tooltip" title="small">35</span> <span class="size" data-toggle="tooltip" title="medium">36</span> <span class="size" data-toggle="tooltip" title="large">37</span> <span class="size" data-toggle="tooltip" title="xtra large">38</span>
                        </h5>
                        <h5 class="colors">Màu: <span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span><span class="color green"></span><span class="color blue"></span>
                        </h5>
                        <div class="action">
                            <a href="#" target="_blank">
                                <button class="add-to-cart btn btn-default" type="button">MUA NGAY</button>
                            </a><a href="#" target="_blank">
                                <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
