<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--외부라이브러리로 지원되는 태그를 사용하기 위한 import 입니다.  -->   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listView.jsp-화면 출력 페이지</title>
</head>
<body>
${list }
<!-- request.getAttribute("list") 실행 + List<MemberDto> 타입변환 + 출력 -->
<!-- 출력을 반복해서 테이블 tr 태그에 넣기 : jstl .애트리뷰트(자바빈)은 자바for로는 못함. -->
<ul><!--list 애트리뷰트는 컬렉션이므로 하나씩 가져와서  vo에 저장  -->
<c:forEach items="${list }" var="vo">
	<li>${vo.custno }</li>	<!--vo.getCustno()  -->
	<li>${vo.custname }</li>
	<li>${vo.phone }</li>
	<li>${vo.address }</li>
</c:forEach>
</ul>

</body>
</html>