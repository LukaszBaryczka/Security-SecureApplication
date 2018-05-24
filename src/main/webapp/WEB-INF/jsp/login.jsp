<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div>
    <form name="loginForm" action="/login" method="post">
        <label for="username">Username</label>
        <input type="text" id="username" name="username"/>
        <label for="password">Password</label>
        <input type="password" id="password" name="password"/>
        <div class="form-actions">
            <button type="submit" class="btn">Log in</button>
        </div>
    </form>
</div>