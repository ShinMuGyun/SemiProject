<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %>

<section class="hero-home">
	<div class="swiper-container hero-slider">
		<div class="swiper-wrapper">
			<div class="swiper-slide"
				style="background-image:url(<%=path%>/resources/img/photo/mainimg.PNG)"></div>
			<!-- <div class="swiper-slide" style="background-image:url(img/photo/photo-1519974719765-e6559eac2575.jpg)"></div>
                <div class="swiper-slide" style="background-image:url(img/photo/photo-1490578474895-699cd4e2cf59.jpg)"></div>
                <div class="swiper-slide" style="background-image:url(img/photo/photo-1534850336045-c6c6d287f89e.jpg)"></div> -->
		</div>
	</div>
	<div class="container py-6 py-md-7 text-black z-index-20">
		<div class="row">
			<div class="col-xl-10">
				<div class="text-center text-lg-start">
					<h1 class="display-3 fw-bold text-shadow text-orange">문화재</h1>
					<h1 class="display-3 fw-bold text-shadow">도감</h1>
					<p class="subtitle letter-spacing-4 mb-2 text-black text-shadow">전국
						곳곳에 숨겨진 우리 역사 찾기</p>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="py-4">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md-8">
				<p class="text-orange subtitle">다양한 문화재를 확인하세요</p>
				<h2>오늘의 문화재</h2>
			</div>
			<div
				class="col-md-4 d-lg-flex align-items-center justify-content-end">
				<a class="text-muted text-sm" href="category.html"> 더 보기<i
					class="fas fa-angle-double-right ms-2"></i>
				</a>
			</div>
		</div>
		<div class="swiper-container guides-slider mx-n2 pt-3">
			<!-- Additional required wrapper-->
			<div class="swiper-wrapper pb-5">
				<!-- Slides-->
				<div class="swiper-slide h-auto px-2">
					<div
						class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
						<a class="tile-link" href="category.html"></a><img
							class="bg-image"
							src="<%=path%>/resources/img/photo/1.jpg"
							alt="Card image">
						<div class="card-body overlay-content">
							<h6 class="card-title text-shadow text-uppercase">경주 감산사
								석조미륵보살입상</h6>
						</div>
					</div>
				</div>
				<div class="swiper-slide h-auto px-2">
					<div
						class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
						<a class="tile-link" href="category.html"></a><img
							class="bg-image"
							src="<%=path%>/resources/img/photo/2.jpg"
							alt="Card image">
						<div class="card-body overlay-content">
							<h6 class="card-title text-shadow text-uppercase">청자 상감운학문
								매병</h6>
						</div>
					</div>
				</div>
				<div class="swiper-slide h-auto px-2">
					<div
						class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
						<a class="tile-link" href="category.html"></a><img
							class="bg-image"
							src="<%=path%>/resources/img/photo/3.jpg"
							alt="Card image">
						<div class="card-body overlay-content">
							<h6 class="card-title text-shadow text-uppercase">금동미륵보살반가사유상(1962-2)</h6>

						</div>
					</div>
				</div>
				<div class="swiper-slide h-auto px-2">
					<div
						class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
						<a class="tile-link" href="category.html"></a><img
							class="bg-image"
							src="<%=path%>/resources/img/photo/4.jpg"
							alt="Card image">
						<div class="card-body overlay-content">
							<h6 class="card-title text-shadow text-uppercase">훈민정음</h6>
						</div>
					</div>
				</div>
				<div class="swiper-slide h-auto px-2">
					<div
						class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
						<a class="tile-link" href="category.html"></a><img
							class="bg-image"
							src="<%=path%>/resources/img/photo/11.jpg"
							alt="Card image">
						<div class="card-body overlay-content">
							<h6 class="card-title text-shadow text-uppercase">백제 금동대향로</h6>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-pagination d-md-none"></div>
		</div>
	</div>
</section>

<section class="py-4">
	<div class="container">
		<div class="pb-lg-4">
			<p class="subtitle text-orange">오늘의 소식을 확인하세요</p>
			<h2 class="mb-5">공지 사항</h2>
		</div>
		<div class="row">
			<div class="col-sm-6 col-lg-3 mb-3 mb-lg-0">
				<div class="px-0 pe-lg-3">
					<div class="icon-rounded mb-3 bg-secondary-light">
						<svg class="svg-icon w-2rem h-2rem text-secondary">
                    <use xlink:href="#checkmark-2"> </use>
                  </svg>
					</div>
					<h3 class="h6 text-uppercase">어린이날 고궁 무료입장</h3>
					<p class="text-muted text-sm">문화유산 확대를 위해 이번 어린이날에는 궁능 전면
						무료입장으로 …</p>
				</div>
			</div>
			<div class="col-sm-6 col-lg-3 mb-3 mb-lg-0">
				<div class="px-0 pe-lg-3">
					<div class="icon-rounded mb-3 bg-primary-light">
						<svg class="svg-icon w-2rem h-2rem text-primary">
                    <use xlink:href="#checkmark-2"> </use>
                  </svg>
					</div>
					<h3 class="h6 text-uppercase">2022년 문화재 교육 프로그램 인증 공고</h3>
					<p class="text-muted text-sm">우수한 프로그램 인증을 통하여 문화재교육의 질적 수준을
						제고하고…</p>
				</div>
			</div>
			<div class="col-sm-6 col-lg-3 mb-3 mb-lg-0">
				<div class="px-0 pe-lg-3">
					<div class="icon-rounded mb-3 bg-secondary-light">
						<svg class="svg-icon w-2rem h-2rem text-secondary">
                    <use xlink:href="#checkmark-2"> </use>
                  </svg>
					</div>
					<h3 class="h6 text-uppercase">청와대 국민 품으로 100만명 돌파</h3>
					<p class="text-muted text-sm">청와대 관람객이 개방 44일 만에 100만 명을 돌파했다…</p>
				</div>
			</div>
			<div class="col-sm-6 col-lg-3 mb-3 mb-lg-0">
				<div class="px-0 pe-lg-3">
					<div class="icon-rounded mb-3 bg-primary-light">
						<svg class="svg-icon w-2rem h-2rem text-primary">
                    <use xlink:href="#checkmark-2"> </use>
                  </svg>
					</div>
					<h3 class="h6 text-uppercase">2021년 문화재지킴이 전국대회 행사 개최</h3>
					<p class="text-muted text-sm">‘문화재지킴이 운동’은 국민이 직접 문화재를 자발적으로
						가꾸고 지키고자…</p>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Divider Section-->
