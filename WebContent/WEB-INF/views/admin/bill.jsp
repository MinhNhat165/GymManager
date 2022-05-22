<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<div class="pagetitle">
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Tables</li>
					<li class="breadcrumb-item active">Data</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body pb-0">
							<h5 class="card-title">Danh sách hoá đơn</h5>

							<!-- Table with stripped rows -->
							<table class="table" id="my-data-table">
								<thead>
									<tr>
										<th scope="col" class="col-1">Mã</th>
										<th scope="col" class="col-2">Khách hàng</th>
										<th scope="col" class="col-2">Ngày tạo</th>
										<th scope="col" class="col-2">Khuyến Mãi</th>
										<th scope="col" class="col-2">Tổng Tiền</th>
										<th scope="col" class="text-center col-2">Hành động</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>HD000001</td>
										<td>Nguyễn Thị Khánh Vi</td>
										<td>23/04/2022</td>
										<td>10%</td>
										<td>2.000.000 VND</td>
										<td class="text-center">
											<button class="btn btn-outline-warning btn-light btn-sm"
												data-bs-toggle="modal" data-bs-target="#create"
												title="Chỉnh sửa">
												<i class="fa-solid fa-pen-to-square"></i>
											</button>
											<button class="btn btn-outline-info btn-light btn-sm"
												title="Chi tiết" data-bs-toggle="modal"
												data-bs-target="#detail" data-bs-placement="top">
												<i class="fa-solid fa-circle-exclamation"></i>
											</button>
										</td>
									</tr>
								</tbody>
							</table>

							<!-- End Table with stripped rows -->
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- modal  -->

		<div class="modal fade" id="create" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header bg-primary text-white px-3 py-2">
						<h5 class="modal-title">Thêm mới hoá đơn</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form class="row g-3">
							<div class="col-md-12">
								<label for="input-id" class="form-label">Mã:
									<span class="employeeId text-danger">HD000002</span>
								</label>
							</div>
							<div class="col-md-12">
								<label for="input-custommer" class="form-label">Khách
									Hàng</label>
								<div class="col-12">
									<select id="input-custommer" class="form-select">
										<option selected>Chọn</option>
										<option>...</option>
									</select>
								</div>
							</div>

							<div class="col-md-12">
								<label for="input-dk" class="form-label">Đăng kí</label>
								<div class="col-12">
									<select id="input-dk" disabled class="form-select">
										<option selected>Chọn</option>
										<option>...</option>
									</select>
								</div>
							</div>

							<div class="col-md-12">
								<label for="input-promotion" class="form-label">Khuyến
									mãi</label>
								<div class="col-12">
									<select id="input-promotion" class="form-select">
										<option selected>Chọn</option>
										<option>...</option>
									</select>
								</div>
							</div>

							<div class="col-md-12">
								<label for="input-package-price" class="form-label">Tổng
									tiền</label>
								<div class="input-group col-md-6 mb-3">
									<input disabled id="iinput-package-price" type="number"
										class="form-control text-success" value="5000000"
										aria-label="input-package-price"
										aria-describedby="basic-addon1" /> <span
										class="input-group-text" id="basic-addon1">VND</span>
								</div>
							</div>

							<div class="text-end mt-3">
								<button type="submit" class="btn btn-primary">Xác nhận
								</button>
								<button type="button" class="btn btn-secondary close-form"
									data-bs-dismiss="modal">Đóng</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- detail -->
		<div class="modal fade" id="detail" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header bg-primary text-white px-3 py-2">
						<h5 class="modal-title">Thông tin nhân viên</h5>
						<button type="button" class="btn-close close-form"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>

					<div class="modal-body">
						<div class="row g-3 d-flex flex-column gap-4 pt-4">
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Mã hoá đơn</div>
								<div class="col-lg-8 col-md-8">HD000002</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Mã đăng ký</div>
								<div class="col-lg-8 col-md-8">
									TTDK0002 <i class="fa-solid fa-circle-info text-info"
										style="cursor: pointer"></i>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Tên khách hàng</div>
								<div class="col-lg-8 col-md-8">Nguyễn Thị Khánh Vi</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Người tạo</div>
								<div class="col-lg-8 col-md-8">Nguyễn Minh Nhật</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Ngày tạo</div>
								<div class="col-lg-8 col-md-8">30/11/2001</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Khuyến mãi</div>
								<div class="col-lg-8 col-md-8">10%</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Tổng tiền</div>
								<div class="col-lg-8 col-md-8">50000000đ</div>
							</div>

							<div class="text-end mt-3">
								<button type="button" class="btn btn-primary"
									data-bs-target="#create" data-bs-toggle="modal">
									Chỉnh sửa</button>
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Đóng</button>
							</div>
						</div>
						<!-- End Multi Columns Form -->
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- End #main -->
	<!-- common script -->
	<%@include file="./script.jsp"%>
	<script type="text/javascript">
      $(document).ready(function () {
        $(
          "#my-data-table_filter",
        ).append(`  <div class="search-bar-table d-flex align-items-stretch">
                      <div class="position-relative">
                        <button type="button" class="btn btn-primary btn-filter" data-bs-toggle="collapse" data-bs-target="#filter-block">
                              <i class="fa-regular fa-filter"></i>
                              <span class="text-white"></span>
                        </button>
                        <!-- filter table -->
                        <div id="filter-block" class="card position-absolute end-100 top-0 collapse" style="z-index: 100; min-width: 22rem;">
                         <div class="card-header py-2 text-secondary bg-info text-black fs-6">Bộ lọc</div>
                           <div class="card-body">
                          <form class="row g-3 mt-1" id="form-filter">
                            <div class="col-12">
                              <label for="input-birthday" class="form-label"
                                >Ngày Tạo</label
                              >

                              <div
                                class="col-12 d-flex gap-1 justify-content-around align-items-stretch"
                              >
                                <div class="input-group">
                                  <input
                                    id="input-package-limit-time"
                                    type="date"
                                    class="form-control"
                                    aria-label="Username"
                                    aria-describedby="basic-addon1"
                                  />
                                </div>
                                <button
                                  type="button"
                                  class="btn btn-primary btn-sm btn-range-filter"
                                >
                                  Đến
                                </button>

                                <div
                                  class="input-group d-none range-filter-right"
                                >
                                  <input
                                    id="input-package-limit-time"
                                    type="date"
                                    class="form-control"
                                    aria-label="Username"
                                    aria-describedby="basic-addon1"
                                  />
                                </div>
                              </div>
                            </div>
                            <div class="col-12">
                              <label for="input-birthday" class="form-label"
                                >Tổng tiền</label
                              >

                              <div
                                class="col-12 d-flex gap-1 justify-content-around align-items-stretch"
                              >
                                <div class="input-group">
                                  <input
                                    id="input-package-limit-time"
                                    type="number"
                                    class="form-control"
                                    aria-label="Username"
                                    aria-describedby="basic-addon1"
                                  />
                                  <span
                                    class="input-group-text"
                                    id="basic-addon1"
                                    >VND</span
                                  >
                                </div>
                                <button
                                  type="button"
                                  class="btn btn-primary btn-sm btn-range-filter"
                                >
                                  Đến
                                </button>

                                <div
                                  class="input-group d-none range-filter-right"
                                >
                                  <input
                                    id="input-package-limit-time"
                                    type="number"
                                    class="form-control"
                                    aria-label="Username"
                                    aria-describedby="basic-addon1"
                                  />
                                  <span
                                    class="input-group-text"
                                    id="basic-addon1"
                                    >VND</span
                                  >
                                </div>
                              </div>
                            </div>
                          </form>
                        </div>
                          <div class="card-footer py-2 text-end">
                            <button
                              type="submit"
                              form="form-filter"
                              class="btn btn-primary"
                            >
                              Submit
                            </button>
                            <button type="reset" class="btn btn-secondary">
                              Reset
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>`);
      });
    </script>
</body>
</html>