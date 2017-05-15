<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="include/begin-html.jsp" %>
<h3>${message}</h3>

<div class="row">
<c:forEach items="${cars}" var="car">


  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <div class="caption">
        <h2>${car.mark} ${car.model}</h2>
        <h4>${car.price}$ за день</h4>
        <p>${car.hp} HP</p>
        <form action="do?command=cars" method="POST">
         <input type="hidden" name="id" value="${car.id}"/>
         <c:forEach items="${orders}" var="order">
         <c:choose>
         <c:when test="${car.id!=order.fk_Cars}">
        <p><button class="btn btn-success" name="choosecars">Арендовать</button></p>
        </c:when>
        <c:otherwise>
        <p><button class="btn btn-danger" name="choosecars">Забронирована</button></p>
        </c:otherwise>
        </c:choose>
</c:forEach>
        </form>
        <p>Месторасположение: ${car.location}  <span class="glyphicon glyphicon-globe" aria-hidden="true"></span></p>
        <p>Объем багажника: ${car.luggageCapacity} <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span></p>
        <p>Колличество мест для пассажиров: ${car.seats}  <span class="glyphicon glyphicon-user" aria-hidden="true"></span></p>
        <p>Средний расход: ${car.fuelConsumption} литров/100км  <span class="glyphicon glyphicon-filter" aria-hidden="true"></span></p>
      </div>
    </div>
  </div>


</c:forEach>
</div>




<%@ include file="include/end-html.jsp" %>