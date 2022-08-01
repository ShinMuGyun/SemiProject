<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
<section class="py-6 bg-gray-100 font1">
	<!-- 제목 타이틀  -->
	<div class="container py-sm-0 w-100">
		<div>
			<div class="col-xl-8">
				<h1 class="font1 display-4 text-black fw-bold">박물관 검색</h1>
				<p class="font1 text-lg text-orange mb-6">전국에 있는 다양한 박물관을 찾아보세요!</p>
			</div>
		</div>
	</div>
	<hr class="hr-jhj">

	<!-- 검색창 -->
	<div class="container">
		<div class="col-lg-10 d-flex align-items-center form-group mb-3-jh">
			<div class="jhj-1">박물관 명칭 검색</div>
			<div class="input-label-absolute input-label-absolute-right w-10">
				<input class="form-control-jhj border-1-jhj shadow-0" type="text"
					name="location" placeholder="이름" id="location">
			</div>
			<div class="jhj-2">지역별 검색</div>
			<select class="selectpicker" title="수도권"
				data-style="btn-form-control">
				<option value="city_1">수도권</option>
				<option value="city_2">충청권</option>
				<option value="city_3">강원권</option>
				<option value="city_4">전라권</option>
				<option value="city_5">경상권</option>
				<option value="city_6">제주권</option>
			</select>

			<div class="jhj-3">정렬</div>
			<select class="selectpicker" title="인기순"
				data-style="btn-form-control">
				<option value="sort_1">인기순</option>
				<option value="sort_2">별점순</option>
			</select>
		</div>


		<!-- 박물관 검색창 -->
		<div class="swiper-container pt-3 w-100"
			data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
			<div class="swiper-wrapper pb-5">
				<div class="h-auto px-2">
					<!-- 1번째 -->
					<div class="w-100 h-100 hover-animate"
						data-marker-id="59c0c8e33b1527bfe2abaf92">
						<div class="card h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden gradient-overlay ">
								<img class="img-full-main-jh" src="<%=path%>/resources/img/museum-1.PNG"
									alt="Modern, Well-Appointed Room" /> <a class="tile-link"
									href="mu_det.html"></a>
								<div class="card-img-overlay-bottom z-index-40"></div>
								<div class="card-img-overlay-top text-end">
									<a class="card-fav-icon position-relative z-index-40"
										href="javascript: void();"> <svg
											class="svg-icon text-white">
                                            <use xlink:href="#heart-1"> </use>
                                            </svg>
									</a>
								</div>
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h6 class="card-title">
										<a class="text-decoration-none text-dark h5"
											href="<%=path%>/views/museum/mu_det.jsp">국립중앙박물관</a>
									</h6>
									<div class="d-flex card-subtitle mb-3">
										<p class="flex-grow-1 mb-0 text-muted text-sm">서울시</p>
										<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="h-auto px-2">
					<!-- 2번째 -->
					<div class="w-100 h-100 hover-animate"
						data-marker-id="59c0c8e322f3375db4d89128">
						<div class="card h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden gradient-overlay">
								<img class="img-full-main-jh" src="<%=path%>/resources/img/museum-2.PNG"
									alt="Cute Quirky Garden apt, NYC adjacent" /> <a
									class="tile-link" href="detail-rooms.html"></a>
								<div class="card-img-overlay-top text-end">
									<a class="card-fav-icon position-relative z-index-40"
										href="javascript: void();"> <svg
											class="svg-icon text-white">
                                            <use xlink:href="#heart-1"></use>
                                            </svg>
									</a>
								</div>
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h6 class="card-title">
										<a class="text-decoration-none text-dark h5"
											href="detail-rooms.html">국립익산박물관</a>
									</h6>
									<div class="d-flex card-subtitle mb-3">
										<p class="flex-grow-1 mb-0 text-muted text-sm">서울시</p>
										<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-gray-300"> </i>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="h-auto px-2">
					<!-- 3번째 -->
					<div class="w-100 h-100 hover-animate"
						data-marker-id="59c0c8e3a31e62979bf147c9">
						<div class="card h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden gradient-overlay">
								<img class="img-full-main-jh" src="<%=path%>/resources/img/museum-3.PNG"
									alt="Modern Apt - Vibrant Neighborhood!" /> <a
									class="tile-link" href="detail-rooms.html"></a>
								<div class="card-img-overlay-top text-end">
									<a class="card-fav-icon position-relative z-index-40"
										href="javascript: void();"> <svg
											class="svg-icon text-white">
                                            <use xlink:href="#heart-1"> </use>
                                            </svg>
									</a>
								</div>
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h6 class="card-title">
										<a class="text-decoration-none text-dark h5"
											href="detail-rooms.html">국립해양박물관</a>
									</h6>
									<div class="d-flex card-subtitle mb-3">
										<p class="flex-grow-1 mb-0 text-muted text-sm">부산시</p>
										<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-gray-300"> </i><i
												class="fa fa-star text-gray-300"> </i>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="h-auto px-2">
					<!-- 4번째 -->
					<div class="w-100 h-100 hover-animate"
						data-marker-id="59c0c8e3503eb77d487e8082">
						<div class="card h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden gradient-overlay">
								<img class="img-full-main-jh" src="<%=path%>/resources/img/museum-4.PNG"
									alt="Sunny Private Studio-Apartment" /> <a class="tile-link"
									href="detail-rooms.html"></a>
								<div class="card-img-overlay-bottom z-index-20"></div>
								<div class="card-img-overlay-top text-end">
									<a class="card-fav-icon position-relative z-index-40"
										href="javascript: void();"> <svg
											class="svg-icon text-white">
                                            <use xlink:href="#heart-1"> </use>
                                            </svg>
									</a>
								</div>
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h6 class="card-title">
										<a class="text-decoration-none text-dark h5"
											href="detail-rooms.html">국립 한글박물관</a>
									</h6>
									<div class="d-flex card-subtitle mb-3">
										<p class="flex-grow-1 mb-0 text-muted text-sm">서울시</p>
										<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-gray-300"> </i>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 두번째 줄 박물관 -->
		<div class="swiper-container pt-3 w-100"
			data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
			<div class="swiper-wrapper pb-5">
				<div class="h-auto px-2">
					<!-- 1번째 -->
					<div class="w-100 h-100 hover-animate"
						data-marker-id="59c0c8e33b1527bfe2abaf92">
						<div class="card h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden gradient-overlay">
								<img class="img-full-main-jh" src="<%=path%>/resources/img/museum-5.PNG"
									alt="Modern, Well-Appointed Room" /> <a class="tile-link"
									href="detail-rooms.html"></a>
								<div class="card-img-overlay-bottom z-index-20"></div>
								<div class="card-img-overlay-top text-end">
									<a class="card-fav-icon position-relative z-index-40"
										href="javascript: void();"> <svg
											class="svg-icon text-white">
                                          <use xlink:href="#heart-1"> </use>
                                          </svg>
									</a>
								</div>
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h6 class="card-title">
										<a class="text-decoration-none text-dark h5"
											href="detail-rooms.html">서울공예박물관</a>
									</h6>
									<div class="d-flex card-subtitle mb-3">
										<p class="flex-grow-1 mb-0 text-muted text-sm">서울시</p>
										<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="h-auto px-2">
					<!-- 2번째 -->
					<div class="w-100 h-100 hover-animate"
						data-marker-id="59c0c8e322f3375db4d89128">
						<div class="card h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden gradient-overlay">
								<img class="img-full-main-jh" src="<%=path%>/resources/img/museum-7.PNG"
									alt="Cute Quirky Garden apt, NYC adjacent" /> <a
									class="tile-link" href="detail-rooms.html"></a>
								<div class="card-img-overlay-top text-end">
									<a class="card-fav-icon position-relative z-index-40"
										href="javascript: void();"> <svg
											class="svg-icon text-white">
                                          <use xlink:href="#heart-1"> </use>
                                          </svg>
									</a>
								</div>
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h6 class="card-title">
										<a class="text-decoration-none text-dark h5"
											href="detail-rooms.html">국립항공박물관</a>
									</h6>
									<div class="d-flex card-subtitle mb-3">
										<p class="flex-grow-1 mb-0 text-muted text-sm">서울시</p>
										<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-gray-300"> </i>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="h-auto px-2">
					<!-- 3번째 -->
					<div class="w-100 h-100 hover-animate"
						data-marker-id="59c0c8e3a31e62979bf147c9">
						<div class="card h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden gradient-overlay">
								<img class="img-full-main-jh" src="<%=path%>/resources/img/museum-8.PNG"
									alt="Modern Apt - Vibrant Neighborhood!" /> <a
									class="tile-link" href="detail-rooms.html"></a>
								<div class="card-img-overlay-top text-end">
									<a class="card-fav-icon position-relative z-index-40"
										href="javascript: void();"> <svg
											class="svg-icon text-white">
                                          <use xlink:href="#heart-1"> </use>
                                          </svg>
									</a>
								</div>
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h6 class="card-title">
										<a class="text-decoration-none text-dark h5"
											href="detail-rooms.html">대한민국역사박물관</a>
									</h6>
									<div class="d-flex card-subtitle mb-3">
										<p class="flex-grow-1 mb-0 text-muted text-sm">부산시</p>
										<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-gray-300"> </i><i
												class="fa fa-star text-gray-300"> </i>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="h-auto px-2">
					<!-- 4번째 -->
					<div class="w-100 h-100 hover-animate"
						data-marker-id="59c0c8e3503eb77d487e8082">
						<div class="card h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden gradient-overlay">
								<img class="img-full-main-jh" src="<%=path%>/resources/img/museum-6.PNG"
									alt="Sunny Private Studio-Apartment" /> <a class="tile-link"
									href="detail-rooms.html"></a>
								<div class="card-img-overlay-bottom z-index-20"></div>
								<div class="card-img-overlay-top text-end">
									<a class="card-fav-icon position-relative z-index-40"
										href="javascript: void();"> <svg
											class="svg-icon text-white">
                                          <use xlink:href="#heart-1"> </use>
                                          </svg>
									</a>
								</div>
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h6 class="card-title">
										<a class="text-decoration-none text-dark h5"
											href="detail-rooms.html">옛길 박물관</a>
									</h6>
									<div class="d-flex card-subtitle mb-3">
										<p class="flex-grow-1 mb-0 text-muted text-sm">경북 문경시</p>
										<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-gray-300"> </i>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<nav aria-label="Page navigation example">
		<ul
			class="mb-4-jh pagination pagination-template d-flex justify-content-center">
			<li class="page-item"><a class="page-link" href="#"> <i
					class="fa fa-angle-left"></i></a></li>
			<li class="page-item active"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"> <i
					class="fa fa-angle-right"></i></a></li>
		</ul>
	</nav>
</section>
<%@ include file="/views/common/footer.jsp"%>