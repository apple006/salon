<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--<c:import url="../common/head.jsp"></c:import>--%>
<%--<c:import url="../common/menu.jsp"></c:import>--%>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath }\js\bootstrap\dist\css\bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }\js\jquery.gritter\css\jquery.gritter.css"/>

<link rel="stylesheet" href="${pageContext.request.contextPath }\fonts\font-awesome-4\css\font-awesome.min.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="http\foxythemes.net\assets\js\MS_6.js"></script>
<script src="http\foxythemes.net\assets\js\MS_7.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }\js\jquery.nanoscroller\nanoscroller.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }\js\jquery.easypiechart\jquery.easy-pie-chart.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }\js\bootstrap.switch\bootstrap-switch.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }\js\bootstrap.datetimepicker\css\bootstrap-datetimepicker.min.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }\js\jquery.select2\select2.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }\js\bootstrap.slider\css\slider.css"/>
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }\css\style.css" rel="stylesheet"/>
<style>
    .layui-table-view select[lay-ignore] {
        height: 26px!important;
        line-height: 20px!important;
    }

</style>

<div class="page-head">
    <h2>会员信息回收站</h2>
    <div class="input-group">
        <input id="searchItem" type="text" class="form-control col-md-6"
               placeholder="请输入会员卡号或者姓名或者手机号信息..."/> <label
            class="input-group-btn col-bg-0"> <i
            class="btn btn-primary fa fa-search" id="searchBtn"></i></label>
    </div>
</div>
<div class="cl-mcont">
    <div class="row">
        <div class="col-md-12">
            <div class="block-flat">
                <div class="header">
                    <h3>会员详情</h3>
                </div>
                <div class="content">


                    <div>
                        <div class="layui-btn-group demoTable">
                            <button class="layui-btn" id="checkDemo" data-type="getCheckData">导出</button>
                        </div>

                        <table id="customer" lay-filter="customer">
                        </table>
                        <div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>


<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<!-- layUI层 begin-->
<link rel="stylesheet"
      href="${pageContext.request.contextPath }/layui/css/layui.css"
      media="all">
<script src="${pageContext.request.contextPath }/layui/layui.all.js"></script>


<!-- layUI end-->

<!-- easyUI begin-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/icon.css">

<script src="${pageContext.request.contextPath }/easyui/jquery.easyui.min.js"></script>
<script src="${pageContext.request.contextPath }/easyui/locale/easyui-lang-zh_CN.js"></script>
<!-- easyUI end-->


<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.nanoscroller\jquery.nanoscroller.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.sparkline\jquery.sparkline.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.easypiechart\jquery.easy-pie-chart.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/behaviour\general.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.ui\jquery-ui.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.nestable\jquery.nestable.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.switch\bootstrap-switch.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.datetimepicker\js/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.select2\select2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.slider/js/bootstrap-slider.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.gritter\js/jquery.gritter.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.datatables\jquery.datatables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.datatables\bootstrap-adapter\js/datatables.js"></script>

<script
        src="${pageContext.request.contextPath }/js\jquery.select2\select2.min.js"
        type="text/javascript"></script>
<script
        src="${pageContext.request.contextPath }/js\bootstrap.slider\js\bootstrap-slider.js"
        type="text/javascript"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath }/js\jquery.nanoscroller\jquery.nanoscroller.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath }/js\jquery.nestable\jquery.nestable.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath }/js\behaviour\general.js"></script>
<script
        src="${pageContext.request.contextPath }/js\jquery.ui\jquery-ui.js"
        type="text/javascript"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath }/js\bootstrap.switch\bootstrap-switch.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath }/js\bootstrap.datetimepicker\js\bootstrap-datetimepicker.min.js"></script>


<!-- Bootstrap core JavaScript ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script
        src="${pageContext.request.contextPath }/js\behaviour\voice-commands.js"></script>
<script
        src="${pageContext.request.contextPath }/js\bootstrap\dist\js\bootstrap.min.js"></script>


