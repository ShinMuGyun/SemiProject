<%@page import="common.PageInfo"%>
<%@page import="culture.CultureDiVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

<%
	int cnt = 1;
	
	List<CultureDiVo> list = (List<CultureDiVo>)request.getAttribute("list");
	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	
	String value1 = "";
	String value2 = "";
	String value3 = "";
	String value4 = "";
	
	String value1ParamValue = request.getParameter("value1");
	String value2ParamValue = request.getParameter("value2");
	String value3ParamValue = request.getParameter("value3");
	String value4ParamValue = request.getParameter("value4");
	
	if(value1ParamValue != null && value1ParamValue.length() > 0){
		
		value1 = request.getParameter("value1");
	}
	if(value2ParamValue != null && value2ParamValue.length() > 0){
		
		value2 = request.getParameter("value2");
	}
	if(value3ParamValue != null && value3ParamValue.length() > 0){
		
		value3 = request.getParameter("value3");
	}
	if(value4ParamValue != null && value4ParamValue.length() > 0){
		
		value4 = request.getParameter("value4");
	}
%>

<style>
/*페이지바*/
	div#pageBar{margin-top:10px; text-align:center; background-color:rgba(0, 188, 212, 0.3);}
</style>



<!-- 필터박스 부분 -->
<form class="form-yj">

	<!-- 검색창 부분 -->
	<br>
	<br>
	<div class="search-yj">
		<i class="fas fa-search fa-search-yj"></i>
		<input type="text" id="query" placeholder="문화재명 검색" name="value1" value="<%=value1 %>">
	</div>
	

	<fieldset class="filter-yj">
		<br> <b>지정 종목</b> 
		<label><input type="radio" id="typefilter" name="value2" value="국보" > 
		국보&nbsp;&nbsp;</label>
		<label><input type="radio" id="typefilter" name="value2" value="보물" > 
		보물&nbsp;&nbsp;</label>
		<label><input type="radio" id="typefilter" name="value2" value="사적" > 
		사적&nbsp;&nbsp;</label>
		<label><input type="radio" id="typefilter" name="value2" value="천연기념물" > 
		천연기념물&nbsp;&nbsp;</label>
		
		<br> <br>
		
		<hr class="hr-yj">
		
		<br> <b>시대별</b> 
		
		<label><input type="radio" id="value3" name="value3" value="선사시대" >
		선사시대 	&nbsp;&nbsp;</label> 
		<label><input type="radio" id="value3" name="value3" value="원삼국시대">
		원삼국시대&nbsp;&nbsp;</label> 
		<label><input type="radio" id="value3" name="value3" value="삼국시대" >
		삼국시대   &nbsp;&nbsp;</label> 
		<label><input type="radio" id="value3" name="value3" value="남북국시대">
		남북국시대&nbsp;&nbsp;</label>
		<label><input type="radio" id="value3" name="value3" value="고려시대" >
		고려시대   &nbsp;&nbsp;</label> 
		<label><input type="radio" id="value3" name="value3" value="조선시대" >
		조선시대   &nbsp;&nbsp;</label> 
		                                                                               
		<br> 
		
		<label><input type="radio" id="value3" name="value3" value="대한제국시대" >
		대한제국시대 &nbsp;&nbsp;</label> 
		<label><input type="radio" id="value3" name="value3" value="시대미상" >	
		시대미상    &nbsp;&nbsp;</label>
		
		<br>
		<br>
		
		<hr class="hr-yj">
		
		<br> <b>지역별</b> 
		
		<label><input type="radio" id="value4" name="value4" value="수도권"  >
		수도권&nbsp;&nbsp;</label>  
		<label><input type="radio" id="value4" name="value4" value="충청권" >
		충청권&nbsp;&nbsp;</label> 
		<label><input type="radio" id="value4" name="value4" value="강원권" >
		강원권&nbsp;&nbsp;</label>  
		<label><input type="radio" id="value4" name="value4" value="전라권" >
		전라권&nbsp;&nbsp;</label>
		<label><input type="radio" id="value4" name="value4" value="경상권" >
		경상권&nbsp;&nbsp;</label> 
		<label><input type="radio" id="value4" name="value4" value="제주권" >
		제주권&nbsp;&nbsp;</label> 
                                                                            
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
<%for(CultureDiVo c : list){%>
	<div class="box1-yj">
		<%if(cnt == 4 || cnt == 7) {cnt++; %>
			<br>
		<%} %>
		
		<%if(c.getImageUrl() == null) {%>
			<img src="<%=path%>/resources/img/culture/culimg.jpg" alt="" class="img01-yj">
		<%} else {%>
			<img src="<%=c.getImageUrl() %>" alt="" class="img01-yj">
		<%} %>
		
		<br><%=c.getCcmaName() %><br>
		<br>
		<b><%=c.getCcbaMnm1() %></b>
	</div>
<%} %>
</div>

<br>
<br>
<br>
<br>

<%-- 페이지부 시작 --%>
<div id="pageBar">
	<%-- 처음으로 가기	 --%>
	<button onclick="movePage('<%=path%>/culList?page=<%=pageInfo.getStartPage()%>');">&lt;&lt;</button>
	<%-- 이전으로 가기	 --%>
	<button onclick="movePage('<%=path%>/culList?page=<%=pageInfo.getPrvePage()%>');">&lt;</button>

	<!-- 10개 목록 출력하기 -->
	<% for(int i = pageInfo.getStartPage(); i <= pageInfo.getEndPage(); i++){ %>
		<%if(i == pageInfo.getCurrentPage()){ %>
			<button disabled><%=i%></button>
		<%} else {%>
			<button onclick="movePage('<%=path%>/culList?page=<%=i%>');"><%=i%></button>
		<%} %>
	<%} %>
	
	<%-- 다음으로 가기	 --%>
	<button onclick="movePage('<%=path%>/culList?page=<%=pageInfo.getNextPage()%>');">&gt;</button>
	
	<%-- 마지막으로 가기	 --%>
	<button onclick="movePage('<%=path%>/culList?page=<%=pageInfo.getEndPage()%>');">&gt;&gt;</button>
</div>
<%-- 페이지부 종료 --%>


<script type="text/javascript">
function movePage(pageUrl){
	alert(pageUrl)
	try{
		var value1 = document.getElementById("value1"); // 문화재명
		var value2 = document.getElementById("value2"); // 종목명
		var value3 = document.getElementById("value3"); // 시대명
		var value4 = document.getElementById("value4"); // 지역명
		
		
		if(value1 != null && value1.length > 0 ){
			pageUrl = pageUrl + '&value1=' + value1.value;
		}
		
		if(value1 != null && value2.length > 0 ){
			pageUrl = pageUrl + '&value2=' + value2.value;
		}
		
		if(value3 != null && value3.length > 0 ){
			pageUrl = pageUrl + '&value3=' + value3.value;
		}
		
		if(value4 != null && value4.length > 0 ){
			pageUrl = pageUrl + '&value4=' + value4;
		}
		
		alert(pageUrl);
		location.href = encodeURI(pageUrl);
	}
	catch (e) {}	
}

</script>

<%@ include file="/views/common/footer.jsp"%>
