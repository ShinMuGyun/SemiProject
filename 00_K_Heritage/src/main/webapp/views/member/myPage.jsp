<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>

<section class="py-5">
	<div class="container">
		<!-- Breadcrumbs -->

		<h1 class="hero-heading mb-0">마이페이지</h1>
		<p class="text-muted mb-5">여기서 개인 정보 및 설정을 관리합니다.</p>
		<div class="row">
			<div class="col-lg-7 mb-5 mb-lg-0">
				<div class="text-block">
					<div class="row mb-3">
						<div class="col-sm-9">
							<h4>회원 등급</h4>

							<div>
								<img class="p1img"
									src="<%=path%>/resources/img/photo/Personal1img.jpg">
								<img class="p2img"
									src="<%=path%>/resources/img/photo/Personal2img.jpg">
								<img class="p3img"
									src="<%=path%>/resources/img/photo/Personal3img.jpg">
							</div>

							<br>

							<!-- 이미지 넣어여함 -->

						</div>
						<br>
						<div>
							<p class="text-muted mb-5">oo님의 회원 등급은 양반입니다.</p>
						</div>
						<br>
						<div class="col-sm-9">
							<h4>회원 세부정보</h4>
						</div>
						<br>
						<div class="col-sm-3 text-end">
							<button class="btn btn-link ps-0 text-primary-bs collapsed"
								type="button" data-bs-toggle="collapse"
								data-bs-target="#personalDetails" aria-expanded="false"
								aria-controls="personalDetails"
								style="color: rgba(245, 185, 144);">정보 수정하기</button>
						</div>
					</div>
					<p class="text-sm text-muted">
						<i class="fa fa-id-card fa-fw me-2"></i>김경섭<span class="mx-2">
							| </span><i class="fa fa-thin fa-venus-mars me-2"></i>남성<br> <i
							class="fa fa-birthday-cake fa-fw me-2"></i>00/00/1998<br> <i
							class="fa fa-envelope-open fa-fw me-2"></i>kyungseop.kim@korea.com
						<span class="mx-2"> | </span> <i class="fa fa-phone fa-fw me-2"></i>010-0000-0000
					</p>
					<div class="collapse" id="personalDetails">
						<form action="#">
							<div class="row pt-4">
								<div class="mb-4 col-md-6">
									<label class="form-label" for="name">FULL NAME</label> <input
										class="form-control" type="text" name="name" id="name"
										value="김경섭">
								</div>
								<div class="mb-4 col-md-6">
									<label class="form-label" for="gender">GENDER</label> <select
										class="selectpicker form-control" name="gender" id="gender"
										data-style="btn-selectpicker">
										<option value="">성별</option>
										<option value="gender_0">남자</option>
										<option value="gender_1">여자</option>
									</select>
									<!-- <input class="form-control" type="text" name="name" id="name" value="김경섭"> -->
								</div>
								<div class="mb-4 col-md-6">
									<label class="form-label" for="password">PASSWORD</label> <input
										class="form-control" type="text" name="password" id="password"
										value="PASSWORD">
								</div>
								<div class="mb-4 col-md-6">
									<label class="form-label" for="phone">PHONE NUMBER</label> <input
										class="form-control" type="text" name="phone" id="phone"
										value="">
								</div>
								<div class="mb-4 col-md-6">
									<label class="form-label" for="cpassword">CONFIRM YOUR
										PASSWORD</label> <input class="form-control" type="text"
										name="cpassword" id="cpassword" value="CONFIRM PASSWORD">
								</div>
								<div class="mb-4 col-md-6">
									<label class="form-label" for="email">IDENTIFICATION
										EMAIL</label> <input class="form-control" type="email" name="email"
										id="email" value="IDENTIFICATION EMAIL">
								</div>

								<div style="text-align: center;">
									<button class="btn btn-outline-primary-ms mb-4" type="submit">회원정보
										저장하기</button>
									<button class="btn btn-outline-primary-ms2 mb-4" type="submit">회원탈퇴</button>
									<hr>
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>
			<div class="col-md-8 col-lg-4 ms-lg-auto">
				<div class="card border-0 shadow">
					<div class="card-header bg-primary-light1 py-4 border-0">
						<div class="d-flex align-items-center">
							<div>
								<h4 class="h6 subtitle text-smm text-primarym">나의 박물관 조회</h4>

								<!-- <i class="fa fa-thin fa-landmark"></i> -->

							</div>
							<svg
								class="svg-icon svg-icon svg-icon-light w-3rem h-3rem ms-3 text-primarycm2 flex-shrink-0">
                    <use xlink:href="#identity-1"> </use>
                  </svg>
						</div>
					</div>
					<div class="card-body p-4">
						<div style="text-align: center;">
							<button class="btn btn-outline-primary-mi mb-4" type="submit">박물관
								예약 내역&nbsp;></button>
						</div>
						<div style="text-align: center;">
							<button class="btn btn-outline-primary-mi2 mb-4" type="submit">박물관
								즐겨찾기&nbsp;></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="/views/common/footer.jsp"%>