<script>


    $(function () {
        getLayTables();
    });

    $("#searchBtn").on("click", function () {
        getLayTables();
    });


    function getLayTables() {
        var search = $("#searchItem").val();
        layui.use('table', function (data) {

            var table = layui.table;


            table.render({
                elem: '#customer'
                , filter: 'customer'
                , url: '/customer/getRecycleCustomer.action'
                , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
                , even: true
                , page: true
                , where: {
                    search: search
                }
                , cols: [[
                    {checkbox: true}
                    , {field: 'cardNo', width: 130, title: '会员卡号', sort: true}
                    , {field: 'username', width: 100, title: '姓名'}
                    , {field: 'sex', width: 80, title: '性别', templet: '#customerSex'}
                    , {field: 'mobile', width: 120, title: '手机'}
                    /*  , {field: 'creatDate', width: 130, title: '注册日期', templet: '<div>{{ layui.laytpl.toDateString(d.creatDate) }}</div>'}*/
                    , {
                        field: 'wallet', width: 80, title: '余额',
                        templet: '<div><span style="color: #0a0ccc;">{{d.wallet}}</span>￥</div>'
                    }
                    , {
                        field: 'payMoney', width: 80, title: '上次消费',
                        templet: '<div><span style="color: #cc080a;">{{d.payMoney}}</span>￥</div>'
                    }
                    , { width:270, title: '操作', align: 'center', toolbar: '#barDemo'} //这里的toolbar值是模板元素的选择器
                ]]
                , response: {
                    statusCode: '200'
                }


                , done: function (data) {
                    if (data.code == 200) {


                        //alert(data);
                        $(".col-md-11").hide();
                        $(".col-md-12").show();


                    }
                }
            });


//监听表格复选框选择

            table.on('checkbox(customer)', function (obj) {


            });

//监听工具条
            table.on('tool(customer)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
                var data = obj.data; //获得当前行数据

                var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
                var tr = obj.tr; //获得当前行 tr 的DOM对象


                if (layEvent === 'detail') { //查看
//do somehing
//layer.msg('ID：'+ data.id + ' 的查看操作');
                    var uri = '${pageContext.request.contextPath}/customer/viewCustomer.action?id=' + data.id;
                    layer.open({
                        type: 2,
                        title: '会员卡号为【' + data.cardNo + '】的详细信息如下:',
                        area: ['700px', '550px'],
                        fixed: false, //不固定
                        maxmin: true,
                        content: uri,
                        btn: ['关闭'] //只是为了演示

                        , btn1: function () {
                            layer.closeAll();
                        }

                        , zIndex: layer.zIndex //重点1
                        , success: function (layero) {
                            layer.setTop(layero); //重点2
                        }
                    });
                } else if (layEvent === 'del') { //删除
                    layer.confirm('确定要永久删除该行数据吗？', function (index) {

                        obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                        layer.close(index);
                        //向服务端发送删除指令
                        var uri = '${pageContext.request.contextPath}/customer/deleteCustomerActually.action';
                        var id = data.id;
                        $.ajax({
                            url: uri,
                            type: 'post',
                            dataType: 'json',
                            data: {id: id}
                        });
                    });
                } else if (layEvent === 'back') { //删除
                    layer.confirm('确定恢复该行数据吗？', function (index) {

                        obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                        layer.close(index);
                        //向服务端发送恢复指令
                        var uri = '${pageContext.request.contextPath}/customer/rollBackCustomer.action';
                        var id = data.id;
                        $.ajax({
                            url: uri,
                            type: 'post',
                            dataType: 'json',
                            data: {id: id}
                        });
                    });
                }
                else if (layEvent === 'edit') { //编辑
//do something
                    var uri = '${pageContext.request.contextPath}/customer/editCustomer.action?id=' + data.id;
                    layer.open({
                        title: '修改会员卡号为【' + data.cardNo + '】的信息:',
                        type: 2,
                        area: ['700px', '500px'],
                        fixed: false, //不固定
                        maxmin: true,
                        content: uri

                        /*  ,btn: ['提交'] //只是为了演示
                         ,btn1: function(data){
                             console.log("data="+data);
                           layer.closeAll();
                         }
                         ,zIndex: layer.zIndex //重点1
                         ,success: function(layero){
                             console.log("data2="+data);
                             //alert("data="+data);
                           layer.setTop(layero); //重点2
                         } */

                    });

                } else if (layEvent === 'deposit') { //充值
                    //do something
                    layer.confirm('请再次确认充值信息是否正确:<br/>卡号:【' + data.cardNo + '】<br/>姓名:【' + data.username + '】', function (index) {
                        layer.close(index);
                        var uri = '${pageContext.request.contextPath}/customer/showDepositCustomer.action?id=' + data.id;
                        layer.open({
                            title: '会员卡号为【' + data.cardNo + '】的详细信息如下:',
                            type: 2,
                            area: ['700px', '500px'],
                            fixed: false, //不固定
                            maxmin: true,
                            content: uri
                        });
                        if (layer.close(index)) {
                            alert("充值窗口关闭");
                        }
                    });

                } else if (layEvent === 'consume') { //消费
                    layer.confirm('请再次确认消费用户是否正确:<br/>卡号:【' + data.cardNo + '】<br/>姓名:【' + data.username + '】', function (index) {
                        layer.close(index);
                        //do something
                        var uri = '${pageContext.request.contextPath}/customer/showConsumeCustomer.action?id=' + data.id;
                        layer.open({
                            title: '会员卡号为【' + data.cardNo + '】的详细信息如下:',
                            type: 2,
                            area: ['700px', '500px'],
                            fixed: false, //不固定
                            maxmin: true,
                            content: uri
                        });

                    });
                }


            });


            var $ = layui.$, active = {
                getCheckData: function () { //获取选中数据
                    var checkStatus = table.checkStatus('customer')
                        , data = checkStatus.data;
                    var array = "";
                    if (data.length <= 0) {
                        layer.alert("请选择所要导出的数据...");
                        return;
                    }

                    for (var i = 0; i < data.length; i++) {
                        array += data[i].id + ",";
                    }

                    //var json = JSON.stringify(data[0].id);
                    $.ajax({
                        url: '/exportCustomerIds.action',
                        type: 'post',
                        data: {'customerIds': array},
                        success: function (result) {
                            if (result.status == 200) {
                                layer.alert('导出成功...<br><a href="/download/exportCustomers.action" class="layui-btn  layui-btn-normal layui-btn-sm">下 载</a>', {
                                    skin: 'layui-layer-molv' //样式类名
                                    , closeBtn: 0
                                });
                            } else {
                                layer.alert("系统繁忙,导出失败,请稍后重试...");
                            }
                        }

                    })
                }
            };
            $('#checkDemo').on('click', function () {
                var type = $(this).data('type');
                active[type] ? active[type].call(this) : '';
            });

        });

    }
