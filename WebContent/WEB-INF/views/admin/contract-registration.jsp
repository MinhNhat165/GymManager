<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./head.jsp"%>
</head>
<body>
	<!-- ======= Header ======= -->
	<%@include file="./header.jsp"%>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<%@include file="./sidebar.jsp"%>
	<!-- End Sidebar-->
	<main id="main" class="main">
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body pb-0">
							<h5 class="card-title">Danh sách thông tin đăng ký</h5>

							<!-- Table with stripped rows -->
							<table class="table" id="my-data-table">
								<thead>
									<tr>
										<th scope="col" class="col-1">Mã</th>
										<th scope="col" class="col-2">Tên khách hàng</th>
										<th scope="col" class="col-2">Người đăng ký</th>
										<th scope="col" class="col-2">Ngày đăng ký</th>
										<th scope="col" class="col-2">Trạng thái</th>
										<th scope="col" class="text-center col-3">Thao tác</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="r" items="${registerList}">
										<tr>
											<td>${r.registerId}</td>
											<td>${r.customer.name}</td>
											<td>${r.account.username}</td>
											<td>${r.registerDate}</td>

											<td class="account-state"><c:if test="${r.status == 0}">
													<span class="badge rounded-pill bg-danger">Chưa
														thanh toán</span>
												</c:if> <c:if test="${r.status == 1}">
													<span class="badge rounded-pill bg-success">Đã thanh
														toán</span>
												</c:if></td>

											<td class="text-center"><a
												href="admin/customer/update/${c.customerId}.htm"><button
														class="btn btn-outline-warning btn-light btn-sm"
														title="Chỉnh sửa">
														<i class="fa-solid fa-pen-to-square"></i>
													</button> </a> <a href="admin/customer/detail/${c.customerId}.htm">
													<button class="btn btn-outline-info btn-light btn-sm"
														title="Chi tiết" data-bs-toggle="modal"
														data-bs-target="#detail" data-bs-placement="top">
														<i class="fa-solid fa-circle-exclamation"></i>
													</button>
											</a>
												<button class="btn btn-secondary disabled btn-sm"
													title="Lập hoá đơn">
													<i class="fa-light fa-ballot"></i>
												</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<!-- End Table with stripped rows -->
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- end table detail -->
	</main>
	<!-- End #main -->
	<!-- common script -->
	<%@include file="./script.jsp"%>
	<script type="text/javascript">
      $(document).ready(function () {
        $(
          "#my-data-table_filter",
        ).append(` <div class="search-bar-table d-flex align-items-stretch">
                      <div class="position-relative">
                          <button type="button" class="btn btn-primary btn-filter" data-bs-toggle="collapse" data-bs-target="#filter-block">
                              <i class="fa-regular fa-filter"></i>
                              <span class="text-white"></span>
                          </button>
                          <!-- filter table -->
                          <div id="filter-block" class="card position-absolute end-100 top-0 collapse" style="z-index: 100; min-width: 26rem;">
                          <div class="card-header py-2 text-secondary bg-info text-black fs-6">Bộ lọc</div>
                              <div class="card-body">
                                  <form class="row g-3 mt-1" id="form-filter">
                                      <div class="col-12">
                                          <label for="input-birthday" class="form-label">Ngày đăng ký</label>

                                          <div class="col-12 d-flex gap-1 justify-content-around align-items-stretch">
                                              <div class="input-group">
                                                  <input id="input-birthday" type="date" class="form-control" aria-label="input-birthday" aria-describedby="basic-addon1" />
                                              </div>
                                              <button type="button" class="btn btn-primary btn-sm btn-range-filter">
                                                  Đến
                                              </button>

                                              <div class="input-group d-none range-filter-right">
                                                  <input id="input-birthday-right" type="date" class="form-control" aria-label="input-birthday" aria-describedby="basic-addon1" />
                                              </div>
                                          </div>
                                      </div>
                                      <div class="col-md-12">
                                          <label for="status" class="form-label">Trạng thái</label>
                                          <div class="col-md-12 d-flex">
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="status" id="filter-allStatus" value="" checked />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-allStatus">
                                                      Tất cả
                                                  </label>
                                              </div>
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="status" id="filter-status-0" value="0" />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-status-0">
                                                      Đã thanh toán
                                                  </label>
                                              </div>
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="status" id="filter-status-1" value="1" />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-status-1">
                                                      Chưa thanh toán
                                                  </label>
                                              </div>
                                          </div>
                                      </div>
                                  </form>
                              </div>
                              <div class="card-footer py-2 text-end">
                                  <button type="submit" form="form-filter" class="btn btn-primary">
                                      Lọc
                                  </button>
                                  <button type="reset" class="btn btn-secondary">
                                      Đặt lại
                                  </button>
                              </div>
                          </div>
                      </div>
                  </div>
                  `);

        $(".btn-filter").click(function () {
          $(".filter-block").toggleClass("show-flex");
        });

        $(".personal-chosen").click(function () {
          $("#input-class").val("0");
        });
      });
    </script>
</body>
</html>