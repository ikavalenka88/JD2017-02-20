<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="inc_header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal" action="do" method="post">
<fieldset>

<!-- Form Name -->
<legend>Товар</legend>

<input type="hidden" name="command" value="TovarEdit" />
<input type="hidden" name="id" value="${tovar.id}">

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="name">Наименование</label>
  <div class="col-md-4">
    <input class="form-control input-md" type="text" id="name" name="name" value="${tovar.name}" placeholder="" required="true">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="edizm">Единица измерения</label>
  <div class="col-md-4">
    <input class="form-control input-md" type="text" id="edizm" name="edizm" value="${tovar.edizm}" placeholder="" required="true">
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