</script>
<!--
<a class="label label-primary" lay-event="detail" title="修改"><i class="fa fa-pencil"></i></a>
<a class="label label-success" lay-event="edit" title="修改"><i class="fa fa-info-circle"></i></a>
<a class="label label-danger" lay-event="del" title="修改"><i class="fa fa-trash-o"></i></a>

-->

<script type="text/html" id="barDemo">
    <div class="layui-btn-group">
        <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail" id='detail1'>查看</a>
        <c:if test="${fn:contains(user.role, '1')}">
            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
        </c:if>
    </div>

    <div class="layui-btn-group">
        <c:if test="${fn:contains(user.role, '1')}">
            <a class="layui-btn layui-btn-xs" lay-event="back">恢复</a>
        </c:if>

    </div>


</script>
<!-- layer层 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.mobile.css" media="all">
<script src="${pageContext.request.contextPath }/layui/layui.all.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/pagination/pagination.css" media="all">
<script src="${pageContext.request.contextPath }/pagination/jquery.pagination.js"></script>
<script type="text/html" id="birthdayFormat">

</script>
<script type="text/javascript">
    //时间戳的处理
    layui.laytpl.toDateString = function (d, format) {
        var date = new Date(d || new Date())
            , ymd = [
            this.digit(date.getFullYear(), 4)
            , this.digit(date.getMonth() + 1)
            , this.digit(date.getDate())
        ]
            , hms = [
            this.digit(date.getHours())
            , this.digit(date.getMinutes())
            , this.digit(date.getSeconds())
        ];

        //format = format || 'yyyy-MM-dd HH:mm:ss';
        format = format || 'yyyy-MM-dd';

        return format.replace(
            /yyyy/g, ymd[0])
            .replace(/MM/g, ymd[1])
            .replace(/dd/g, ymd[2])
            .replace(/HH/g, hms[0])
            .replace(/mm/g, hms[1])
            .replace(/ss/g, hms[2]);
    };

    //数字前置补零
    layui.laytpl.digit = function (num, length, end) {
        var str = '';
        num = String(num);
        length = length || 2;
        for (var i = num.length; i < length; i++) {
            str += '0';
        }
        return num < Math.pow(10, length) ? str + (num | 0) : num;
    };
</script>

<script type="text/html" id="customerSex">
    {{# if(d.sex=='1'){ }}
    <span style="color: #0a0ccc;">男</span>
    {{# }else{ }}
    <span style="color: #c00;">女</span>
    {{# } }}
</script>

