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
		<section class="section">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body pb-0">
							<h5 class="card-title">Danh sách gói tập</h5>

							<!-- Table with stripped rows -->
							<table class="table" id="my-data-table">
								<thead>
									<tr>
										<th scope="col" class="col-1">Mã</th>
										<th scope="col" class="col-1">Tên gói</th>
										<th scope="col" class="col-1">Loại gói</th>
										<th scope="col" class="col-1">Thời hạn</th>
										<th scope="col" class="col-1">Giá gói</th>
										<th scope="col" class="col-1">Trạng thái</th>

										<th scope="col" class="text-center col-1">Hành động</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>GT00001</td>
										<td>Gói yoga cơ bản</td>
										<td>Yoga</td>
										<td>6 tháng</td>
										<td>200000</td>
										<td class="account-state"><span
											class="badge rounded-pill bg-success">Kich hoạt</span></td>

										<td class="text-center">
											<button class="btn btn-outline-warning btn-light btn-sm"
												data-bs-toggle="modal" data-bs-target="#create"
												title="Chỉnh sửa">
												<i class="fa-solid fa-pen-to-square"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>GT00001</td>
										<td>Gói yoga cơ bản</td>
										<td>Yoga</td>
										<td>6 tháng</td>
										<td>200000</td>
										<td class="account-state"><span
											class="badge rounded-pill bg-secondary">Khoá</span></td>

										<td class="text-center">
											<button class="btn btn-outline-warning btn-light btn-sm"
												data-bs-toggle="modal" data-bs-target="#create"
												title="Chỉnh sửa">
												<i class="fa-solid fa-pen-to-square"></i>
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
						<h5 class="modal-title">Thêm mới gói tập</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form class="row g-3" id="form-package">
							<div class="col-md-12">
								<label class="form-label">Mã: <span
									class="employeeId text-danger">GT000002</span></label>
							</div>
							<div class="col-md-6">
								<label for="package-type" class="form-label">Loại gói</label> <select
									id="package-type" class="form-select">
									<option selected>Chọn</option>
									<option>...</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="input-package-name" class="form-label">Tên
									gói tập</label> <input type="text" class="form-control"
									id="input-package-name" />
							</div>

							<div class="col-md-6">
								<label for="input-package-limit-time" class="form-label">Hạn
									gói</label>
								<div class="input-group col-md-6 mb-3">
									<input id="input-package-limit-time" type="number"
										class="form-control" placeholder="vd: 1" aria-label="Username"
										aria-describedby="basic-addon1" /> <span
										class="input-group-text" id="basic-addon1">Tháng</span>
								</div>
							</div>

							<div class="col-md-6">
								<label for="input-package-price" class="form-label">Giá
									gói</label>
								<div class="input-group col-md-6 mb-3">
									<input id="iinput-package-price" type="number"
										class="form-control" placeholder="vd: 50000"
										aria-label="input-package-price"
										aria-describedby="basic-addon1" /> <span
										class="input-group-text" id="basic-addon1">VND</span>
								</div>
							</div>
							<fieldset class="col-md-12">
								<legend class="col-form-label col-sm-2 pt-0"> Trạng
									thái </legend>
								<div class="col-sm-12 d-flex gap-4">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="state"
											id="block" value="0" checked /> <label
											class="form-check-label" for="block"> Khoá </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="state"
											id="active" value="1" /> <label class="form-check-label"
											for="active"> Kích hoạt </label>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
					<div class="modal-footer">
						<button type="submit" form="form-package" class="btn btn-primary">
							Xác nhận</button>
						<button type="button" form="form-package"
							class="btn btn-secondary close-form" data-bs-dismiss="modal">
							Đóng</button>
					</div>
				</div>
			</div>
		</div>
		<!-- detail -->
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
                          <div id="filter-block" class="card position-absolute end-100 top-0 collapse" style="z-index: 100; min-width: 24rem;">
                              <div class="card-header py-2 text-secondary bg-info text-black fs-6">Bộ lọc</div>
                              <div class="card-body">
                                  <form class="row g-3 mt-1" id="form-filter">
                                      <div class="col-12">
                                          <label for="input-limit-time" class="form-label">Hạn gói </label>

                                          <div class="col-12 d-flex gap-1 justify-content-around align-items-stretch">
                                              <div class="input-group">
                                                  <input id="input-package-limit-time" type="number" class="form-control" aria-label="Username" aria-describedby="basic-addon1" />
                                                  <span class="input-group-text" id="basic-addon1">Tháng</span>
                                              </div>
                                              <button type="button" class="btn btn-primary btn-sm btn-range-filter">
                                                  Đến
                                              </button>

                                              <div class="input-group d-none range-filter-right">
                                                  <input id="input-package-limit-time" type="number" class="form-control" aria-label="Username" aria-describedby="basic-addon1" />
                                                  <span class="input-group-text" id="basic-addon1">Tháng</span>
                                              </div>
                                          </div>
                                      </div>

                                      <div class="col-12">
                                          <label for="input-birthday" class="form-label">Giá</label>

                                          <div class="col-12 d-flex gap-1 justify-content-around align-items-stretch">
                                              <div class="input-group">
                                                  <input id="input-package-limit-time" type="number" class="form-control" aria-label="Username" aria-describedby="basic-addon1" />
                                                  <span class="input-group-text" id="basic-addon1">VND</span>
                                              </div>
                                              <button type="button" class="btn btn-primary btn-sm btn-range-filter">
                                                  Đến
                                              </button>

                                              <div class="input-group d-none range-filter-right">
                                                  <input id="input-package-limit-time" type="number" class="form-control" aria-label="Username" aria-describedby="basic-addon1" />
                                                  <span class="input-group-text" id="basic-addon1">VND</span>
                                              </div>
                                          </div>
                                      </div>

                                      <div class="col-md-12">
                                          <label for="package-type" class="form-label">Loại gói</label>

                                          <select id="package-type" class="form-select">
                                              <option selected>Chọn</option>
                                              <option>...</option>
                                          </select>
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
                                                      Kích hoạt
                                                  </label>
                                              </div>
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="status" id="filter-status-1" value="1" />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-status-1">
                                                      Khoá
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
      });
    </script>
</body>
</html>