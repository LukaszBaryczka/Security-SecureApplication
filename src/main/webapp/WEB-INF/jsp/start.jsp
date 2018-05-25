<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:layout>
Hello ${name}
</t:layout>



<br>

<div>
    <form:form modelAttribute="commentForm" action="/comment" method="POST">
        <form:textarea type="text" path="content"/>
        <div class="form-actions">
            <form:button type="submit" class="btn">comment</form:button>
        </div>
    </form:form>
</div>


<br>
<br>
Komentarze:
<br>
<br>

<c:forEach items="${comments}" var="comment">
    <b>${comment.username}</b>
    <br>
    <c:out value="${comment.content}"/>
    <br>
</c:forEach>