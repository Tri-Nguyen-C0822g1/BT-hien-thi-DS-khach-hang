<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1 style=""><%= "Danh sach khach hang" %></h1><br/>
<c:set var="cust" value="${[[ 'Ngô Kiều Phú', '1/1/2011', 'Quận 10', 'https://image-us.24h.com.vn/upload/1-2022/images/2022-03-16/baukrysie_275278910_3174792849424333_1380029197326773703_n-1647427653-670-width1440height1800.jpg'],
[ 'Lê Hoàng Trung', '12/12/2012', 'Quận 5', 'https://image.thanhnien.vn/w1024/Uploaded/2022/tnabtw/2021_12_09/ta03-7305.jpg'],
[ 'Trương Mai', '12/12/2012', 'Thủ Đức', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Young_girl_smiling_in_sunshine_%282%29.jpg/1200px-Young_girl_smiling_in_sunshine_%282%29.jpg']]}" scope="application"/>
<table style="border: 1px solid">
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="cust" items="${cust}">
        <tr style="border: 1px solid red">
            <td>${cust[0]}</td>
            <td>${cust[1]}</td>
            <td>${cust[2]}</td>
            <td><img style="width: 50px; height: 50px" src="${cust[3]}"></td>
        </tr>
    </c:forEach>


</table>

</body>
</html>