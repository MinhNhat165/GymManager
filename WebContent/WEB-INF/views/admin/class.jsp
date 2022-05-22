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
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body pb-0">
							<h5
								class="card-title align-items-center d-flex justify-content-between transitioning">
								Danh sách lớp tập</h5>

							<!-- Table with stripped rows -->
							<table class="table" id="my-data-table">
								<thead>
									<tr>
										<th>Mã</th>
										<th>Gói tập</th>
										<th>Huấn luyện viên</th>
										<th>Trang thái</th>
										<th>Số Người DK</th>
										<th class="text-center col-2">Hành động</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>L000001</td>
										<td>Gói tập xxx</td>
										<td>Nguyễn Minh Nhật</td>
										<td><span class="badge rounded-pill bg-success">Có
												thể đăng ký</span></td>
										<td class="account-state">20/22</td>

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
											<button class="btn btn-outline-success btn-light btn-sm"
												title="Thời khoá biểu" data-bs-toggle="modal"
												data-bs-target="#time-table" data-bs-placement="top">
												<i class="fa-regular fa-calendar-days"></i>
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
						<h5 class="modal-title">Thêm lớp tập</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form class="row g-3">
							<div class="col-md-12">
								<label for="inputName" class="form-label">Mã:
									<span class="employeeId text-danger">L0000002</span>
								</label>
							</div>
							<div class="col-md-6">
								<label for="input-package" class="form-label">Gói tập</label> <select
									id="input-package" class="form-select">
									<option selected>Chọn</option>
									<option>Gói xxx</option>
								</select>
							</div>
							<div class="col-md-6">
								<label for="input-pt" class="form-label">PT</label> <select
									id="input-pt" class="form-select">
									<option selected>Chọn</option>
									<option>Nguyễn Minh Nhật</option>
								</select>
							</div>
							<div class="col-md-6">
								<label for="input-open-register-day" class="form-label">Ngày
									mở đăng ký</label> <input type="date" class="form-control"
									id="input-open-register-day" />
							</div>
							<div class="col-md-6">
								<label for="input-close-register-day" class="form-label">Ngày
									đóng đăng ký</label> <input type="date" class="form-control"
									id="input-close-register-day" />
							</div>

							<div class="col-md-6">
								<label for="input-close-register-day" class="form-label">Ngày
									bắt đầu lớp</label> <input type="date" class="form-control"
									id="input-close-register-day" />
							</div>

							<div class="col-md-6">
								<label for="inputPhone" class="form-label">Số
									người đăng ký tối đa</label> <input type="number" class="form-control" />
							</div>
							<div>
								<button class="btn col-12 btn-outline-primary btn-light"
									type="button" data-bs-target="#time-table"
									data-bs-toggle="modal">
									<i class="bi bi-plus-circle"></i> <span class="te">Tạo
										TKB</span>
								</button>
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
						<h5 class="modal-title">Thông tin lớp tập</h5>
						<button type="button" class="btn-close close-form"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>

					<div class="modal-body">
						<div class="row g-3 d-flex flex-column gap-4 pt-4">
							<div class="row">
								<div class="col-lg-6 col-md-6 label">Mã</div>
								<div class="col-lg-6 col-md-6">NV000002</div>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 label">Gói</div>
								<div class="col-lg-6 col-md-6">Gói tập xxxxx</div>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 label">Huấn luyện viên</div>
								<div class="col-lg-6 col-md-6">Nguyễn Minh Nhật</div>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 label">Ngày mở đăng kký</div>
								<div class="col-lg-6 col-md-6">30/11/2022</div>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 label">Ngày đóng đăng ký</div>
								<div class="col-lg-6 col-md-6">30/12/2022</div>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 label">Ngày bắt đầu tập</div>
								<div class="col-lg-6 col-md-6">1/1/2023</div>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 label">Số người đăng ký</div>
								<div class="col-lg-6 col-md-6">20/22 người</div>
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
		<!-- time table -->
		<div class="modal fade" id="time-table" tabindex="-1">
			<div class="modal-dialog modal-xl modal-dialog-centered">
				<div class="modal-content">
					<section class="section">
						<div class="row">
							<div class="col-lg-12">
								<div class="card mb-0">
									<div class="card-body">
										<h5
											class="card-title align-items-center d-flex justify-content-between">
											Thời Khoá Biểu
											<div class="header-action d-flex gap-1">
												<button type="button" class="btn btn-primary"
													data-bs-target="#contract-registration-modal"
													data-bs-toggle="modal">
													Xác nhận</button>

												<div class="search-bar-table d-flex align-items-stretch">
													<div class="">
														<button type="button" class="btn btn-secondary btn-search"
															data-bs-target="#contract-registration-modal"
															data-bs-toggle="modal">
															Huỷ bỏ</button>
													</div>

													<div class="">
														<button type="button" class="btn btn-secondary btn-filter">
															Cài lại</button>
													</div>
												</div>
											</div>
										</h5>

										<!-- Table with stripped rows -->
										<from class="my-time-table">
										<div class="table-responsive">
											<table class="table table-bordered text-center">
												<thead>
													<tr class="bg-light-gray">
														<th class="text-uppercase col-1 label">Buổi</th>
														<th class="text-uppercase col-1 label">Thứ hai</th>
														<th class="text-uppercase col-1 label">Thứ ba</th>
														<th class="text-uppercase col-1 label">Thư tư</th>
														<th class="text-uppercase col-1 label">Thứ năm</th>
														<th class="text-uppercase col-1 label">Thứ sáu</th>
														<th class="text-uppercase col-1 label">Thứ bảy</th>
														<th class="text-uppercase col-1 label">Chủ nhật</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="align-middle bg-light">Sáng</td>
														<td class="td-time-table"><input type="radio"
															name="T2" id="T2-M" value="0" class="form-check-input" />
															<label for="T2-M"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T3" id="T3-M" value="0" class="form-check-input" />
															<label for="T3-M"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T4" id="T4-M" value="0" class="form-check-input" />
															<label for="T4-M"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T5" id="T5-M" value="0" class="form-check-input" />
															<label for="T5-M"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T6" id="T6-M" value="0" class="form-check-input" />
															<label for="T6-M"></label></td>

														<td class="td-time-table"><input type="radio"
															name="T7" id="T7-M" value="0" class="form-check-input" />
															<label for="T7-M"></label></td>

														<td class="td-time-table"><input type="radio"
															name="T8" id="T8-M" value="0" class="form-check-input" />
															<label for="T8-M"></label></td>
													</tr>

													<tr>
														<td class="align-middle bg-light">Chiều</td>
														<td class="td-time-table"><input type="radio"
															name="T2" id="T2-A" value="1" class="form-check-input" />
															<label for="T2-A"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T3" id="T3-A" value="0" class="form-check-input" />
															<label for="T3-A"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T4" id="T4-A" value="0" class="form-check-input" />
															<label for="T4-A"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T5" id="T5-A" value="0" class="form-check-input" />
															<label for="T5-A"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T6" id="T6-A" value="0" class="form-check-input" />
															<label for="T6-A"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T7" id="T7-A" value="0" class="form-check-input" />
															<label for="T7-A"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T8" id="T8-A" value="0" class="form-check-input" />
															<label for="T8-A"></label></td>
													</tr>

													<tr>
														<td class="align-middle bg-light">Tối</td>
														<td class="td-time-table"><input type="radio"
															name="T2" id="T2-E" value="2" class="form-check-input" />
															<label for="T2-E"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T3" id="T3-E" value="0" class="form-check-input" />
															<label for="T3-E"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T4" id="T4-E" value="0" class="form-check-input" />
															<label for="T4-E"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T5" id="T5-E" value="0" class="form-check-input" />
															<label for="T5-E"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T6" id="T6-E" value="0" class="form-check-input" />
															<label for="T6-E"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T7" id="T7-E" value="0" class="form-check-input" />
															<label for="T7-E"></label></td>
														<td class="td-time-table"><input type="radio"
															name="T8" id="T8-E" value="0" class="form-check-input" />
															<label for="T8-E"></label></td>
													</tr>
												</tbody>
											</table>
										</div>
										</from>
										<!-- End Table with stripped rows -->
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<!-- end time table -->
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
                                          <label for="input-birthday" class="form-label">Ngày sinh</label>

                                          <div class="col-12 d-flex gap-1 justify-content-around align-items-stretch">
                                              <div class="input-group">
                                                  <input id="input-birthday" type="date" class="form-control" aria-label="input-birthday" aria-describedby="basic-addon1" />
                                              </div>
                                              <button type="button" class="btn btn-primary btn-sm btn-range-filter" data-bs-toggle="collapse" data-bs-target="#input-birthday-right">
                                                  Đến
                                              </button>

                                              <div class="input-group collapse" id="input-birthday-right">
                                                  <input type="date" class="form-control" aria-label="input-birthday" aria-describedby="basic-addon1" />
                                              </div>
                                          </div>
                                      </div>

                                      <div class="col-md-12">
                                          <label for="gender" class="form-label">Giới tính</label>
                                          <div class="col-md-12 d-flex">
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="gender" id="filter-allGender" value="" checked />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-allGender">
                                                      Tất cả
                                                  </label>
                                              </div>
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="gender" id="filter-female" value="0" />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-female">
                                                      Nữ
                                                  </label>
                                              </div>
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="gender" id="filter-male" value="1" />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-male">
                                                      Nam
                                                  </label>
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
                                                      Đang làm
                                                  </label>
                                              </div>
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="status" id="filter-status-1" value="1" />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-status-1">
                                                      Đã nghỉ
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
                  </div>`);

        $(".btn-filter").click(function () {
          $(".filter-block").toggleClass("show-flex");
        });
      });
    </script>
</body>
</html>