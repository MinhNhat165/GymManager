<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
							<h5
								class="card-title align-items-center d-flex justify-content-between transitioning">
								Danh sách tài khoản</h5>
							<!-- Table with stripped rows -->
							<table class="table" id="my-data-table">
								<thead>
									<tr>
										<th class="text-center">SST</th>
										<th>Tên tài khoản</th>
										<th>Ngày Tạo</th>

										<th>Trạng Thái</th>
										<th>Loại tài khoản</th>
										<th class="text-center col-2">Thao tác</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" class="text-center">1</th>
										<td>Raheem Lehner</td>

										<td>2011-04-19</td>

										<td class="account-state text-success"><span
											class="badge rounded-pill bg-success">Hoạt động</span></td>

										<td class="account-state text-primary">Nhân viên</td>
										<td class="text-center">
											<button class="btn btn-outline-info btn-light btn-sm"
												title="Chi tiết người sở hữu" data-bs-toggle="modal"
												data-bs-target="#detail" data-bs-placement="top">
												<i class="fa-solid fa-circle-exclamation"></i>
											</button>
											<button class="btn btn-outline-danger btn-light btn-sm"
												title="Đặt lại mật khẩu" data-bs-toggle="modal"
												data-bs-placement="top">
												<i class="fa-solid fa-rotate"></i>
											</button>
											<button class="btn btn-outline-warning btn-light btn-sm"
												title="Khoá tài khoản">
												<i class="fa-solid fa-lock"></i>
											</button>
										</td>
									</tr>
									<tr>
										<th scope="row" class="text-center">1</th>
										<td>Raheem Lehner</td>

										<td>2011-04-19</td>

										<td class="account-state text-success"><span
											class="badge rounded-pill bg-secondary">Khoá</span></td>

										<td class="account-state text-success">Khách hàng</td>
										<td class="text-center">
											<button class="btn btn-outline-info btn-light btn-sm"
												title="Chi tiết người sở hữu" data-bs-toggle="modal"
												data-bs-target="#detail" data-bs-placement="top">
												<i class="fa-solid fa-circle-exclamation"></i>
											</button>
											<button class="btn btn-outline-danger btn-light btn-sm"
												title="Đặt lại mật khẩu" data-bs-toggle="modal"
												data-bs-placement="top">
												<i class="fa-solid fa-rotate"></i>
											</button>
											<button class="btn btn-outline-warning btn-light btn-sm"
												title="Khoá tài khoản">
												<i class="fa-solid fa-lock"></i>
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
						<h5 class="modal-title">Thêm mới tài khoản</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form class="row g-3">
							<div class="col-md-12">
								<label for="inputEmail5" class="form-label">Tên tài
									khoản</label> <input type="email" class="form-control" id="inputEmail5" />
							</div>
							<div class="col-md-12">
								<label for="inputPassword5" class="form-label">Mật khẩu</label>
								<input type="password" class="form-control" id="inputPassword5" />
							</div>
							<div class="col-md-12">
								<label for="inputState" class="form-label">Loại tài
									khoản</label> <select id="inputState" class="form-select">
									<option selected>Choose...</option>
									<option>...</option>
								</select>
							</div>

							<div class="text-end">
								<button type="submit" class="btn btn-primary">Xác nhận
								</button>
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Đóng</button>
							</div>
						</form>
						<!-- End Multi Columns Form -->
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- End #main -->

	<%@include file="./script.jsp"%>
	<!-- end common script  -->
	<script type="text/javascript">
      const toggleBtnState = function (e, classToggle) {
        e.classList.toggle(classToggle);
      };
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
                          <div id="filter-block" class="card position-absolute end-100 top-0 collapse" style="z-index: 100; min-width: 20rem;">
                              <div class="card-header py-2 text-secondary bg-info text-black fs-6">Bộ lọc</div>
                              <div class="card-body">
                                  <form class="row g-3 mt-1" id="form-filter">
                                      <div class="col-12">
                                          <label for="input-birthday" class="form-label">Ngày Tạo</label>

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
                                          <label for="gender" class="form-label">Trạng thái</label>
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
                                                      Hoạt động
                                                  </label>
                                              </div>
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="gender" id="filter-male" value="1" />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-male">
                                                      Khoá
                                                  </label>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="col-md-12">
                                          <label for="status" class="form-label">Loại tài khoản</label>
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
                                                      Nhân viên
                                                  </label>
                                              </div>
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="status" id="filter-status-1" value="1" />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-status-1">
                                                      Khách hàng
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
        $(".btn-create").remove();
        $(".btn-filter").click(function () {
          $(".filter-block").toggleClass("show-flex");
        });
      });
    </script>

</body>
</html>