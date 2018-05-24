<%--
  User: super
  Date: 2018/3/21
  Time: 13:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/highCharts/code/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/highCharts/code/modules/exporting.js"></script>
<!-- layer层 -->
<link rel="stylesheet"
      href="${pageContext.request.contextPath }/layui/css/layui.css"
      media="all">
<link rel="stylesheet"
      href="${pageContext.request.contextPath }/layui/css/layui.mobile.css"
      media="all">
<script src="${pageContext.request.contextPath }/layui/layui.all.js"></script>
<div style="margin-left: 10%" class="col-md-11 col-sm-11 col-xs-11">
    <form class="form-horizontal layui-form " id="customerForm" method="post">
        <div class="form-group">
            <div class="col-md-4 col-sm-4 col-xs-4 layui-input-inline">
                <input type="text" name="startStr" id="date" required lay-verify="date"
                       placeholder="开始日期" autocomplete="on" class="layui-input">
            </div>
            <span>~</span>
            <div class="col-md-4 col-sm-4 col-xs-4 layui-input-inline">
                <input type="text" name="endStr" id="date1" required lay-verify="date"
                       placeholder="结束日期" autocomplete="on" class="layui-input">
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2 layui-input-inline">
                <button class="layui-btn layui-btn-sm" lay-submit="" id="submitBtn">查询</button>
            </div>
        </div>


    </form>
</div>
<hr>
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
<script type="text/javascript">
$(function () {
    getDepositCharts(${result});
});

$("#submitBtn").on("click", function (e) {
    e.preventDefault();
    var startStr = $("#date").val();
    var endStr = $("#date1").val();
    if (startStr == "") {
        layer.msg("请输入开始日期");
        return;
    }
    if (endStr == "") {
        layer.msg("请输入结束日期");
        return;
    }
    $.ajax({
        url:"/customer/getDepositChartsByPage.action",
        type:'post',
        dataType:'json',
        data:{
            "id":"${id}",
            "startStr":startStr,
            "endStr":endStr
        },
        success:function (result) {
            console.log(result);
            getDepositCharts(result);
        }
    })
});

    function getDepositCharts(result){
        var moneyArr=[],dateArr=[],operatorArr=[],depositArr=[];


        for(var i=0,data=result,len=data.length;i<len;i++){
            moneyArr.push(data[i].money);
            dateArr.push(dateFormat(data[i].createTime));
            operatorArr.push(data[i].operator);
            depositArr.push(data[i].depositMoney);
        }

        Highcharts.chart('container', {
            chart: {
                type: 'line'
            },
            title: {
                text: '充值记录'
            },
            subtitle: {
                text: ''
            },
            tooltip: {
                backgroundColor: {
                    linearGradient: [0, 0, 0, 60],
                    stops: [
                        [0, '#FFFFFF'],
                        [1, '#E0E0E0']
                    ]
                },
                borderWidth: 1,
                borderColor: '#AAA'
            },
            xAxis: {
                categories: dateArr
            },
            yAxis: {
                title: {
                    text: '金额 (￥)'
                }
            },
            plotOptions: {
                line: {
                    dataLabels: {
                        enabled: true
                    },
                    enableMouseTracking: true
                }
            },
            series: [{
                name: '当前余额',
                data: moneyArr
            },{
                name: '充值金额',
                data: depositArr
            }]
        });
    }

     function dateFormat(time){
         var date = new Date(time);
         var year = date.getFullYear();
         var month = date.getMonth()+1;
         var day = date.getDate();
         var hours = date.getHours();
         var minutes = date.getMinutes();
         var second = date.getSeconds();
         if(second<10){
             second = "0" + second;
         }
         return year+"-"+month+"-"+day+" "+hours+":"+minutes+":"+second;

     }
</script>
<script>
    layui
        .use(
            ['laydate'],
            function () {
                var laydate = layui.laydate;

                //日期
                laydate.render({
                    elem: '#date'
                });
                laydate.render({
                    elem: '#date1'
                });

            });
</script>
