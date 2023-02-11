<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="t" uri="http://java.sun.com/jstl/sql_rt" %>
    <%@ taglib prefix="y" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<t:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/testdb" user="root" password="root" var="i"/>
<t:update  dataSource="${i}">update demo set fname="mike",lname="jackson" where stid="1";</t:update>
<t:update dataSource="${i}">insert into demo(fname,lname) values("mihir","shah")</t:update> 
<t:query var="i" dataSource="${i}">select * from demo;</t:query>
<y:forEach items="${i.rows}" var="u">
${u.fname}
${u.lname}
</y:forEach>
</body>
</html>