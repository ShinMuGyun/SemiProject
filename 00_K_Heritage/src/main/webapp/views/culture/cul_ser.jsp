<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

<!-- 검색창 부분 -->
<br>
<br>
<div class="search-yj">
	<i class="fas fa-search fa-search-yj"></i> <input type="text"
		id="query" value="" placeholder="검색">
</div>

<!-- 필터박스 부분 -->
<form class="form-yj">
	<fieldset class="filter-yj">
		<br> <b>지정 종목</b> <input type="checkbox" id="typefilter">
		<label for="typefilter">국보</label> <input type="checkbox"
			id="typefilter"> <label for="typefilter">보물</label> <input
			type="checkbox" id="typefilter"> <label for="typefilter">사적</label>
		<input type="checkbox" id="typefilter"> <label
			for="typefilter">천연기념물</label> <br> <br>
		<hr class="hr-yj">
		<br> <b>시대별</b> <input type="checkbox" id="typefilter"> <label
			for="typefilter">선사시대</label> <input type="checkbox" id="typefilter">
		<label for="typefilter">원삼국시대</label> <input type="checkbox"
			id="typefilter"> <label for="typefilter">삼국시대</label> <input
			type="checkbox" id="typefilter"> <label for="typefilter">남북국시대</label>
		<input type="checkbox" id="typefilter"> <label
			for="typefilter">고려시대</label> <input type="checkbox" id="typefilter">
		<label for="typefilter">조선시대</label> <br> <input type="checkbox"
			id="typefilter"> <label for="typefilter">대한제국시대</label> <input
			type="checkbox" id="typefilter"> <label for="typefilter">시대미상</label>
		<br>
		<br>
		<hr class="hr-yj">
		<br> <b>지역별</b> <input type="checkbox" id="typefilter"> <label
			for="typefilter">수도권</label> <input type="checkbox" id="typefilter">
		<label for="typefilter">충청권</label> <input type="checkbox"
			id="typefilter"> <label for="typefilter">강원권</label> <input
			type="checkbox" id="typefilter"> <label for="typefilter">전라권</label>
		<input type="checkbox" id="typefilter"> <label
			for="typefilter">경상권</label> <input type="checkbox" id="typefilter">
		<label for="typefilter">제주권</label>

	</fieldset>

	<div class="btn-yj">
		<button type="submit" id="submit-btn-yj">적용</button>
		<button type="reset" id="reset-btn-yj">초기화</button>
	</div>
</form>

<hr>
<br>

<!-- 사진 부분 -->
<div class="box-parent-yj" style="text-align: center;">
	<div class="box1-yj">
		<img src="<%=path %>/resources/img/1.jpg" alt="" class="img01-yj"><br>국보<br>
		<br>
		<b>구미 선산읍 금동여래입상</b>
	</div>
	<div class="box2-yj">
		<img src="<%=path %>/resources/img/2.jpg" alt="" class="img02-yj"><br>국보<br>
		<br>
		<b>안심사 영산회 괘불탱</b>
	</div>
	<div class="box3-yj">
		<img src="<%=path %>/resources/img/3.jpg" alt="" class="img03-yj"><br>국보<br>
		<br>
		<b>서울 숭례문</b>
	</div>
	<div class="box4-yj">
		<img src="<%=path %>/resources/img/4.jpg" alt="" class="img01-yj"><br>국보<br>
		<br>
		<b>백자 달항아리</b>
	</div>
	<br>

	<div class="box5-yj">
		<img src="<%=path %>/resources/img/5.jpg" alt="" class="img05-yj"><br>국보<br>
		<br>
		<b>충주 탑평리 칠층석탑</b>
	</div>
	<div class="box6-yj">
		<img src="<%=path %>/resources/img/6.jpg" alt="" class="img06-yj"><br>국보<br>
		<br>
		<b>청자 기린형뚜껑 향로</b>
	</div>
	<div class="box7-yj">
		<img src="<%=path %>/resources/img/7.jpg" alt="" class="img07-yj"><br>국보<br>
		<br>
		<b>천마총 금관</b>
	</div>
	<div class="box8-yj">
		<img src="<%=path %>/resources/img/8.jpg" alt="" class="img08-yj"><br>국보<br>
		<br>
		<b>충주 고구려비</b>
	</div>
	<br>

	<div class="box9-yj">
		<img src="<%=path %>/resources/img/9.jpg" alt="" class="img09-yj"><br>국보<br>
		<br>
		<b>경주 석굴암 석굴</b>
	</div>
	<div class="box10-yj">
		<img src="<%=path %>/resources/img/10.jpg" alt="" class="img10-yj"><br>국보<br>
		<br>
		<b>조선태조어진</b>
	</div>
	<div class="box11-yj">
		<img src="<%=path %>/resources/img/11.jpg" alt="" class="img11-yj"><br>국보<br>
		<br>
		<b>합천 해인사 장경판전</b>
	</div>
	<div class="box12-yj">
		<img src="<%=path %>/resources/img/12.jpg" alt="" class="img12-yj"><br>국보<br>
		<br>
		<b>백제 금동대향로</b>
	</div>
</div>

<br>


<br>
<br>
<br>
<%@ include file="/views/common/footer.jsp"%>