<section class="py-4 position-relative dark-overlay">
	<img class="bg-image"
		src="<%=path%>/resources/img/photo/6.jpg" alt="">
	<div class="container">
		<div class="overlay-content text-white py-lg-5">
			<h3 class="display-3 fw-bold text-serif text-shadow mb-5">The
				Korea Heritage</h3>
			<h3 class="display-3 fw-bold text-serif text-shadow mb-5">Night
				View.</h3>
			<a class="btn mg-btn-light" href="category-rooms.html">바로가기</a>
		</div>
	</div>
</section>

<section class="py-4 bg-gray-100">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md-8">
				<h2>박물관</h2>
				<p class="subtitle text-orange">7월의 인기 박물관</p>
			</div>
			<div
				class="col-md-4 d-md-flex align-items-center justify-content-end">
				<a class="text-muted text-sm" href="blog.html"> 더 보기<i
					class="fas fa-angle-double-right ms-2"></i>
				</a>
			</div>
		</div>
		<div class="row">

			<!-- blog item-->
			<div class="col-lg-4 col-sm-6 mb-4 hover-animate">
				<div class="card shadow border-0 h-100">
					<a href="post.html"><img class="img-fluid card-img-top"
						src="<%=path%>/resources/img/photo/9.jpg"
						alt="..." /></a>
					<div class="card-body">
						<h5 class="my-2">
							<a class="text-dark" href="post.html">국립중앙박물관</a>
						</h5>
						<p class="text-gray-500 text-sm my-3">
							<i class="far fa-map me-2"></i>서울특별시
						</p>
						<p class="my-2 text-muted text-sm">운영시간(평일) : 10 : 00 ~ 18 :
							00</p>
						<p class="my-2 text-muted text-sm">운영시간(주말) : 10 : 00 ~ 19 :
							00</p>
						<a class="text-orange ps-0 btn" href="post.html">더 보기<i
							class="fa fa-long-arrow-alt-right ms-2"></i></a>
					</div>
				</div>
			</div>

			<!-- blog item-->
			<div class="col-lg-4 col-sm-6 mb-4 hover-animate">
				<div class="card shadow border-0 h-100">
					<a href="post.html"><img class="img-fluid card-img-top"
						src="<%=path%>/resources/img/photo/10.jpg"
						alt="..." /></a>
					<div class="card-body">
						<h5 class="my-2">
							<a class="text-dark" href="#">서울시립미술관</a>
						</h5>
						<p class="text-gray-500 text-sm my-3">
							<i class="far fa-map me-2"></i>서울특별시
						</p>
						<p class="my-2 text-muted text-sm">운영시간(평일) : 10 : 00 ~ 20 :
							00</p>
						<p class="my-2 text-muted text-sm">운영시간(주말) : 10 : 00 ~ 19 :
							00</p>
						<a class="btn text-orange ps-0" href="#">더 보기<i
							class="fa fa-long-arrow-alt-right ms-2"></i></a>
					</div>
				</div>
			</div>

			<!-- blog item-->
			<div class="col-lg-4 col-sm-6 mb-4 hover-animate">
				<div class="card shadow border-0 h-100">

					<div class="card-body">

						<h5 class="my-2">전국의 박물관∙미술관들이소장하고 있는</h5>
						<h5 class="my-2">다양한 문화유산들을 만나보세요.</h5>

						<br>
						<br>

						<h1 class="text-orange">
							&nbsp;&nbsp;&nbsp;&nbsp;<img src="<%=path %>/resources/img/photo/7.png"></img>
							&nbsp;&nbsp;&nbsp;&nbsp; 331
						</h1>
						<p class="my-2 text-muted text-sm">소장품 보유 기관</p>

						<br>

						<h1 class="text-orange">
							&nbsp;&nbsp;&nbsp;&nbsp;<img src="<%=path %>/resources/img/photo/8.png"></img>
							&nbsp;&nbsp;&nbsp;&nbsp; 2,360,170
						</h1>
						<p class="my-2 text-muted text-sm">&nbsp;&nbsp;&nbsp;&nbsp;전체
							소장품</p>

					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Instagram-->
<section>
	<div class="container-fluid px-0">
		<div class="swiper-container instagram-slider">
			<div class="swiper-wrapper">
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (1).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (2).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (3).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (4).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (5).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (6).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (2).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (4).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (6).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (1).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (3).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (5).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (6).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (4).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (2).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (5).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (3).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (1).png" alt=" "></a>
				</div>
				<div class="swiper-slide overflow-hidden">
					<a href="#"><img class="img-fluid hover-scale"
						src="<%=path %>/resources/img/instagram/instagram_11 (4).png" alt=" "></a>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="/views/common/footer.jsp"%>

