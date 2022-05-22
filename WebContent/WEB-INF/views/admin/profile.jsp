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
			<h1>Thông tin cá nhân</h1>
		</div>
		<!-- End Page Title -->

		<section class="section profile">
			<div class="row">
				<div class="col-xl-8 mx-auto">
					<div class="card">
						<div class="card-body pt-3">
							<!-- Bordered Tabs -->
							<ul class="nav nav-tabs nav-tabs-bordered">
								<li class="nav-item">
									<button class="nav-link active" data-bs-toggle="tab"
										data-bs-target="#profile-overview">
										Tổng quát</button>
								</li>

								<li class="nav-item">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-edit">
										Cập nhật thông tin</button>
								</li>

								<li class="nav-item">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-change-password">
										Thay đổi mật khẩu</button>
								</li>
							</ul>
							<div class="tab-content pt-2">
								<div class="tab-pane fade show active profile-overview"
									id="profile-overview">
									<h5 class="card-title">Profile Details</h5>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Họ và Tên</div>
										<div class="col-lg-9 col-md-8">Kevin Anderson</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Giới tính</div>
										<div class="col-lg-9 col-md-8">Nam</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ngày Sinh</div>
										<div class="col-lg-9 col-md-8">Lueilwitz, Wisoky and
											Leuschke</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Vài trò</div>
										<div class="col-lg-9 col-md-8">Quản lý</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">CMNN/CCCD</div>
										<div class="col-lg-9 col-md-8">381...</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Địa chỉ</div>
										<div class="col-lg-9 col-md-8">A108 Adam Street, New
											York, NY 535022</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Số điện thoại</div>
										<div class="col-lg-9 col-md-8">(436) 486-3538 x29071</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Email</div>
										<div class="col-lg-9 col-md-8">k.anderson@example.com</div>
									</div>
								</div>

								<div class="tab-pane fade profile-edit pt-3" id="profile-edit">
									<!-- Profile Edit Form -->
									<form>
										<div class="row mb-3">
											<label for="fullName"
												class="col-md-4 col-lg-3 col-form-label">Tên
												đầy đủ</label>
											<div class="col-md-8 col-lg-9">
												<input name="fullName" type="text" class="form-control"
													id="fullName" value="Kevin Anderson" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="company" class="col-md-4 col-lg-3 col-form-label">Company</label>
											<div class="col-md-8 col-lg-9">
												<input name="company" type="text" class="form-control"
													id="company" value="Lueilwitz, Wisoky and Leuschke" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="Job" class="col-md-4 col-lg-3 col-form-label">Job</label>
											<div class="col-md-8 col-lg-9">
												<input name="job" type="text" class="form-control" id="Job"
													value="Web Designer" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="Country" class="col-md-4 col-lg-3 col-form-label">Country</label>
											<div class="col-md-8 col-lg-9">
												<input name="country" type="text" class="form-control"
													id="Country" value="USA" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
											<div class="col-md-8 col-lg-9">
												<input name="address" type="text" class="form-control"
													id="Address" value="A108 Adam Street, New York, NY 535022" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
											<div class="col-md-8 col-lg-9">
												<input name="phone" type="text" class="form-control"
													id="Phone" value="(436) 486-3538 x29071" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
											<div class="col-md-8 col-lg-9">
												<input name="email" type="email" class="form-control"
													id="Email" value="k.anderson@example.com" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="Twitter" class="col-md-4 col-lg-3 col-form-label">Twitter
												Profile</label>
											<div class="col-md-8 col-lg-9">
												<input name="twitter" type="text" class="form-control"
													id="Twitter" value="https://twitter.com/#" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="Facebook"
												class="col-md-4 col-lg-3 col-form-label">Facebook
												Profile</label>
											<div class="col-md-8 col-lg-9">
												<input name="facebook" type="text" class="form-control"
													id="Facebook" value="https://facebook.com/#" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="Instagram"
												class="col-md-4 col-lg-3 col-form-label">Instagram
												Profile</label>
											<div class="col-md-8 col-lg-9">
												<input name="instagram" type="text" class="form-control"
													id="Instagram" value="https://instagram.com/#" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="Linkedin"
												class="col-md-4 col-lg-3 col-form-label">Linkedin
												Profile</label>
											<div class="col-md-8 col-lg-9">
												<input name="linkedin" type="text" class="form-control"
													id="Linkedin" value="https://linkedin.com/#" />
											</div>
										</div>

										<div class="text-center">
											<button type="submit" class="btn btn-primary">Save
												Changes</button>
										</div>
									</form>
									<!-- End Profile Edit Form -->
								</div>

								<div class="tab-pane fade pt-3" id="profile-change-password">
									<!-- Change Password Form -->
									<form>
										<div class="row mb-3">
											<label for="currentPassword"
												class="col-md-5 col-lg-4 col-form-label">Mật
												khẩu hiện tại</label>
											<div class="col-md-7 col-lg-8">
												<input name="password" type="password" class="form-control"
													id="currentPassword" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="newPassword"
												class="col-md-5 col-lg-4 col-form-label">Mật
												khẩu mới</label>
											<div class="col-md-7 col-lg-8">
												<input name="newpassword" type="password"
													class="form-control" id="newPassword" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="renewPassword"
												class="col-md-5 col-lg-4 col-form-label">Nhập
												lại mật khẩu mới</label>
											<div class="col-md-7 col-lg-8">
												<input name="renewpassword" type="password"
													class="form-control" id="renewPassword" />
											</div>
										</div>

										<div class="text-center">
											<button type="submit" class="btn btn-primary">
												Change Password</button>
										</div>
									</form>
									<!-- End Change Password Form -->
								</div>
							</div>
							<!-- End Bordered Tabs -->
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- End #main -->
	<!-- common script -->
	<%@include file="./script.jsp"%>
</body>
</html>