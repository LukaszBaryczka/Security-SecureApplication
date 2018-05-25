<%@tag description="Simple Wrapper Tag" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="pl">
<head>
    <meta charset="utf-8">
    <title>Secure application</title>
    <meta name="description" content="Secure application">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
    <style>
        body {
            background-color: #ccccff;
            color: black;
        }

        .content {
            margin: 1%;
            float: left;
        }

        a, input {
            line-height: 20px;
            color: black;
            font-weight: bold;
        }

    </style>
</head>
<body>
<div class="content">
    <section>
        <jsp:doBody/>
    </section>
</div>
</body>
</html>