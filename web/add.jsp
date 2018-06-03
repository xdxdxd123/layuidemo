<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <script>
        var basePath = "<%=basePath%>";
    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="<%=basePath%>plugins/layui-v2.3.0/css/layui.css"/>
    <script type="text/javascript" src="<%=basePath%>plugins/layui-v2.3.0/layui.js"></script>
    <title></title>
</head>
<body>
<div class="layui-form">
    <form id="demoForm">
        <div class="layui-form-item">
            <input type="text" name="name" class="layui-input-block"/>
        </div>
        <div class="layui-form-item">
            <input type="button" lay-filter="add" value="提交" class="layui-btn-radius"/>
        </div>
    </form>

</div>

</body>
<script type="text/javascript">
    layui.use(['form', 'jquery', 'element'], function () {
        var form = layui.form;
        var element = layui.element;
        var $ = layui.jquery;


        form.render(
        );

        element.on('add', function (data) {
            alert('');
            var data = $('#demoForm').serialize();
            $.ajax({
                url: basePath + 'demo/add.do',
                data: data,
                success: function () {
                    console.log($);
                }
            })
        })
    })
</script>
</html>

