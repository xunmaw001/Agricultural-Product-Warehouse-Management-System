<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑委托出入库订单详情</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">委托出入库订单详情管理</li>
                        <li class="breadcrumb-item active">编辑委托出入库订单详情</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">委托出入库订单详情信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6">
                                        <label>委托出入库订单</label>
                                        <div>
                                            <select id="entrustInOutOrderSelect" name="entrustInOutOrderSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>用户</label>
                                        <input id="yonghuId" name="yonghuId" class="form-control"
                                               placeholder="用户" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>订单名</label>
                                        <input id="orderName" name="orderName" class="form-control"
                                               placeholder="订单名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>委托类型</label>
                                        <input id="orderValue" name="orderValue" class="form-control"
                                               placeholder="委托类型" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>委托时间</label>
                                        <input id="insertTime" name="insertTime" class="form-control"
                                               placeholder="委托时间" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>操作人姓名</label>
                                        <input id="caozuoName" name="caozuoName" class="form-control"
                                               placeholder="操作人姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>操作人所在表名</label>
                                        <input id="caozuoTable" name="caozuoTable" class="form-control"
                                               placeholder="操作人所在表名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>操作类型</label>
                                        <input id="caozuoValue" name="caozuoValue" class="form-control"
                                               placeholder="操作类型" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>操作时间</label>
                                        <input id="updateTime" name="updateTime" class="form-control"
                                               placeholder="操作时间" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>物资</label>
                                        <div>
                                            <select id="goodsSelect" name="goodsSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>物品名字</label>
                                        <input id="goodsName" name="goodsName" class="form-control"
                                               placeholder="物品名字" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>物品种类</label>
                                        <input id="goodsValue" name="goodsValue" class="form-control"
                                               placeholder="物品种类" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>物资数量</label>
                                        <input id="goodsNumber" name="goodsNumber" class="form-control"
                                               placeholder="物资数量" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>物品图片</label>
                                        <img id="goodsPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>单位</label>
                                        <input id="danwei" name="danwei" class="form-control"
                                               placeholder="单位" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>是否删除</label>
                                        <input id="flag" name="flag" class="form-control"
                                               placeholder="是否删除" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="entrustInOutOrderId" name="entrustInOutOrderId" type="hidden">
                                <input id="goodsId" name="goodsId" type="hidden">
                                <div class="form-group col-md-6">
                                    <label>数量</label>
                                    <input id="orderNumber" name="orderNumber" class="form-control"
                                           onchange="orderNumberChickValue(this)"  placeholder="数量">
                                </div>

                                   <div class="form-group col-md-6">
                                       <label>状态</label>
                                       <select id="entrustTypesSelect" name="entrustTypes" class="form-control">
                                       </select>
                                   </div>
                                <div class="form-group col-md-12 mb-3">
                                    <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                    <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js">
