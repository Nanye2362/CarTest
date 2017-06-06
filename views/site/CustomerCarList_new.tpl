<html>
    <head>
        <title>CustomerCarList</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script>
            $(function () {
                $('#sub_title_tabs a').click(function (e) {
                    e.preventDefault()
                    $(this).tab('show')
                })

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
    </head>

    <body>
        {include file="Navigation.tpl"}
        <div id="content">
            <div class="row" id="sub_title_tabs">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#g_customer" data-toggle="tab">普通客户</a></li>
                    <li><a href="#f_customer">快速洗车客户</a></li>
                </ul>
            </div>
            <div class="tab-content" style="margin-top: 20px;">
                <div class="tab-pane fade in active" id="g_customer">
                    <form class="form-search" id="FRM" method="get" action="">
                        <input type="hidden" id="carModel" name="carModel" value="">
                        <input type="hidden" id="carType" name="carType" value="0">
                        <div class="query-conditions marginTop10">
                            <div class="row">
                                <div class="query-conditions-left">
                                    <div class="form-group input-icon">
                                        <input class="input-medium search-query form-control " type="text" placeholder="输入姓名/车牌号/手机/联系人/联系人手机号"/>
                                        <button type="submit" class="btn">查找</button>
                                        {*<input type="text" class="form-control inputicon-right" id="keyWord" name="keyWord" value="" placeholder="输入客户姓名/车牌号/客户手机/联系人/联系人手机号查询">
                                        <button type="submit" class="btn">查找</button>*}
                                    </div>
                                </div>
                                <div class="more-conditions" id="more-conditions">
                                    <button type="button" class="btn btn-default dropdown-toggle labelForA" id="more-con" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        更多筛选
                                        <span class="caret"></span>
                                    </button>
                                    {*<label class="labelForA" id="more-con">更多筛选</label>
                                    <i class="fa fa-angle-down"></i>*}
                                </div>

                                <div class="query-conditions-right">
                                    <a href="javascript:void(0)" id="callBtn" class="btn  btn-warning"> <i class="fa fa-phone" aria-hidden="true"></i> 通话
                                    </a>
                                    <a href="javascript:void(0)" id="addBtn" class="btn btn-primary"> <i class="fa fa-plus"></i> 新建
                                    </a>
                                    <button type="button" class="btn btn-warning" id="editBtn">
                                        <i class="fa fa-pencil"></i> 修改
                                    </button>
                                    <button type="button" class="btn btn-danger" id="deleteBtn">
                                        <i class="fa fa-trash-o fa-fw"></i> 删除
                                    </button>
                                    <button type="button" class="btn btn-success" id="exportBtn">
                                        <i class="fa fa-sign-out fa-fw"></i> 数据导出
                                    </button>
                                </div>
                                <div class="more-conditions-detail hide" style="width:100%!important" id="more-conditions-detail">

                                    <div class="fl" style="width:20%;">
                                        <div class="form-group">
                                            <label class="fl text-right" style="width:35%;line-height:32px;padding-right:10px">客户类型:</label>
                                            <div class="fl" style="width:65%;">
                                                <select name="customerType" class="form-control">
                                                    <option value="">请选择</option>
                                                    <option value="个人">个人</option>
                                                    <option value="单位">单位</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="fl" style="width:20%;">
                                        <div class="form-group">
                                            <label class="fl text-right" style="width:30%;line-height:32px;padding-right:10px">品牌:</label>
                                            <div class="fl" style="width:69%;">
                                                <select name="carBrandName" class="form-control">
                                                    <option value="">请选择</option>
                                                    <option value="丰田">丰田</option>
                                                    <option value="五菱">五菱</option>
                                                    <option value="凯迪拉克">凯迪拉克</option>
                                                    <option value="别克">别克</option>
                                                    <option value="大众">大众</option>
                                                    <option value="奔驰">奔驰</option>
                                                    <option value="奥迪">奥迪</option>
                                                    <option value="本田">本田</option>
                                                    <option value="标致">标致</option>
                                                    <option value="沃尔沃">沃尔沃</option>
                                                    <option value="雪佛兰">雪佛兰</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="fl" style="width:20%;">
                                        <div class="form-group">
                                            <label class="fl text-right" style="width:30%;line-height:32px;padding-right:10px">车系:</label>
                                            <div class="fl" style="width:69%;">
                                                <select name="carSeriesName" class="form-control">
                                                    <option value="">请选择</option>
                                                    <option value="308">308</option>
                                                    <option value="C30">C30</option>
                                                    <option value="GL8 商务车">GL8 商务车</option>
                                                    <option value="Q5">Q5</option>
                                                    <option value="R 350 L 4MATIC">R 350 L 4MATIC</option>
                                                    <option value="SRX">SRX</option>
                                                    <option value="五菱之光">五菱之光</option>
                                                    <option value="君威">君威</option>
                                                    <option value="宝来">宝来</option>
                                                    <option value="帕萨特">帕萨特</option>
                                                    <option value="思域">思域</option>
                                                    <option value="朗逸">朗逸</option>
                                                    <option value="桑塔纳">桑塔纳</option>
                                                    <option value="桑塔纳 志俊">桑塔纳 志俊</option>
                                                    <option value="科帕奇">科帕奇</option>
                                                    <option value="花冠">花冠</option>
                                                    <option value="途安">途安</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="fl" style="width:20%;">
                                        <div class="form-group">
                                            <label class="fl text-right" style="width:30%;line-height:32px;padding-right:10px">建档人:</label>
                                            <div class="fl" style="width:69%;">
                                                <select name="idEmployee" class="form-control">
                                                    <option value="">请选择</option>
                                                    <option value="10545055917999840364">胡宏明</option>
                                                    <option value="10545461672704672636">张普</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="fl text-center" style="width:19%">
                                        <button type="button" id="searchBtn" class="btn btn-success querypage-btn" style="margin-top:0px!important;">
                                            <i class="fa fa-search"></i> 搜索
                                        </button>
                                    </div>

                                </div>
                            </div>
                            <div class="row">
                                <table id="tb_repair" class="table table-striped table-bordered table-hover table-heading no-border-bottom listTable">
                                    <thead>
                                        <tr>
                                            <th class="text-center" style="width:5%">全选</th>
                                            <th class="text-center" style="width:20%">客户姓名</th>
                                            <th class="text-center" style="width:10%">车牌号</th>
                                            <th class="text-center" style="width:10%">手机号码</th>
                                            <th class="text-center" style="width:10%">客户类型</th>
                                            <th class="text-center" style="width:35%">车型</th>
                                            <th class="text-center" style="width:10%">消费历史</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-center">
                                                <div class="checker">
                                                    <input type="hidden" name="idCustomer" value="10545511425554816902">
                                                    <input type="hidden" name="idCar" value="10545511425554816903">
                                                    <input type="hidden" value="栖山店">
                                                    <input type="checkbox" name="chk" class="uniform" value="" data-phonenum="">
                                                </div>
                                            </td>
                                            <td class="text-center"><a href="javascript:hrefCustomerCar(&#39;10545511425554816902&#39;,&#39;10545511425554816903&#39;)">栖山店</a></td>
                                            <td class="text-center"></td>
                                            <td class="text-center"></td>
                                            <td class="text-center">个人</td>
                                            <td class="text-left"></td>
                                            <td class="text-center"><a href="javascript:maintainHistory(&#39;10545511425554816903&#39;,&#39;&#39;)"><i class="fa fa-search"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <div class="checker">
                                                    <input type="hidden" name="idCustomer" value="10545511425554815690">
                                                    <input type="hidden" name="idCar" value="10545511425554815691">
                                                    <input type="hidden" value="上海车车翔汽车快修服务有限公司">
                                                    <input type="checkbox" name="chk" class="uniform" value="" data-phonenum="">
                                                </div>
                                            </td>
                                            <td class="text-center"><a href="javascript:hrefCustomerCar(&#39;10545511425554815690&#39;,&#39;10545511425554815691&#39;)">上海车车翔汽车快修服务有限公司</a></td>
                                            <td class="text-center"></td>
                                            <td class="text-center"></td>
                                            <td class="text-center">个人</td>
                                            <td class="text-left"></td>
                                            <td class="text-center"><a href="javascript:maintainHistory(&#39;10545511425554815691&#39;,&#39;&#39;)"><i class="fa fa-search"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <div class="checker">
                                                    <input type="hidden" name="idCustomer" value="10545491164348324530">
                                                    <input type="hidden" name="idCar" value="10545491164348324531">
                                                    <input type="hidden" value="好好好">
                                                    <input type="checkbox" name="chk" class="uniform" value="" data-phonenum="13265768686">
                                                </div>
                                            </td>
                                            <td class="text-center"><a href="javascript:hrefCustomerCar(&#39;10545491164348324530&#39;,&#39;10545491164348324531&#39;)">好好好</a></td>
                                            <td class="text-center">沪DD54767</td>
                                            <td class="text-center">13265768686</td>
                                            <td class="text-center">个人</td>
                                            <td class="text-left">大众  宝来 1.9TD  MT 2004年03月-2006年</td>
                                            <td class="text-center"><a href="javascript:maintainHistory(&#39;10545491164348324531&#39;,&#39;沪DD54767&#39;)"><i class="fa fa-search"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <div class="checker">
                                                    <input type="hidden" name="idCustomer" value="10545055917999862835">
                                                    <input type="hidden" name="idCar" value="10545055917999862836">
                                                    <input type="hidden" value="先生">
                                                    <input type="checkbox" name="chk" class="uniform" value="" data-phonenum="15900775548">
                                                </div>
                                            </td>
                                            <td class="text-center"><a href="javascript:hrefCustomerCar(&#39;10545055917999862835&#39;,&#39;10545055917999862836&#39;)">先生</a></td>
                                            <td class="text-center">沪A88E81</td>
                                            <td class="text-center">15900775548</td>
                                            <td class="text-center">个人</td>
                                            <td class="text-left">奔驰 R 350 L 4MATIC 2005款&nbsp;3.5 手自一体变速器(AT)</td>
                                            <td class="text-center"><a href="javascript:maintainHistory(&#39;10545055917999862836&#39;,&#39;沪A88E81&#39;)"><i class="fa fa-search"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <div class="checker">
                                                    <input type="hidden" name="idCustomer" value="10545055917999841204">
                                                    <input type="hidden" name="idCar" value="10545055917999841205">
                                                    <input type="hidden" value="李女士">
                                                    <input type="checkbox" name="chk" class="uniform" value="" data-phonenum="18721903522">
                                                </div>
                                            </td>
                                            <td class="text-center"><a href="javascript:hrefCustomerCar(&#39;10545055917999841204&#39;,&#39;10545055917999841205&#39;)">李女士</a></td>
                                            <td class="text-center">苏FEL112</td>
                                            <td class="text-center">18721903522</td>
                                            <td class="text-center">个人</td>
                                            <td class="text-left">沃尔沃 C30 2012款&nbsp;2.0 双离合变速器(DCT)</td>
                                            <td class="text-center"><a href="javascript:maintainHistory(&#39;10545055917999841205&#39;,&#39;苏FEL112&#39;)"><i class="fa fa-search"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <div class="checker">
                                                    <input type="hidden" name="idCustomer" value="10545055917999841156">
                                                    <input type="hidden" name="idCar" value="10545055917999841157">
                                                    <input type="hidden" value="张先生(无发动机号码)">
                                                    <input type="checkbox" name="chk" class="uniform" value="" data-phonenum="13601653700">
                                                </div>
                                            </td>
                                            <td class="text-center"><a href="javascript:hrefCustomerCar(&#39;10545055917999841156&#39;,&#39;10545055917999841157&#39;)">张先生(无发动机号码)</a></td>
                                            <td class="text-center">沪F59950</td>
                                            <td class="text-center">13601653700</td>
                                            <td class="text-center">个人</td>
                                            <td class="text-left">本田  思域 2009款&nbsp;1.3 无级变速器(CVT)</td>
                                            <td class="text-center"><a href="javascript:maintainHistory(&#39;10545055917999841157&#39;,&#39;沪F59950&#39;)"><i class="fa fa-search"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <div class="checker">
                                                    <input type="hidden" name="idCustomer" value="10545055917999841125">
                                                    <input type="hidden" name="idCar" value="10545055917999841126">
                                                    <input type="hidden" value="陈先生">
                                                    <input type="checkbox" name="chk" class="uniform" value="" data-phonenum="13917973000">
                                                </div>
                                            </td>
                                            <td class="text-center"><a href="javascript:hrefCustomerCar(&#39;10545055917999841125&#39;,&#39;10545055917999841126&#39;)">陈先生</a></td>
                                            <td class="text-center">沪FH6610</td>
                                            <td class="text-center">13917973000</td>
                                            <td class="text-center">个人</td>
                                            <td class="text-left">大众 途安 2007款&nbsp;2.0 手动变速器(MT)</td>
                                            <td class="text-center"><a href="javascript:maintainHistory(&#39;10545055917999841126&#39;,&#39;沪FH6610&#39;)"><i class="fa fa-search"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <div class="checker">
                                                    <input type="hidden" name="idCustomer" value="10545055917999841112">
                                                    <input type="hidden" name="idCar" value="10545055917999841113">
                                                    <input type="hidden" value="先生（未添加信息、发动机号）">
                                                    <input type="checkbox" name="chk" class="uniform" value="" data-phonenum="12345678911">
                                                </div>
                                            </td>
                                            <td class="text-center"><a href="javascript:hrefCustomerCar(&#39;10545055917999841112&#39;,&#39;10545055917999841113&#39;)">先生（未添加信息、发动机号）</a></td>
                                            <td class="text-center">苏BXM538</td>
                                            <td class="text-center">12345678911</td>
                                            <td class="text-center">个人</td>
                                            <td class="text-left">本田  思域 2009款&nbsp;1.3 无级变速器(CVT)</td>
                                            <td class="text-center"><a href="javascript:maintainHistory(&#39;10545055917999841113&#39;,&#39;苏BXM538&#39;)"><i class="fa fa-search"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <div class="checker">
                                                    <input type="hidden" name="idCustomer" value="10545055917999841080">
                                                    <input type="hidden" name="idCar" value="10545055917999841081">
                                                    <input type="hidden" value="邵先生(未记车架号)">
                                                    <input type="checkbox" name="chk" class="uniform" value="" data-phonenum="13482278378">
                                                </div>
                                            </td>
                                            <td class="text-center"><a href="javascript:hrefCustomerCar(&#39;10545055917999841080&#39;,&#39;10545055917999841081&#39;)">邵先生(未记车架号)</a></td>
                                            <td class="text-center">沪A96A39</td>
                                            <td class="text-center">13482278378</td>
                                            <td class="text-center">个人</td>
                                            <td class="text-left">丰田  花冠 2007款&nbsp;1.8 自动变速器(AT)</td>
                                            <td class="text-center"><a href="javascript:maintainHistory(&#39;10545055917999841081&#39;,&#39;沪A96A39&#39;)"><i class="fa fa-search"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <div class="checker">
                                                    <input type="hidden" name="idCustomer" value="10545055917999841026">
                                                    <input type="hidden" name="idCar" value="10545055917999841027">
                                                    <input type="hidden" value="孙先生">
                                                    <input type="checkbox" name="chk" class="uniform" value="" data-phonenum="13764444669">
                                                </div>
                                            </td>
                                            <td class="text-center"><a href="javascript:hrefCustomerCar(&#39;10545055917999841026&#39;,&#39;10545055917999841027&#39;)">孙先生</a></td>
                                            <td class="text-center">皖AML308</td>
                                            <td class="text-center">13764444669</td>
                                            <td class="text-center">个人</td>
                                            <td class="text-left">标致 308 2012款&nbsp;1.6 手自一体变速器(AT)</td>
                                            <td class="text-center"><a href="javascript:maintainHistory(&#39;10545055917999841027&#39;,&#39;皖AML308&#39;)"><i class="fa fa-search"></i></a></td>
                                        </tr>
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
                <div class="tab-pane fade" id="f_customer">
                    <p>f_customer</p>
                </div>
            </div>
        </div>
    </body>
</html>