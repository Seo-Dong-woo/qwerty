<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 class="sectiontitle">${sessionScope.name}님의 구매 목록</h2>
  <table class="table">
   <tr>
    <th class="text-center">번호</th>
    <th class="text-center"></th>
    <th class="text-center">상품명</th>
    <th class="text-center">가격</th>
    <th class="text-center">수량</th>
    <th class="text-center">총구매가격</th>
    <th class="text-center"></th>
   </tr>
   <c:forEach var="vo" items="${list}">
     <tr>
        <td class="text-center">${vo.cart_no }</td>
	    <td class="text-center">
	      <img src="${vo.gvo.poster }" style="width: 30px;height: 30px">
	    </td>
	    <td>${vo.gvo.title }</td>
	    <td class="text-center">${vo.gvo.selling_price }</td>
	    <td class="text-center">${vo.amount }</td>
	    <td class="text-center">${vo.price * vo.amount }</td>
     </tr>
   </c:forEach>
  </table>
</body>
</html>