<%--
  Created by IntelliJ IDEA.
  User: xidong
  Date: 2018/5/26
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ':' + request.getServerPort() + path + '/';
    out.write(basePath);
%>
<html>
<head>
    <title>$Title$</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="<%=basePath%>plugins/layui-v2.3.0/css/layui.css">
</head>
<body>
<div class="layui-container">

    <div class="layui-col-md2 layui-col-space5">haha</div>
    <div class="layui-col-md2">lala</div>

    <div class="layui-col-md4">
        <input type="text" class="layui-input" id="test1">
    </div>

    <form class="layui-form layui-form-pane" action="">
        内部结构都一样，值得注意的是 复选框/开关/单选框 这些组合在该风格下需要额外添加 pane属性（否则会看起来比较别扭），如：
        <div class="layui-form-item">
            <label class="layui-form-label">单选框</label>
            <div class="layui-input-block">
                <input type="radio" name="sex" value="男">
                <input type="radio" name="sex" value="女" title="女" checked>
            </div>
        </div>
    </form>
</div>

<div id="rateTest"></div>


<div id="pageTest"></div>

<div class="layui-tab"></div>


<div >
    <input type="file" />
</div>

<table id="tableDemo"></table>
</body>
<script type="text/javascript" src="<%=basePath%>plugins/layui-v2.3.0/layui.js"></script>

<script >
    layui.use(['laydate','form','layer','rate','laypage'],function () {
      var  laydate=layui.laydate;
      var  form=layui.form;
      var layer=layui.layer;
      var rate=layui.rate;
      var  table=layui.table;
        laydate.render({
            elem: '#test1' ,//指定元素
            type:'month'
        });

        /*layer.confirm('is not?',{icon: 3, title:'提示'},function(index){
            alert(index);
        if(index){

        }
        });*/


       // layer.prompt('确认删除吗');

        //layer.msg('学习layui');


        layer.tab({
            area: ['600px', '300px'],
            tab: [{
                title: 'TAB1',
                content: '内容1'
            }, {
                title: 'TAB2',
                content: '内容2'
            }, {
                title: 'TAB3',
                content: '内容3'
            }]
        });



        layer.prompt(
            function(value,index,elem){
                alert(value);
                layer.close(index);
            });

        rate.render({
            elem:'#rateTest'
        });

        var laypage=layui.laypage;

        laypage.render({
        elem:'pageTest',
            count:69,
        });

        table.render({
            elem: '#tableDemo',
            url: basePath+'',
            cols: [[{
                title: '名称',
                field: 'name',
                template:'#templateDemo',
            }]]
        });
    });


</script>

<scrip type=""></scrip>
</html>
