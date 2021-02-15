

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <h3 class="w-100 text-center  my-5">Выбрать товар</h3>
    <div class="w-100 d-flex justify-content-center"    
        <form method="post" action="purchaseFurniture">
        <select class="form-control" name="furnitureId">
          <option value="">Выберите товар:</option>
              <c:forEach var="furniture" items="${listFurnitures}" varStatus="status">
                  <option value="${furniture.id}">Название: ${furniture.name} | Цвет: ${furniture.color} | Размер: ${furniture.size} | Количество: ${furniture.quantity} | Цена: ${furniture.price}</option>
              </c:forEach>
        </select>
        <input class="m-2" type="submit" name="submit" value="Купить товар">
        </form>
    </div>  
    <div class="w-100 my-4">
        <div class="row w-100 d-flex justify-content-center border">
            <h4>${user.buyer.firstname} ${user.buyer.lastname} купил следующие товары:</h4>
        </div>
        <div class="row w-100 d-flex justify-content-center">
            <c:forEach var="furniture" items="${listBoughtFurnitures}">
                <!--список купленных пользователем товара-->
                <div class="card col m-2 text-center" style="min-width: 12rem;">
                <img src="insertFile/${furniture.cover.path}" class="mx-auto img-thumbnail" style="max-width: 7rem; max-height: 10rem" class="card-img-top" alt="${furniture.cover.description}">
                <div class="card-body">
                  <h5 class="card-title">${furniture.name}</h5>
                  <p class="card-text">${furniture.color}</p>
                  <p class="card-text">${furniture.size}</p>
                  <p class="card-text">${furniture.quantity}</p>
                  <p class="card-text">Цена: ${furniture.price}</p>
                  <a href="boughtFurniture?furnitureId=${furniture.id}" class="btn btn-primary btn-sm">Просмотреть товар</a>
                </div>
              </div>       
            </c:forEach>
        </div>
    </div>
