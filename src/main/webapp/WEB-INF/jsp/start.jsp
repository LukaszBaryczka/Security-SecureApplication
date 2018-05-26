<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:layout>
Hello ${name}
</t:layout>

<div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script>
        $('#btnsubmit').on('click',function()
        {
            $(this).val('Please wait ...')
                .attr('disabled','disabled');
            $('#theForm').submit();
        });
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script>
        $('#btnsubmit1').on('click',function()
        {
            $(this).val('Please wait ...')
                .attr('disabled','disabled');
            $('#DOWOLNE').submit();
        });
    </script>


    <script>
        $('#jquery').submit(function()
        {
            $("input[type='submit']", this)
                .val("Please Wait...")
                .attr('disabled', 'disabled');

            return true;
        });

    </script>


    <body onload = "setTimeout('enable()', 1000)">


    <script type = "text/javascript">

        function checkStateInDatabase(){
            var submittedAlready=false;
            var x = document.getElementById("addCommentToDatabase");
            x.disabled = true;
            x.value = "Saving and verifing comment in datebase....";
            setTimeout('checkInDatabase()', 2000);

        }

        function checkInDatabase() {
            var x = document.getElementById("addCommentToDatabase");
            x.value = "Sucessful added";
            setTimeout('backToDefault()', 1000);
        }

        function backToDefault(){
            var x = document.getElementById("addCommentToDatabase");
            x.disabled = false;
            x.value = "Add comment";
        }

        function simpleDisable() {
            var x = document.getElementById("submitButtonID");
            x.disabled=true;

        }

        function commentAdd(formObj) {
            alert('Comment added');
            formObj.submitButton.disabled = true;
            return true;
        }

        function enable() {
            var x = document.getElementById("addComment");
            x.value = "Add comment";
            x.disabled = false;
        }

        function disable() {
            var x = document.getElementById("addComment");
            x.value = "Adding comment...";
            x.disabled = true;
            setTimeout('enable()', 2000);
        }
    </script>

    <div>

        <form:form modelAttribute="commentForm" action="/comment" method="POST">
            <form:textarea type="text" path="content"/>
            <div>
                <div class="form-actions">
                    <form:button type="submit" class="btn">comment</form:button>
                </div>
            </div>


        <p>Check connection connect database</p>
            <form:button type = "submit" id = "addCommentToDatabase" class="btn" value = "Add comment" onclick = "checkStateInDatabase()"> Add comment</form:button>

        <p>JQuery</p>
        <form:button  type="submit" class="btn" value="Add comment" id='btnsubmit'>Add comment</form:button>

        <p>JQuery</p>
            <form:button  type="submit" class="btn" value="Add comment" id='btnsubmit1'>Add comment</form:button>

        <p>Disable for some time</p>
            <form:button type = "submit" id = "addComment" class="btn" onclick = "disable()" >Add comment </form:button>


        <p>Simple disable</p>
        <form:button name="submitButton" type="submit" value="Add comment"  onclick="this.disabled=true" >Add comment</form:button>


        <p>By alert</p>
            <form:button type="submit" name="submitButton" value="Add comment" onclick="return commentAdd(this);">Add comment</form:button>


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
</div>

<br>
