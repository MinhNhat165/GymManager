<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="./header.jsp"%>
    <body>
        
        <%@include file="./navigation.jsp"%>

        <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">Giỏ hàng</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->
        
        <!--Basic-->
        <div class="container px-3 my-5 clearfix cart">
            <!-- Shopping cart table -->
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-bordered m-0">
                        <thead>
                          <tr>
                            <!-- Set columns width -->
                            <th class="text-center py-3 px-4 col-sp">Sản phẩm &amp; Thông tin sản phẩm</th>
                            <th class="text-right py-3 px-4 col-tt">Thành tiền</th>
                            <th class="text-center align-middle py-3 px-0 col-icon"><a href="#" class="shop-tooltip float-none text-light" title="" data-original-title="Clear cart"><i class="ino ion-md-trash"></i></a></th>
                          </tr>
                        </thead>
                        <tbody>
                
                          <tr>
                            <td class="p-4">
                              <div class="media align-items-center">
                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="d-block ui-w-40 ui-bordered mr-4" alt="">
                                <div class="media-body">
                                  <a href="#" class="d-block text-dark">Product 1</a>
                                  <small>
                                    <span class="text-muted">Color:</span>
                                    <span class="ui-product-color ui-product-color-sm align-text-bottom" style="background:#e81e2c;"></span> &nbsp;
                                    <span class="text-muted">Size: </span> EU 37 &nbsp;
                                    <span class="text-muted">Ships from: </span> China
                                  </small>
                                </div>
                              </div>
                            </td>
                            <td class="text-right font-weight-semibold align-middle p-4">$57.55</td>
                            <td class="text-center align-middle px-0"><a href="#" class="shop-tooltip close float-none text-danger" title="" data-original-title="Remove">×</a></td>
                          </tr>

                          <tr>
                            <td class="p-4">
                              <div class="media align-items-center">
                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="d-block ui-w-40 ui-bordered mr-4" alt="">
                                <div class="media-body">
                                  <a href="#" class="d-block text-dark">Product 1</a>
                                  <small>
                                    <span class="text-muted">Color:</span>
                                    <span class="ui-product-color ui-product-color-sm align-text-bottom" style="background:#e81e2c;"></span> &nbsp;
                                    <span class="text-muted">Size: </span> EU 37 &nbsp;
                                    <span class="text-muted">Ships from: </span> China
                                  </small>
                                </div>
                              </div>
                            </td>
                            <td class="text-right font-weight-semibold align-middle p-4">$57.55</td>
                            <td class="text-center align-middle px-0"><a href="#" class="shop-tooltip close float-none text-danger" title="" data-original-title="Remove">×</a></td>
                          </tr>

                          <tr>
                            <td class="p-4">
                              <div class="media align-items-center">
                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="d-block ui-w-40 ui-bordered mr-4" alt="">
                                <div class="media-body">
                                  <a href="#" class="d-block text-dark">Product 1</a>
                                  <small>
                                    <span class="text-muted">Color:</span>
                                    <span class="ui-product-color ui-product-color-sm align-text-bottom" style="background:#e81e2c;"></span> &nbsp;
                                    <span class="text-muted">Size: </span> EU 37 &nbsp;
                                    <span class="text-muted">Ships from: </span> China
                                  </small>
                                </div>
                              </div>
                            </td>
                            <td class="text-right font-weight-semibold align-middle p-4">$57.55</td>
                            <td class="text-center align-middle px-0"><a href="#" class="shop-tooltip close float-none text-danger" title="" data-original-title="Remove">×</a></td>
                          </tr>

                
                        </tbody>
                      </table>
                    </div>
                    <!-- / Shopping cart table -->
                
                    <div class="d-flex flex-wrap justify-content-between align-items-center pb-4">
                      <div class="mt-4">
                        <label class="text-muted font-weight-normal">Mã giảm giá</label>
                        <input type="text" placeholder="ABC" class="form-control">
                      </div>
                      <div class="d-flex">
                        <div class="text-right mt-4 mr-5" style="margin-right: 50px;">
                          <label class="text-muted font-weight-normal m-0">Giảm giá:</label>
                          <div class="text-large"><strong>$20</strong></div>
                        </div>
                        <div class="text-right mt-4">
                          <label class="text-muted font-weight-normal m-0">Tổng tiền:</label>
                          <div class="text-large"><strong>$1164.65</strong></div>
                        </div>
                      </div>
                    </div>
                
                    <div class="float-right">
                      <button type="button" class="btn btn-lg btn-success md-btn-flat mt-2 mr-3">Trở lại trang chủ</button>
                      <button type="button" class="btn btn-lg btn-primary mt-2">Xác nhận đăng ký</button>
                    </div>
                
                  </div>
              </div>
          </div>
        <!-- end of basic -->


        <%@include file="./footer.jsp"%>

        

        <!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
        <%@include file="./script.jsp"%>    
    </body>
</html>