</script><script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "entrustInOutOrderList";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var entrustTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var entrustInOutOrderOptions = [];
    var goodsOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
           if($("#entrustInOutOrderId") !=null){
               var entrustInOutOrderId = $("#entrustInOutOrderId").val();
               if(entrustInOutOrderId == null || entrustInOutOrderId =='' || entrustInOutOrderId == 'null'){
                   alert("订单id不能为空");
                   return;
               }
           }
           if($("#goodsId") !=null){
               var goodsId = $("#goodsId").val();
               if(goodsId == null || goodsId =='' || goodsId == 'null'){
                   alert("物资表id不能为空");
                   return;
               }
           }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                successMes = '添加成功';
            }
            httpJson("entrustInOutOrderList/" + urlParam, "POST", data, (res) => {
                if(res.code == 0)
                {
                    window.sessionStorage.removeItem('addentrustInOutOrderList');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function entrustTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=entrust_types", "GET", {}, (res) => {
                if(res.code == 0){
                    entrustTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function entrustInOutOrderSelect() {
            //填充下拉框选项
            http("entrustInOutOrder/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    entrustInOutOrderOptions = res.data.list;
                }
            });
        }

        function entrustInOutOrderSelectOne(id) {
            http("entrustInOutOrder/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                entrustInOutOrderShowImg();
                entrustInOutOrderDataBind();
            }
        });
        }
        function goodsSelect() {
            //填充下拉框选项
            http("goods/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    goodsOptions = res.data.list;
                }
            });
        }

        function goodsSelectOne(id) {
            http("goods/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                goodsShowImg();
                goodsDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationEntrusttypesSelect(){
            var entrustTypesSelect = document.getElementById('entrustTypesSelect');
            if(entrustTypesSelect != null && entrustTypesOptions != null  && entrustTypesOptions.length > 0 ){
                for (var i = 0; i < entrustTypesOptions.length; i++) {
                    entrustTypesSelect.add(new Option(entrustTypesOptions[i].indexName,entrustTypesOptions[i].codeIndex));
                }
            }
        }

    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
        function initializationentrustInOutOrderSelect() {
            var entrustInOutOrderSelect = document.getElementById('entrustInOutOrderSelect');
            if(entrustInOutOrderSelect != null && entrustInOutOrderOptions != null  && entrustInOutOrderOptions.length > 0 ) {
                for (var i = 0; i < entrustInOutOrderOptions.length; i++) {
                        entrustInOutOrderSelect.add(new Option(entrustInOutOrderOptions[i].name, entrustInOutOrderOptions[i].id));
                }

                $("#entrustInOutOrderSelect").change(function(e) {
                        entrustInOutOrderSelectOne(e.target.value);
                });
            }

        }

        function initializationgoodsSelect() {
            var goodsSelect = document.getElementById('goodsSelect');
            if(goodsSelect != null && goodsOptions != null  && goodsOptions.length > 0 ) {
                for (var i = 0; i < goodsOptions.length; i++) {
                        goodsSelect.add(new Option(goodsOptions[i].name, goodsOptions[i].id));
                }

                $("#goodsSelect").change(function(e) {
                        goodsSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var entrustTypesSelect = document.getElementById("entrustTypesSelect");
        if(entrustTypesSelect != null && entrustTypesOptions != null  && entrustTypesOptions.length > 0 ) {
            for (var i = 0; i < entrustTypesOptions.length; i++) {
                if (entrustTypesOptions[i].codeIndex == ruleForm.entrustTypes) {//下拉框value对比,如果一致就赋值汉字
                        entrustTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var entrustInOutOrderSelect = document.getElementById("entrustInOutOrderSelect");
            if(entrustInOutOrderSelect != null && entrustInOutOrderOptions != null  && entrustInOutOrderOptions.length > 0 ) {
                for (var i = 0; i < entrustInOutOrderOptions.length; i++) {
                    if (entrustInOutOrderOptions[i].id == ruleForm.entrustInOutOrderId) {//下拉框value对比,如果一致就赋值汉字
                        entrustInOutOrderSelect.options[i+1].selected = true;
                        $("#entrustInOutOrderSelect" ).selectpicker('refresh');
                    }
                }
            }
            var goodsSelect = document.getElementById("goodsSelect");
            if(goodsSelect != null && goodsOptions != null  && goodsOptions.length > 0 ) {
                for (var i = 0; i < goodsOptions.length; i++) {
                    if (goodsOptions[i].id == ruleForm.goodsId) {//下拉框value对比,如果一致就赋值汉字
                        goodsSelect.options[i+1].selected = true;
                        $("#goodsSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->
        function orderNumberChickValue(e){
            var this_val = e.value || 0;
            /*if(this_val == 0){
                e.value = "";
                alert("0不允许输入");
                return false;
            }*/
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addentrustInOutOrderList');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                entrustInOutOrderId: "required",
                goodsId: "required",
                orderNumber: "required",
                entrustTypes: "required",
            },
            messages: {
                entrustInOutOrderId: "订单id不能为空",
                goodsId: "物资表id不能为空",
                orderNumber: "数量不能为空",
                entrustTypes: "状态不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addentrustInOutOrderList = window.sessionStorage.getItem("addentrustInOutOrderList");
        if (addentrustInOutOrderList != null && addentrustInOutOrderList != "" && addentrustInOutOrderList != "null") {
            window.sessionStorage.removeItem('addentrustInOutOrderList');
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("entrustInOutOrderList/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {

    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        entrustInOutOrderDataBind();
        goodsDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#entrustInOutOrderId").val(ruleForm.entrustInOutOrderId);
        $("#goodsId").val(ruleForm.goodsId);
        $("#orderNumber").val(ruleForm.orderNumber);

    }
    <!--  级联表的数据回显  -->
    function entrustInOutOrderDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#entrustInOutOrderId").val(ruleForm.id);

        $("#yonghuId").val(ruleForm.yonghuId);
        $("#orderName").val(ruleForm.orderName);
        $("#orderValue").val(ruleForm.orderValue);
        var insertTimeDate = new Date();
        insertTimeDate.setTime(ruleForm.insertTime);
        $("#insertTime").val(insertTimeDate.toLocaleString());//把时间戳转换为日期带时分秒格式
        $("#caozuoName").val(ruleForm.caozuoName);
        $("#caozuoTable").val(ruleForm.caozuoTable);
        $("#caozuoValue").val(ruleForm.caozuoValue);
        var updateTimeDate = new Date();
        updateTimeDate.setTime(ruleForm.updateTime);
        $("#updateTime").val(updateTimeDate.toLocaleString());//把时间戳转换为日期带时分秒格式
    }

    function goodsDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#goodsId").val(ruleForm.id);

        $("#goodsName").val(ruleForm.goodsName);
        $("#goodsValue").val(ruleForm.goodsValue);
        $("#goodsNumber").val(ruleForm.goodsNumber);
        $("#danwei").val(ruleForm.danwei);
        $("#goodsContent").val(ruleForm.goodsContent);
        $("#flag").val(ruleForm.flag);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        entrustInOutOrderShowImg();
        goodsShowImg();
    }


    <!--  级联表的图片  -->

    function entrustInOutOrderShowImg() {
    }


    function goodsShowImg() {
        $("#goodsPhotoImg").attr("src",ruleForm.goodsPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            entrustTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            entrustInOutOrderSelect();
            goodsSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationEntrusttypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationentrustInOutOrderSelect();
            initializationgoodsSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') != '管理员') {
            $('#jifen').attr('readonly', 'readonly');
            //$('#money').attr('readonly', 'readonly');
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>