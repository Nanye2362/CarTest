<style>
    #sidebarLeft>ul>li>a {
        padding: 8px 15px;
        color: #c5c5c5;
    }
    #sidebarLeft>ul {
        text-align: center;
    }
    #sidebarLeft>ul>li>a>i {
        font-size: 20px;
    }
    .marginTop5 {
        font-size: 12px;
        margin: 0px;
    }
</style>
<!--头部开始-->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <img style="width: 85px;" src="../images/f6logo.png">
            </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">关怀提醒 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">保养提醒</a></li>
                        <li><a href="#">车辆保险提醒</a></li>
                        <li><a href="#">驾照年审提醒</a></li>
                        <li><a href="#">车辆年检提醒</a></li>
                            {*                                <li role="separator" class="divider"></li>*}
                        <li><a href="#">卡到期提醒</a></li>
                        <li><a href="#">客户生日提醒</a></li>
                        <li><a href="#">客户流失提醒</a></li>
                        <li>
                            <a href="#">到货提醒
                                <span style="position: absolute;right: 5px;" class="label label-warning" id="customerLoseReminderNumber">12</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">业务提醒 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">未完工工单</a></li>
                        <li><a href="#">未结算工单</a></li>
                        <li><a href="#">未付款采购订单</a></li>
                        <li><a href="#">未完成采购订单</a></li>
                            {*                                <li role="separator" class="divider"></li>*}
                        <li><a href="#">未发货调拨单</a></li>
                        <li><a href="#">未收货调拨单</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">基础资料 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">客户车辆</a></li>
                        <li><a href="#">车主变更</a></li>
                        <li><a href="#">客户级别</a></li>
                        <li><a href="#">客户来源</a></li>
                        <li><a href="#">供应商信息</a></li>
                        <li><a href="#">保险公司</a></li>
                        <li><a href="#">材料类别</a></li>
                        <li><a href="#">材料信息</a></li>
                        <li><a href="#">项目信息</a></li>
                        <li><a href="#">员工信息</a></li>
                        <li><a href="#">公司信息</a></li>
                        <li><a href="#">数据导入</a></li>
                        <li><a href="#">业务分类</a></li>
                        <li><a href="#">车辆分类</a></li>
                            {*                                <li role="separator" class="divider"></li>*}
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">欢迎 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#" data-toggle="modal" data-target="#ModifyPwd">修改密码</a></li>
                        <li><a href="#">提醒设置</a></li>
                        <li><a href="#">考勤设置</a></li>
                        <li><a href="#">参数设置</a></li>
                        <li><a href="#">权限管理</a></li>
                        <li><a href="#">用户管理</a></li>
                        <li><a href="#">门店管理</a></li>
                        <li><a href="#">安全退出</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" style="color: #c5c5c5;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">公司名 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">上海车车翔</a></li>
                        <li><a href="#">栖山店</a></li>
                    </ul>
                </li>
                <li class="active"><a href="./">扫描绑定车型<span class="sr-only">(current)</span></a></li>
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="请输入姓名/手机号/车牌号">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                <li><a href="../navbar-fixed-top/">帮助</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</nav>
<!--头部结束-->

<!--左边导航开始-->
<div id="sidebarLeft" class="no-padding" data-step="1" data-intro="左边是主要功能的菜单。" data-position="right">
    <input id="currentMenu" type="text" hidden="hidden" value="基础数据">
    <ul id="menuUl" class="nav">
        <li>
            <a href="javascript:linkMenu(&#39;/page/index/index.jsp&#39;,&#39;首页&#39;)">
                <i class="iconfont"></i>
                <p class="marginTop5">首页</p>
            </a>
        </li>
        <li>
            <a href="javascript:linkMenu(&#39;/reservation/reservationList.do&#39;,&#39;预约&#39;)">
                <i class="iconfont"></i>
                <p class="marginTop5">预约</p>
                <sup class="aside" id="reservationRemindCount" style="display: none"></sup>
            </a>
        </li>
        <li>
            <a href="javascript:linkMenu(&#39;/maintain/maintainList.do&#39;,&#39;工单&#39;)">
                <i class="iconfont"></i>
                <p class="marginTop5">工单</p>
            </a>
        </li>
        <li>
            <a href="javascript:linkMenu(&#39;/purchase/purchaseList.do&#39;,&#39;采购&#39;)">
                <i class="iconfont"></i>
                <p class="marginTop5">采购</p>
            </a>
        </li>
        <li>
            <a href="javascript:linkMenu(&#39;/stock/maintainList.do&#39;,&#39;库存&#39;)">
                <i class="iconfont"></i>
                <p class="marginTop5">库存</p>
            </a>
        </li>
        <li>
            <a href="javascript:linkMenu(&#39;/vip/vipList.do&#39;,&#39;营销&#39;)">
                <i class="iconfont"></i>
                <p class="marginTop5">营销</p>
                <sup class="aside" id="wxDialogCount" style="display: none"></sup>
            </a>
        </li>
        <li>
            <a href="javascript:linkMenu(&#39;/weixin/index.do?page=datasearch&#39;,&#39;F6数据&#39;)">
                <i class="iconfont"></i>
                <p class="marginTop5">F6数据</p>
            </a>
        </li>
        <li>
            <a href="javascript:linkMenu(&#39;/payment/gatheringList.do&#39;,&#39;财务&#39;)">
                <i class="iconfont"></i>
                <p class="marginTop5">财务</p>
            </a>
        </li>
        <li>
            <a href="javascript:linkMenu(&#39;/menu/financeReportMenu.do&#39;,&#39;报表&#39;)">
                <i class="iconfont"></i>
                <p class="marginTop5">报表</p>
            </a>
        </li>
        <li>
            <a href="javascript:linkMenu(&#39;/workAttendance/workAttendanceSignIn.do&#39;,&#39;考勤&#39;)">
                <i class="iconfont"></i>
                <p class="marginTop5">考勤</p>
            </a>
        </li>
    </ul>
</div>
<!--左边导航结束-->
<!--修改密码弹框开始-->
<div class="container">
    <form method="post" action="" class="form-horizontal" role="form" id="form_data" onkeydown="if (event.keyCode == 13)
                return false;" onsubmit="return check_form()" style="margin: 20px;">
        <div class="modal fade" id="ModifyPwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabel">
                            修改密码
                        </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">原密码</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="old_pwd" value="" placeholder="请输入原密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="cde_usedname" class="col-sm-3 control-label">新密码</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="new_pwd" value="" placeholder="请输入新密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="cde_usedname2" class="col-sm-3 control-label">确认新密码</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="confirm_new_pwd" value="" placeholder="请确认新密码">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-primary">确定修改</button>
                        <span id="tip"> </span>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<!--修改密码弹框结束-->