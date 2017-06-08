<script>
    $(function () {
    {*$('#sub_title_tabs a').click(function (e) {
    e.preventDefault()
    $(this).tab('show')
    })*}

        //更多筛选
        $("#more-con").on("click", function (e) {
            $("#more-conditions").find("i").toggleClass("ihover"),
                    $("#more-conditions-detail").slideToggle("fast"),
                    $("#more-conditions-detail").toggleClass("show"),
                    $("#more-conditions-detail").hasClass("show") ? $("#qq").val("on") : $("#qq").val("off")
        })
    })
</script>
<style>
    #sidebarLeft {
        height: 100%; 
        background-color: #4f4f4f; 
        border-right: 0 #ededed solid; 
        position: fixed; 
        top: 51px; 
        left: 0; 
        padding: 0; 
        float: left; 
        width: 76px; 
        z-index: 2000; 
    }
    .marginTop5 {
        color: #c5c5c5;
    }
    #content {
        position: relative;
        padding-left: 20px!important;
        padding-right: 50px!important;
        width: 100%;
        padding-top: 55px!important;
        height: auto;
        background: #fff;
        overflow: visible;
        padding-bottom: 30px;
    }
    .table tr td {
        white-space: nowrap;
        overflow: hidden!important;
    }
    .query-conditions-left {
        float: left;
        width: 35%;
    }
    .more-conditions {
        width: 10%;
        float: left;
        line-height: 30px;
        padding-left: 10px;
        cursor: pointer;
    }
    .query-conditions-right {
        float: right;
        text-align: right;
        width: 50%;
    }
    .input-medium {
        display: inline-block;
        width: 80%;
    }
    .more-conditions-detail {
        float: left;
        width: 100%;
        padding-left: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
        height: auto;
        margin-top: 0;
        margin-bottom: 10px;
    }
    .fl {
        float: left;
    }
</style>

{include file="Navigation.tpl"}
<div id="content">
    <div class="row" id="sub_title_tabs">
        <ul class="nav nav-tabs">
            <li><a href="/site/customercarlist_g_customer">普通客户</a></li>
            <li class="active"><a href="/site/customercarlist_f_customer">快速洗车客户</a></li>
        </ul>
    </div>
    <div class="tab-content" style="margin-top: 20px;">
        <div class="tab-pane fade in active" id="f_customer">
            <form id="FRM" method="get" action="">
                <input type="hidden" id="carModel" name="carModel" value="">
                <input type="hidden" id="carType" name="carType" value="1">
                <div class="query-conditions marginTop10">
                    <div class="row">
                        <div class="query-conditions-left">
                            <div class="form-group input-icon">
                                <i class="fa fa-search input-content input-right" id="searchIcon"></i>
                                <input type="text" class="form-control inputicon-right" id="keyWord" name="keyWord" value="" placeholder="输入客户姓名/车牌号/客户手机查询">
                            </div>
                        </div>

                        <div class="query-conditions-right">
                            <a href="javascript:void(0)" id="callBtn"
                               class="btn  btn-warning"> <i class="fa fa-phone" aria-hidden="true"></i> 通话
                            </a>
                            <button type="button" class="btn btn-warning" id="editBtn">
                                <i class="fa fa-pencil"></i> 完善资料
                            </button>
                            <button type="button" class="btn btn-danger" id="deleteBtn">
                                <i class="fa fa-trash-o fa-fw"></i> 删除
                            </button>
                            <button type="button" class="btn btn-success" id="exportBtn">
                                <i class="fa fa-sign-out fa-fw"></i> 数据导出
                            </button>
                        </div>
                    </div>
                    <div class="row">
                        <table id="tb_repair" class="table table-striped table-bordered table-hover table-heading no-border-bottom listTable">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width:5%">全选</th>
                                    <th class="text-center" style="width:20%">车牌号</th>
                                    <th class="text-center" style="width:35%">车主姓名</th>
                                    <th class="text-center" style="width:30%">车主电话</th>
                                    <th class="text-center" style="width:10%">消费历史</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                        <div id="pageDiv">
                            <div class="main-pagers text-center">
                                <div style="display:inline-block;">
                                    <span disabled="disabled" class="main-pagers-margin">共<span id="labTotalRecords" disabled="disabled">20</span>条记录</span>
                                    <a id="labPre" class="func-btn" href="javascript:void(0);">上一页</a>
                                    <a href="javascript:void();" class="active">1</a>
                                    <a href="javascript:void();">2</a>
                                    <a class="func-btn main-pagers-margin" id="laNext" href="javascript:void(0);">下一页</a>
                                    <span>共<span id="labTotalPages">2</span>页&nbsp;</span>
                                    <span>到第&nbsp;<input type="text" id="jumpInput" class="" name="jumpInput" size="3" value="0">&nbsp;页</span>&nbsp;
                                    <a id="imgGo" class="func-btn" style="cursor: hand">前往</a>
                                    <input type="hidden" id="pageIndex" name="pageIndex" value="1">
                                    <input type="hidden" id="pageTaget" name="pageTaget" value="searchBtn">
                                </div>
                            </div>                                    
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>