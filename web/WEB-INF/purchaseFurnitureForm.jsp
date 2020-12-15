

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Купить товар</title>
  </head>
  <body>
    <h1>Купить товар</h1>
    <a href="index.jsp"><Магазин></a><br>
        <p>Выберите товар</p>
        <form method="post" action="purchaseFurniture">
        <select name="furnitureId">
          <option value="">Выберите товар:</option>
              <c:forEach var="furniture" items="${listFurnitures}" varStatus="status">
                  <option value="${furniture.id}">Название: ${furniture.name}.  Цвет: ${furniture.color}. Размер: ${furniture.size}. Количество: ${furniture.quantity}. Цена: ${furniture.price}</option>
              </c:forEach>
        </select>
        <p>Выберите покупателя</p>
        <select name="buyerId">
          <option value="">Выберите покупателя:</option>
              <c:forEach var="buyer" items="${listBuyers}" varStatus="status">
                  <option value="${buyer.id}">Имя: ${buyer.firstname}. Фамилия: ${buyer.lastname}. Телефон: ${buyer.phone}. Наличные: ${buyer.wallet}.</option>
              </c:forEach>
        </select>
        <br><br>
        
        <input type="submit" name="submit" value="Купить товар">
        </form>

  </body>
</html>