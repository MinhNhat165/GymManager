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
						<div class="card-body">
							<h5
								class="card-title align-items-center d-flex justify-content-between transitioning">
								Danh sách huấn luyện viên</h5>

							<!-- Table with stripped rows -->
							<table class="table" id="my-data-table">
								<thead>
									<tr>
										<th scope="col" class="col-1">Mã</th>
										<th scope="col" class="col-2">Họ và tên</th>
										<th scope="col" class="col-2">Giới tính</th>
										<th scope="col" class="col-2">Ngày sinh</th>
										<th scope="col" class="col-2">Trạng thái</th>
										<th scope="col" class="text-center col-2">Hành động</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>NV000001</td>
										<td>Raheem Lehner</td>
										<td>Nam</td>
										<td>2011-04-19</td>

										<td class="account-state"><span
											class="badge rounded-pill bg-success">Có
												lớp</span></td>

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
									<tr>
										<td>NV000001</td>
										<td>Raheem Lehner</td>
										<td>Nam</td>
										<td>2011-04-19</td>

										<td class="account-state"><span
											class="badge rounded-pill bg-danger">Chưa
												có lớp</span></td>
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
						<h5 class="modal-title">Thêm mới PT</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form class="row g-3">
							<div class="col-md-12">
								<label for="inputName" class="form-label">Mã:
									<span class="employeeId text-danger">PT000002</span>
								</label>
							</div>

							<div class="col-md-12">
								<label for="inputName" class="form-label">Họ và tên</label> <input
									type="text" class="form-control" id="inputName" />
							</div>
							<fieldset class="col-md-12">
								<legend class="col-form-label col-sm-2 pt-0"> Giới tính
								</legend>
								<div class="col-sm-12 d-flex gap-4">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="gender"
											id="female" value="0" checked /> <label
											class="form-check-label" for="female"> Nữ </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="gender"
											id="male" value="1" /> <label
											class="form-check-label" for="male"> Nam </label>
									</div>
								</div>
							</fieldset>

							<div class="col-md-6">
								<label for="inputBirthday" class="form-label">Ngày
									sinh</label> <input type="date" class="form-control" id="inputBirthday" />
							</div>

							<div class="col-md-6">
								<label for="inputIdentityCard" class="form-label">Số
									CMND</label> <input type="number" class="form-control"
									id="identityCard" placeholder="381..." />
							</div>

							<div class="col-md-6">
								<label for="inputPhone" class="form-label">SDT</label> <input
									type="tel" class="form-control" id="inputPhone"
									pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" />
							</div>
							<div class="col-md-6">
								<label for="inputEmail" class="form-label">Email</label> <input
									type="email" class="form-control" id="inputEmail" />
							</div>

							<div class="col-12">
								<label for="inputAddress" class="form-label">Địa chỉ</label> <input
									type="text" class="form-control" id="inputAddress"
									placeholder="97 Man Thiện, ..." />
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
						<h5 class="modal-title">Thông tin huấn luyện viên</h5>
						<button type="button" class="btn-close close-form"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>

					<div class="modal-body">
						<div class="row g-3 d-flex flex-column gap-4 pt-4">
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Mã</div>
								<div class="col-lg-8 col-md-8">PT000002</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Họ và tên</div>
								<div class="col-lg-8 col-md-8">Nguyễn Minh Nhật</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Giới tính</div>
								<div class="col-lg-8 col-md-8">Nam</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Ngày sinh</div>
								<div class="col-lg-8 col-md-8">30/11/2001</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Email</div>
								<div class="col-lg-8 col-md-8">
									N19DCCN129@student.ptithcm.edu.vn</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">SDT</div>
								<div class="col-lg-8 col-md-8">0865181658</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Địa chỉ</div>
								<div class="col-lg-8 col-md-8">97 Man thiện</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 label">Lớp đang dạy</div>
								<div class="col-lg-8 col-md-8">ptttp</div>
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
                                                      Có lớp
                                                  </label>
                                              </div>
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="status" id="filter-status-1" value="1" />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-status-1">
                                                      Chưa có lớp
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