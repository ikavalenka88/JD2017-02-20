<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="inc_header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal" action="do" method="post">
<fieldset>

<!-- Form Name -->
<legend>Пользователь</legend>

<input type="hidden" name="command" value="UserEdit" />
<input type="hidden" name="id" value="${user.id}">

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="login">Имя пользователя</label>
  <div class="col-md-4">
    <input class="form-control input-md" type="text" id="login" name="login" value="${user.login}" placeholder="" required="true">
    <span class="help-block">Минимум 5 символов</span>
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Пароль</label>
  <div class="col-md-4">
    <input class="form-control input-md" type="password" id="password" name="password" value="${user.password}" placeholder="" required="true">
    <span class="help-block">Минимум 5 символов</span>
  </div>
</div>

<!-- Email input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Адрес электронной почты</label>
  <div class="col-md-4">
    <input class="form-control input-md" type="text" id="email" name="email" value="${user.email}" placeholder="">
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="role">Роль</label>
  <div class="col-md-4">
    <select class="form-control" id="role" name="id_role">
      <c:forEach var="role" items="${roles_spr}">
        <option value="${role.id}" <c:if test="${role.id == user.idRole}">selected</c:if>>${role.name}</option>
      </c:forEach>
    </select>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="action"></label>
  <div class="col-md-4">
    <c:if test='${param.action.equals("create") || param.action.equals("update")}'>
    <button class="btn btn-success" type="submit" id="action" name="action" value="${param.action}_exec">
    Сохранить
    </button>
    </c:if>
    <c:if test='${action.equals("create_exec") || param.action.equals("update_exec")}'>
    <button class="btn btn-success" type="submit" id="action" name="action" value="${action}">
    Сохранить
    </button>
    </c:if>
    <c:if test='${param.action.equals("delete") || action.equals("delete")}'>
    <button class="btn btn-danger" type="submit" id="action" name="action" value="${param.action}_exec">
    Удалить
    </button>
    </c:if>
    <c:if test='${param.action.equals("delete_exec") || action.equals("delete_exec")}'>
    <button class="btn btn-danger" type="submit" id="action" name="action" value="${action}">
    Удалить
    </button>
    </c:if>
  </div>
</div>

</fieldset>
</form>

<%@ include file="inc_footer.jsp" %>
