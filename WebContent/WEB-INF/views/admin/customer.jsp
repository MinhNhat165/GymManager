<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="./head.jsp"%>
</head>

<body>
	<!--  flag -->
	<div class="modal-flag" idModal="${idModal}"></div>
	<div class="page-flag" data="sale"></div>
	<div class="alert-flag" aType='${message.type}'
		aMessage="${message.message }"></div>
	<!-- end flag  -->
	<!-- initial customer data -->
	<div class="initialCSId position-absolute"
		data="${customer.customerId }"></div>
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
							<h5 class="card-title">Danh sách khách hàng</h5>

							<!-- Table with stripped rows -->
							<table class="table" id="my-data-table">
								<thead>
									<tr>
										<th>Mã</th>
										<th>Họ và tên</th>
										<th>Giới tính</th>
										<th>Ngày sinh</th>
										<th>Trạng thái</th>
										<th class="text-center">Thao tác</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="c" items="${cList}">
										<tr>
											<td>${c.customerId}</td>
											<td>${c.name}</td>
											<td>${c.gender? 'Nam':'Nữ'}</td>
											<td>2011-04-19</td>

											<td class="account-state"><span
												class="badge rounded-pill bg-success">Đang tập</span></td>

											<td class="text-center"><a
												href="admin/customer/register/${c.customerId}.htm">
													<button class="btn btn-primary btn-sm"
														title="Đăng ký gói tập">
														<i class="fa-regular fa-file-signature"></i> <span>Đăng
															ký tập</span>
													</button>
											</a><a href="admin/customer/update/${c.customerId}.htm"><button
														class="btn btn-outline-warning btn-light btn-sm"
														title="Chỉnh sửa">
														<i class="fa-solid fa-pen-to-square"></i>
													</button> </a> <a href="admin/customer/detail/${c.customerId}.htm">
													<button class="btn btn-outline-info btn-light btn-sm"
														title="Chi tiết" data-bs-toggle="modal"
														data-bs-target="#detail" data-bs-placement="top">
														<i class="fa-solid fa-circle-exclamation"></i>
													</button>
											</a></td>
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

		<!-- modal  -->
		<!-- Form thêm khách hàng -->
		<div class="modal fade" id="modal-create" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header bg-primary text-white px-3 py-2">
						<h5 class="modal-title">Thêm mới khách hàng</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form:form action="admin/customer.htm" method="post"
							class="row g-3" modelAttribute="customer">
							<div class="col-md-12">
								<label for="input-id" class="form-label ">Mã: <span
									class="employeeId text-danger customerId"></span> <form:input
										path="customerId" type="text" class="form-control"
										id="input-id" /> <span class="text-danger"><form:errors
											path="customerId"></form:errors></span>
								</label>
							</div>

							<div class="col-md-12">
								<label for="input-name" class="form-label">Họ và tên</label>
								<form:input path="name" type="text" class="form-control"
									id="input-name" />
								<span class="text-danger"><form:errors path="name"></form:errors></span>
							</div>
							<fieldset class="col-md-12">
								<legend class="col-form-label col-sm-2 pt-0"> Giới tính
								</legend>
								<div class="col-sm-12 d-flex gap-4">
									<div class="form-check">
										<form:radiobutton path="gender" class="form-check-input"
											name="input-gender" id="female" value="0" />
										<label class="form-check-label" for="female"> Nữ </label>
									</div>
									<div class="form-check">
										<form:radiobutton path="gender" class="form-check-input"
											name="input-gender" id="male" value="1" />
										<label class="form-check-label" for="male"> Nam </label>
									</div>
								</div>
							</fieldset>

							<div class="col-md-6">
								<label for="input-birthday" class="form-label">Ngày sinh</label>
								<form:input path="birthday" type="date" class="form-control"
									id="input-birthday" />
								<span class="text-danger"><form:errors path="birthday"></form:errors></span>
							</div>

							<div class="col-md-6">
								<label for="input-phone" class="form-label">SDT</label>
								<form:input path="phone" type="tel" class="form-control"
									id="input-phone" />
								<span class="text-danger"><form:errors path="phone"></form:errors></span>
							</div>
							<div class="col-md-12">
								<label for="input-email" class="form-label">Email</label>
								<form:input path="email" type="text" class="form-control"
									id="input-email" />
								<span class="text-danger"><form:errors path="email"></form:errors></span>
							</div>

							<div class="col-12">
								<label for="input-address" class="form-label">Địa chỉ</label>
								<form:input path="address" type="text" class="form-control"
									id="input-address" placeholder="97 Man Thiện, ..." />
								<span class="text-danger"><form:errors path="address"></form:errors></span>
							</div>
							<div class="col-12">
								<button type="button"
									class="btn btn-outline-primary btn-create-account col-12"
									data-bs-toggle="collapse" data-bs-target="#form-create-account"
									onClick="toggleBtnState(this, 'btn-outline-danger')">
									<i class="bi bi-plus-circle"></i> <span class="">Tạo tài
										khoản mới</span>
								</button>
							</div>
							<div class="collapse col-12" id="form-create-account">
								<div class="row">
									<div class="col-6" data-link="account" data-n="2">
										<label for="input-username" class="form-label">Tên tài
											khoản</label> <input type="text" class="form-control"
											id="input-username" />
									</div>
									<div class="col-6">
										<label for="input-password" class="form-label">Mật
											khẩu</label> <input type="password" class="form-control"
											id="input-password" />
									</div>
								</div>
							</div>
							<div class="text-end mt-3">
								<button type="submit" name="btnCreate" class="btn btn-primary">Xác
									nhận</button>
								<button type="button" class="btn btn-secondary close-form"
									data-bs-dismiss="modal">Đóng</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>


		<!-- Form chỉnh sủa thông tin khách hàng  -->

		<div class="modal fade" id="modal-update" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header bg-primary text-white px-3 py-2">
						<h5 class="modal-title">Chỉnh sửa thông tin khách hàng</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form:form
							action="admin/customer/update/${customerUpdate.customerId}.htm"
							method="post" class="row g-3" modelAttribute="customerUpdate">
							<div class="col-md-12">
								<label for="input-id" class="form-label ">Mã: <span
									class="employeeId text-danger customerId"></span> <form:input
										path="customerId" readonly="true" type="text"
										class="form-control" id="input-id" /> <span
									class="text-danger"></span>
								</label>
							</div>

							<div class="col-md-12">
								<label for="input-name" class="form-label">Họ và tên</label>
								<form:input path="name" type="text" class="form-control"
									id="input-name" />
								<span class="text-danger"><form:errors path="name"></form:errors></span>
							</div>
							<fieldset class="col-md-12">
								<legend class="col-form-label col-sm-2 pt-0"> Giới tính
								</legend>
								<div class="col-sm-12 d-flex gap-4">
									<div class="form-check">
										<form:radiobutton path="gender" class="form-check-input"
											name="input-gender" id="female" value="0" />
										<label class="form-check-label" for="female"> Nữ </label>
									</div>
									<div class="form-check">
										<form:radiobutton path="gender" class="form-check-input"
											name="input-gender" id="male" value="1" />
										<label class="form-check-label" for="male"> Nam </label>
									</div>
								</div>
							</fieldset>

							<div class="col-md-6">
								<label for="input-birthday" class="form-label">Ngày sinh</label>
								<form:input path="birthday" type="date" class="form-control"
									id="input-birthday" />
								<span class="text-danger"><form:errors path="birthday"></form:errors></span>
							</div>

							<div class="col-md-6">
								<label for="input-phone" class="form-label">SDT</label>
								<form:input path="phone" type="tel" class="form-control"
									id="input-phone" />
								<span class="text-danger"><form:errors path="phone"></form:errors></span>
							</div>
							<div class="col-md-12">
								<label for="input-email" class="form-label">Email</label>
								<form:input path="email" type="text" class="form-control"
									id="input-email" />
								<span class="text-danger"><form:errors path="email"></form:errors></span>
							</div>

							<div class="col-12">
								<label for="input-address" class="form-label">Địa chỉ</label>
								<form:input path="address" type="text" class="form-control"
									id="input-address" placeholder="97 Man Thiện, ..." />
								<span class="text-danger"><form:errors path="address"></form:errors></span>
							</div>
							<div class="col-12">
								<button type="button"
									class="btn btn-outline-primary btn-create-account col-12"
									data-bs-toggle="collapse" data-bs-target="#form-create-account"
									onClick="toggleBtnState(this, 'btn-outline-danger')">
									<i class="bi bi-plus-circle"></i> <span class="">Tạo tài
										khoản mới</span>
								</button>
							</div>
							<div class="collapse col-12" id="form-create-account">
								<div class="row">
									<div class="col-6" data-link="account" data-n="2">
										<label for="input-username" class="form-label">Tên tài
											khoản</label> <input type="text" class="form-control"
											id="input-username" />
									</div>
									<div class="col-6">
										<label for="input-password" class="form-label">Mật
											khẩu</label> <input type="password" class="form-control"
											id="input-password" />
									</div>
								</div>
							</div>
							<div class="text-end mt-3">
								<button type="submit" name="btnUpdate" class="btn btn-primary">Xác
									nhận</button>
								<button type="button" class="btn btn-secondary close-form"
									data-bs-dismiss="modal">Đóng</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>

		<!-- Form đăng ký tập -->
		<div class="modal fade" id="modal-register" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header bg-primary text-white px-3 py-2">
						<h5 class="modal-title">Đăng ký tập</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form:form id="register"
							action="admin/customer/register/${register.customer.customerId}.htm"
							class="row g-3" modelAttribute="${register}">
							<div class="col-md-12">
								<label class="form-label">Mã: <span
									class="employeeId text-danger">${register.registerId}</span></label>
							</div>
							<div class="contact-registration-list">
								<div
									class="contact-registration-detail border rounded p-2 bg-light">
									<div class="col-md-12 mb-3">
										<label for="input-package" class="form-label">Gói tập</label>
										<select id="input-package" name="pack"
											class="form-select input-pack">
											<option selected value="">Chọn</option>
											<c:forEach var="p" items="${pack}">
												<option value="${p.packID}">${p.packName}</option>
											</c:forEach>
										</select> <input type="number" class="type invisible position-absolute"
											name="typeRegister">
									</div>
									<div class="type-select switch-element" data-n="1"
										data-link="course-1">
										<label for="inputName" class="form-label">Hình thức</label>
										<div
											class="col-12 d-flex gap-1 justify-content-around align-items-center">
											<div class="col-5">
												<select id="input-class" name="class" disabled="disabled"
													class="form-select">
													<option selected value="">Lớp</option>
													<c:forEach var="p" items="${pack}">
														<c:forEach var="c" items="${p.classList}">
															<c:if test="${c.maxPP > 1 }">
																<option class="class d-none" data="${p.packID}"
																	value="${c.classId}">${c.classId}</option>
															</c:if>
														</c:forEach>
													</c:forEach>
												</select>
											</div>
											<span>Hoặc</span>
											<button type="button"
												class="btn btn-primary col-5 switch-btn personal-chosen"
												data-n-switch-target="2" data-link="course-1">
												<i class="bi bi-plus-circle"></i> <span class="text-white">Cá
													Nhân</span>
											</button>
										</div>
									</div>
									<div class="row g-3 switch-element invisible position-absolute"
										data-n="2" data-link="course-1">
										<div class="col-md-6">
											<label for="input-close-register-day" class="form-label">Ngày
												bắt đầu tập</label> <input type="date"
												class="form-control date-start" name="date-start"
												id="input-close-register-day" />
											<div class="date-start-error text-danger"></div>
										</div>

										<div class="col-md-6">
											<label for="input-close-register-day" class="form-label">
												Thời khoá biểu </label>
											<button
												class="btn btn-tt col-12 btn-outline-primary btn-light"
												type="button" data-bs-target="#time-table"
												data-bs-toggle="modal">
												<i class="bi bi-plus-circle"></i> <span class="te">Tạo
													TKB</span>
											</button>
										</div>

										<div class="text-end mt-3">
											<button type="button"
												class="btn btn-secondary personal-chosen-dismiss switch-btn"
												data-link="course-1" data-n-switch-target="1">Huỷ</button>
										</div>
									</div>
								</div>
							</div>

							<div>
								<button type="button"
									class="btn d-none col-12 btn-outline-primary btn-light switch-element switch-btn  add-course-2"
									data-link="course-btn" data-n="5" data-n-switch-target="6">
									<i class="bi bi-plus-circle"></i> <span>Thêm</span>
								</button>
								<button type="button"
									class="btn col-12 btn-outline-danger invisible position-absolute btn-light switch-element switch-btn remove-course-2"
									data-link="course-btn" data-n="6" data-n-switch-target="5">
									<i class="fa-regular fa-circle-minus"></i> <span>Loại bỏ</span>
								</button>
							</div>
							<div class="text-end mt-3">
								<button type="submit" name="btnRegister" class="btn btn-primary">Xác
									nhận</button>
								<button type="button" class="btn btn-secondary close-form"
									data-bs-dismiss="modal">Đóng</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>

		<!-- Time-table -->
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
												<button type="button" class="btn btn-primary btn-tt-confirm"
													data-bs-target="#modal-register" data-bs-toggle="modal">Xác
													nhận</button>

												<div class="search-bar-table d-flex align-items-stretch">
													<div class="">
														<button type="button"
															class="btn btn-secondary btn-tt-cancel"
															data-bs-target="#modal-register" data-bs-toggle="modal">Huỷ
															bỏ</button>
													</div>


												</div>
											</div>
										</h5>

										<!-- Table with stripped rows -->
										<div class="my-time-table">
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
																name="T2" form="register" id="T2-M" value="0"
																class="form-check-input" /> <label for="T2-M"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T3" id="T3-M" value="0"
																class="form-check-input" /> <label for="T3-M"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T4" id="T4-M" value="0"
																class="form-check-input" /> <label for="T4-M"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T5" id="T5-M" value="0"
																class="form-check-input" /> <label for="T5-M"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T6" id="T6-M" value="0"
																class="form-check-input" /> <label for="T6-M"></label></td>

															<td class="td-time-table"><input form="register"
																type="radio" name="T7" id="T7-M" value="0"
																class="form-check-input" /> <label for="T7-M"></label></td>

															<td class="td-time-table"><input form="register"
																type="radio" name="T8" id="T8-M" value="0"
																class="form-check-input" /> <label for="T8-M"></label></td>
														</tr>

														<tr>
															<td class="align-middle bg-light">Chiều</td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T2" id="T2-A" value="1"
																class="form-check-input" /> <label for="T2-A"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T3" id="T3-A" value="1"
																class="form-check-input" /> <label for="T3-A"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T4" id="T4-A" value="1"
																class="form-check-input" /> <label for="T4-A"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T5" id="T5-A" value="1"
																class="form-check-input" /> <label for="T5-A"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T6" id="T6-A" value="1"
																class="form-check-input" /> <label for="T6-A"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T7" id="T7-A" value="1"
																class="form-check-input" /> <label for="T7-A"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T8" id="T8-A" value="1"
																class="form-check-input" /> <label for="T8-A"></label></td>
														</tr>

														<tr>
															<td class="align-middle bg-light">Tối</td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T2" id="T2-E" value="2"
																class="form-check-input" /> <label for="T2-E"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T3" id="T3-E" value="2"
																class="form-check-input" /> <label for="T3-E"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T4" id="T4-E" value="2"
																class="form-check-input" /> <label for="T4-E"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T5" id="T5-E" value="2"
																class="form-check-input" /> <label for="T5-E"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T6" id="T6-E" value="2"
																class="form-check-input" /> <label for="T6-E"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T7" id="T7-E" value="2"
																class="form-check-input" /> <label for="T7-E"></label></td>
															<td class="td-time-table"><input form="register"
																type="radio" name="T8" id="T8-E" value="2"
																class="form-check-input" /> <label for="T8-E"></label></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<!-- End Table with stripped rows -->
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<!-- table detail -->
		<div class="modal fade" id="modal-detail" tabindex="-1">
			<div class="modal-dialog modal-lg modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header bg-primary text-white px-3 py-2">
						<h5 class="modal-title">Chi tiết thông tin khách hàng</h5>
						<button type="button" class="btn-close close-form"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body p-0">
						<section class="section profile">
							<div class="row">
								<div class="col-xl-12 mx-auto">
									<div class="card mb-0">
										<div class="card-body pt-3">
											<!-- Bordered Tabs -->
											<ul class="nav nav-tabs nav-tabs-bordered">
												<li class="nav-item">
													<button class="nav-link active" data-bs-toggle="tab"
														data-bs-target="#profile-overview">Thông tin cơ
														bản</button>
												</li>

												<li class="nav-item">
													<button class="nav-link" data-bs-toggle="tab"
														data-bs-target="#profile-edit">Thông tin đăng ký
														tập</button>
												</li>
											</ul>
											<div class="tab-content pt-2">
												<div class="tab-pane fade show active profile-overview"
													id="profile-overview">
													<div class="row mt-4">
														<div class="col-lg-3 col-md-4 label">Họ và Tên</div>
														<div class="col-lg-9 col-md-8">${customerDetail.name}</div>
													</div>

													<div class="row">
														<div class="col-lg-3 col-md-4 label">Giới tính</div>
														<div class="col-lg-9 col-md-8">${customerDetail.gender?'Nam':'Nữ'}</div>
													</div>
													<div class="row">
														<div class="col-lg-3 col-md-4 label">Ngày Sinh</div>
														<div class="col-lg-9 col-md-8">${customerDetail.birthday}</div>
													</div>

													<div class="row">
														<div class="col-lg-3 col-md-4 label">Địa chỉ</div>
														<div class="col-lg-9 col-md-8">${customerDetail.address}</div>
													</div>

													<div class="row">
														<div class="col-lg-3 col-md-4 label">Số điện thoại</div>
														<div class="col-lg-9 col-md-8">${customerDetail.phone}
														</div>
													</div>

													<div class="row">
														<div class="col-lg-3 col-md-4 label">Email</div>
														<div class="col-lg-9 col-md-8">
															${customerDetail.email}</div>
													</div>
												</div>

												<div class="tab-pane fade profile-edit pt-3"
													id="profile-edit" style="min-height: 460px">
													<div class="row p-2 bg-primary-light mb-3 rounded">
														<div class="col-2">Mã</div>
														<div class="col-2">Ngày đăng ký</div>
														<div class="col-2">Trạng thái</div>
														<div class="col-3">Người đăng ký</div>
													</div>

													<c:forEach var="r" items="${customerDetail.registerList}">
														<div
															class="row bg-light p-2 rounded border border-secondary align-items-center mb-4">
															<div class="col-2">${r.registerId}</div>
															<div class="col-2">${r.registerDate}</div>
															<div class="col-2">
																<c:if test="${r.status == 0}">
																	<span class="badge rounded-pill bg-danger">Chưa
																		thanh toán</span>
																</c:if>
																<c:if test="${r.status == 1}">
																	<span class="badge rounded-pill bg-success">Đã
																		thanh toán</span>
																</c:if>

															</div>
															<div class="col-3">${r.account.username}</div>
															<div class="col-3 text-primary" style="cursor: pointer">
																<span data-bs-toggle="collapse" href="#${r.registerId}">
																	Chi tiết <i class="fa-solid fa-angle-down"></i>
																</span>
																<button title="Chỉnh sửa"
																	class="btn btn-outline-warning btn-sm btn-light">
																	<i class="fa-solid fa-pen-to-square"></i>
																</button>
																<c:if test="${r.status == 0}">
																	<button title="Tạo hoá đơn"
																		class="btn btn-outline-success btn-sm btn-light">
																		<i class="fa-solid fa-ballot"></i>
																	</button>
																</c:if>

															</div>

															<div class="collapse" id="${r.registerId}">
																<div class="my-4">
																	<c:forEach var="d" items="${r.registerDetailList}">
																		<div class="p-2 bg-info mb-3 rounded">
																			Gói tập <span class="text-primary">${d.classEntity.trainingPack.packName}</span>
																			- Ngày tập <span class="text-primary">${d.classEntity.dateStart}</span>
																			- Thời hạn<span class="text-primary">
																				${d.classEntity.trainingPack.packDuration} tháng</span> -
																			Hình thức <span class="text-primary">${d.classEntity.maxPP == 1?'Cá nhân':'Lớp' }</span>
																			- TKB
																			<button
																				class="btn btn-outline-success btn-light btn-sm">
																				<i class="fa-regular fa-calendar-days"></i>
																			</button>
																		</div>
																	</c:forEach>

																</div>
															</div>
														</div>
													</c:forEach>

												</div>
											</div>
											<!-- End Bordered Tabs -->
										</div>
									</div>
								</div>
							</div>
						</section>
						<!-- End Multi Columns Form -->
					</div>
				</div>
			</div>
		</div>
		<!-- end table detail -->
	</main>
	<!-- End #main -->
	<!-- common script -->
	<%@include file="./script.jsp"%>
	<script type="text/javascript">
		
      $(document).ready(function () {
    	  // show class
    	 
    	 let personalChosen = $(".personal-chosen");
    	 personalChosen.attr('disabled', true);
    	 let inputType = $(".type")
    	 let inputClass = $("#input-class");
    	 let inputPack = $(".input-pack");
    	  inputType.val(0);
    	  personalChosen.click(function(){
    		  inputClass.val("").change();
    		  inputType.val(2);
    	  });
    	  
    	  $(".personal-chosen-dismiss").click(function(){
    		 
    		  inputType.val(0);
    	  });
    	  inputPack.change(function(){
    		  let packSelected = this.value
    		  inputClass.val("").change();
    	
    		  if(packSelected) {
    			 inputClass.attr('disabled', false);
    		  $('.class').addClass("d-none")
    		  $('.class[data="' + packSelected +'"]').removeClass("d-none")
    		  personalChosen.attr('disabled', false);
    		  }
    		  else {
    			  inputClass.attr('disabled', true);
    			  personalChosen.attr('disabled', true);
    			  inputType.val(0);
    			  $(".personal-chosen-dismiss").click();
    		  }
    	  });
    	  
    	  inputClass.change(function(){
    		  let classSelected = this.value
    		  if(classSelected) {
    			  inputType.val(1);
    			
    		  }
    		  else {
    			  
    			  inputType.val(0);
    		  }
    	  });
    	  
    	  $("#register").submit(function(e) {
    		  if($(".type").val() == 2) {
    			 
    			  if(!$(".date-start").val()) {
    				 	$(".date-start-error").text("Nội dung này không được bỏ trống") 
    				  e.preventDefault()
    				  
    			  }
    			 
    		  }
    		 
    	  })
    	  
    	  $(".btn-tt-confirm").click(function() {
    		  $(".btn-tt").html('<i class="fa-solid fa-pen-to-square"></i> <span class="te">Chỉnh sửa TKB</span>')
    	  })
    	  
    	  
    	  
    	  // show modal
    	  let id = $(".modal-flag").attr("idModal")
    	  if(id) {
    	  $("#"+id).modal("show");
    	  }
    	
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
                                  <form action="admin/customer.htm" class="row g-3 mt-1" id="form-filter">
                                      <div class="col-12">
                                          <label for="input-birthday" class="form-label">Ngày sinh</label>

                                          <div class="col-12 d-flex gap-1 justify-content-around align-items-stretch">
                                              <div class="input-group">
                                                  <input id="input-birthday" type="date" name="birthdayLeft" class="form-control" aria-label="input-birthday" aria-describedby="basic-addon1" />
                                              </div>
                                              <button type="button" class="btn btn-primary btn-sm btn-range-filter" data-bs-toggle="collapse" data-bs-target="#input-birthday-right">
                                                  Đến
                                              </button>

                                              <div class="input-group collapse" id="input-birthday-right">
                                                  <input type="date" name="birthdayRight" class="form-control" aria-label="input-birthday" aria-describedby="basic-addon1" />
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
                                                      Đang tập
                                                  </label>
                                              </div>
                                              <div class="form-check-filter">
                                                  <input class="form-check-input-filter" type="radio" name="status" id="filter-status-1" value="1" />
                                                  <label class="form-check-label py-1 px-2 rounded-1" for="filter-status-1">
                                                      Chưa đăng ký
                                                  </label>
                                              </div>
                                          </div>
                                      </div>
                                  </form>
                              </div>
                              <div class="card-footer py-2 text-end">
                                  <button type="submit" name="btnFilter" form="form-filter" class="btn btn-primary">
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

        $(".add-course-2").click(function () {
          $(".contact-registration-list").append(` <div
                    class="contact-registration-detail course-2 mt-2 border rounded p-2 bg-light"
                  >
                    <div class="type-select switch-element" data-n="3" data-link ="course-2">
                       <div class="col-md-12 mb-3">
                      <label for="input-package" class="form-label"
                        >Gói tập</label
                      >

                      <select id="input-package" class="form-select">
                        <option selected>Chọn</option>
                        <option>Gói xxx</option>
                      </select>
                    </div>
                      <label  class="form-label"
                        >Hình thức</label
                      >
                      <div
                        class="col-12 d-flex gap-1 justify-content-around align-items-center"
                      >
                        <div class="col-5">
                          <select id="input-class" class="form-select">
                            <option selected value="0">Lớp</option>
                            <option value="1">Lớp A</option>
                          </select>
                        </div>
                        <span>Hoặc</span>
                        <button
                          type="button"
                          class="btn btn-primary btn-create-account col-5 switch-btn personal-chosen"
                          data-n-switch-target="4"
                          data-link ="course-2"
                        >
                          <i class="bi bi-plus-circle"></i>
                          <span class="text-white">Cá Nhân</span>
                        </button>
                      </div>
                    </div>
                    <div
                      class="row g-3 switch-element invisible position-absolute"
                      data-n="4"
                      data-link="course-2"
                    >
                     
                      <div class="col-md-6">
                        <label for="input-close-register-day" class="form-label"
                          >Ngày bắt đầu tập</label
                        >
                        <input
                          type="date"
                          class="form-control"
                          id="input-close-register-day"
                        />
                      </div>

                      <div class="col-md-6">
                        <label for="input-close-register-day" class="form-label"
                          >Thời khoá biểu</label
                        >
                        <button
                          class="btn col-12 btn-outline-primary btn-light"
                          type="button"
                          data-bs-target="#time-table"
                          data-bs-toggle="modal"
                        >
                          <i class="bi bi-plus-circle"></i>
                          <span class="te">Tạo TKB</span>
                        </button>
                      </div>

                      <div class="text-end mt-3">
                        <button
                          type="button"
                          class="btn btn-secondary switch-btn"
                          data-link ="course-2"
                          data-n-switch-target="3"
                        >
                          Huỷ
                        </button>
                      </div>
                    </div>
                  </div>`);
        });
        $(".remove-course-2").click(function () {
          $(".course-2").remove();
        });
      });
    </script>

</body>
</html>