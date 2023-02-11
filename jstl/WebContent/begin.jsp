<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="h" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="end.jsp">
<h:set var="v" value="mihir" scope="session"></h:set>
${v}
<br>
<h:out value="${v}"></h:out><br>
<h:forEach begin="0" end="17" var="x">${x}<br> </h:forEach>
<h:set var="i" value="2"></h:set>
<h:if test="${i gt 3}">
<h:out value="${v}"></h:out><br>
</h:if>
<h:choose>
<h:when test="${x eq 16}"><h:out value="${v}"><br></h:out></h:when>
<h:when test="${i le 2}"><h:out value="${v}"><br></h:out></h:when>

<h:otherwise><h:out value="hihi"><br></h:out></h:otherwise>
</h:choose>


<div style="width:200px;height:10px;float:left">
first  name   :
</div> 
<div><input type="text" value="fname" name="fn" id="fname"/><br>
</div>
<div style="width:200px;height:80px;float:left">
hobbies:</div><div><input type="checkbox" name="hobbie"  value="cricket"/>cricket<br>        
<input type="checkbox" name="hobbie"  value="volleyball"/>volleyball<br>        
<input type="checkbox" name="hobbie"  value="kabbadi"/>kabbadi<br></div>
<div style="width:200px;height:10px;float:left">
 <input type="submit"/>
<h:forTokens items="m,i,h,i,r" delims="," var="t"><h:out value="${t}"></h:out ></h:forTokens>
<h:set var="y"></h:set>
</form>
</body>
</html>