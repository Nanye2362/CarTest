function clearNoNum(e){try{$(e).setSelectionRange($(e).val().length,$(e).val().length),$(e).val($(e).val().replace(/[^\d.]/g,"")),$(e).val($(e).val().replace(/^\./g,"")),$(e).val($(e).val().replace(/\.{2,}/g,".")),$(e).val($(e).val().replace(".","jQuery#jQuery").replace(/\./g,"").replace("jQuery#jQuery","."))}catch(e){}}function deleteStuffRow(){var e=jQuery(".grid2")[0].grid.currIndex;jQuery("#stufflist").find("tr").size()-1>e+1&&jQuery("#stufflist").delrow(jQuery(".grid2")[0].grid.currIndex+1)}function sendChn(e,t){var a=jQuery("#"+e).val();null!=a&&""!=a&&jQuery.ajax({type:"post",url:"/"+ctx+"/common/PinyinHelperAction/transferToPinYin.json",dataType:"json",data:"chn="+a,success:function(e){jQuery("#"+t).attr("value",e.pinyin)}})}function changeTwoDecimal(e){t=parseFloat(e);if(isNaN(t))return alert("请输入数字"),!1;var t=Math.round(1e4*e)/1e4,a=(t=Math.round(100*e)/100).toString(),n=a.indexOf(".");for(n<0&&(n=a.length,a+=".");a.length<=n+2;)a+="0";return a}function formReset(){jQuery("input:text",document.forms[0]).each(function(){jQuery(this).val("")}),jQuery("select",document.forms[0]).each(function(){jQuery(this).val("")}),jQuery("input:hidden",document.forms[0]).each(function(){jQuery(this).val("")})}function changeUpperCase(e){jQuery(e).val(jQuery(e).val().toUpperCase())}function ajaxAsynGetNoTip(e,t,a){$.ajax({cache:!0,type:"get",dataType:"jsonp",url:t,data:e,async:!0,error:function(e){},success:function(e){$.isFunction(a)&&a.call(this,e)}})}function ajaxGetNoTip(e,t,a){$.ajax({cache:!0,type:"get",dataType:"json",url:t,data:e,async:!0,error:function(e){},success:function(e){$.isFunction(a)&&a.call(this,e)}})}function ajaxGetWithProgressDialog(e,t,a,n){$.blockUI({message:"<img src='/kzf6/images/gif/loading.gif' />  处理中，请稍后..."});var s=!1;n&&(s=n),$.ajax({cache:!0,type:"get",dataType:"json",traditional:s,url:t,data:e,error:function(e){401==e.status?Messenger().post({message:"对不起，您没有权限！",type:"error",hideAfter:3}):Messenger().post({message:"对不起，系统忙，请稍后再试或联系F6客服。",type:"error",hideAfter:5})},success:function(e){$.isFunction(a)&&a.call(this,e)},complete:function(){$.unblockUI()}})}function ajaxPostNoTip(e,t,a){disableBtn(),$.blockUI({message:'<img src="/kzf6/images/gif/loading.gif" />  处理中，请稍后...'}),$.ajax({cache:!0,type:"post",dataType:"json",url:t,contentType:"application/json",data:JSON.stringify(e),async:!0,error:function(e){enableBtn(),Messenger().post({message:"对不起，系统忙，请稍后再试...",type:"error",hideAfter:5})},success:function(e){enableBtn(),$.isFunction(a)&&a.call(this,e)},complete:function(){$.unblockUI()}})}function ajaxFormGetNoTip(e,t,a){disableBtn(),$.blockUI({message:'<img src="/kzf6/images/gif/loading.gif" />  处理中，请稍后...'}),$.ajax({cache:!0,type:"GET",url:t,data:$(e).serialize(),async:!0,error:function(e){enableBtn(),Messenger().post({message:"对不起，系统忙，请稍后再试...",type:"error",hideAfter:3})},success:function(e){enableBtn(),$.isFunction(a)&&a.call(this,e)},complete:function(){$.unblockUI()}})}function ajaxFormNoTip(e,t,a){disableBtn(),$.blockUI({message:'<img src="/kzf6/images/gif/loading.gif" />  处理中，请稍后...'}),$.ajax({cache:!0,type:"POST",url:t,data:$(e).serialize(),async:!0,error:function(e){enableBtn(),Messenger().post({message:"对不起，系统忙，请稍后再试...",type:"error",hideAfter:3})},success:function(e){enableBtn(),$.isFunction(a)&&a.call(this,e)},complete:function(){$.unblockUI()}})}function ajaxForm(e,t,a,n){disableBtn(),$.blockUI({message:'<img src="/kzf6/images/gif/loading.gif" />  处理中，请稍后...'}),$.ajax({cache:!0,type:"POST",url:t,data:$(e).serialize(),async:!0,error:function(e){enableBtn(),401==e.status?Messenger().post({message:"对不起，您没有权限！",type:"error",hideAfter:3}):Messenger().post({message:"对不起，系统忙，请稍后再试...",type:"error",hideAfter:3})},success:function(e){enableBtn(),"success"==e.status?Messenger().post({message:a,type:"success",hideAfter:3}):"MBAU"==e.status||"RBAU"==e.status||"LBAU"==e.status||"AE"==e.status?Messenger().post({message:e.str,type:"error",hideAfter:3}):"false"===e.status&&Messenger().post({message:e.str,type:"error",hideAfter:3}),$.isFunction(n)&&n.call(this,e)},complete:function(){$.unblockUI()}})}function ajaxGet(e,t,a,n){$.ajax({cache:!0,type:"get",url:t,data:e,async:!1,error:function(e){401==e.status?Messenger().post({message:"对不起，您没有权限！",type:"error",hideAfter:3}):Messenger().post({message:"对不起，系统忙，请稍后再试...",type:"error",hideAfter:3})},success:function(e){"success"==e.status?Messenger().post({message:a,type:"success",hideAfter:3}):"MBAU"==e.status||"RBAU"==e.status||"LBAU"==e.status||"AE"==e.status?Messenger().post({message:e.str,type:"error",hideAfter:3}):Messenger({extraClasses:"messenger-fixed messenger-on-top"}).post({message:""!=e.str.trim()?e.str:getConstantMsg("DAFAULT_ERROR_MSG"),type:"error",hideAfter:5}),$.isFunction(n)&&n.call(this,e)}})}function ajaxPost(ajaxdata,ajaxurl,message,ajaxcallback){disableBtn(),$.blockUI({message:'<img src="/kzf6/images/gif/loading.gif" />  处理中，请稍后...'}),$.ajax({cache:!0,type:"post",url:ajaxurl,dataType:"json",contentType:"application/json",data:JSON.stringify(ajaxdata),async:!0,error:function(response){if(enableBtn(),"401"==response.status){var text=response.responseText,json=eval("("+text+")");Messenger().post({message:json.str,type:"error",hideAfter:3})}else Messenger().post({message:"对不起，系统忙，请稍后再试...",type:"error",hideAfter:3})},success:function(e){enableBtn(),"success"==e.status&&Messenger().post({message:message,type:"success",hideAfter:3}),$.isFunction(ajaxcallback)&&ajaxcallback.call(this,e)},complete:function(){$.unblockUI()}})}function ajaxGetPage(e,t,a,n){t||(t=""),e=isJsonObject(e)?e:{};var s=n?n.find("#pageIndex"):$("#pageIndex");s.val()&&(e.pageIndex=s.val(),e.currentPage=s.val()),$.blockUI({message:'<img src="/kzf6/images/gif/loading.gif" />  处理中，请稍后...'}),$.ajax({cache:!0,type:"get",dataType:"json",url:t,data:e,traditional:!0,error:function(e){Messenger().post({message:"系统错误，请联系管理员",type:"error",hideAfter:5})},success:function(e){if("success"==e.status)$.isFunction(a)&&a.call(this,e);else{var t="系统错误，请联系管理员";data.str&&(t=data.str),Messenger().post({message:t,type:"error",hideAfter:5})}},complete:function(){$.unblockUI()}})}function submitForm(e,t){try{jQuery("button").each(function(){jQuery(this).attr("id");jQuery(this).attr("disabled",!0)})}catch(e){}jQuery(e).attr({action:t}).submit()}function disableBtn(){jQuery("button").each(function(){jQuery(this).attr("disabled",!0)})}function enableBtn(){jQuery("button").each(function(){jQuery(this).attr("disabled",!1)})}function isJsonObject(e){return"object"==typeof e&&"[object object]"==Object.prototype.toString.call(e).toLowerCase()&&!e.length}function windowLocateWithUrl(e,t,a){e||(e=""),t=isJsonObject(t)?t:{};var n=a||$("#pageIndex");n.val()&&(t.pageIndex=n.val(),t.currentPage=n.val()),e+="?";for(var s in t)t.hasOwnProperty(s)&&(e+=s+"="+t[s]+"&");e.length>0&&(e=e.substr(0,e.length-1)),window.location.href=e}function getRootPath(){var e=window.document.location.href,t=window.document.location.pathname,a=e.indexOf(t);return e.substring(0,a)+t.substring(0,t.substr(1).indexOf("/")+1)}function showQueryDiv(){var e=!1;$(".more-conditions-detail input").each(function(){$(this).val()&&(e=!0)}),$(".more-conditions-detail select").each(function(){$(this).val()&&(e=!0)}),e&&$("#more-conditions-detail").toggleClass("show")}function hrefSourceBill(e,t,a){var n;if("CGD"==e)n=getRootPath()+"/purchase/"+t+"/toViewPurchase.do?idOwnOrg="+a;else if("CGT"==e)n=getRootPath()+"/stockReturn/"+t+"/toViewStockReturn.do?idOwnOrg="+a;else if("RKD"==e)n=getRootPath()+"/stockIn/"+t+"/toViewStockIn.do";else if("CKD"==e)n=getRootPath()+"/stockOut/"+t+"/toViewStockOut.do";else if("LSD"==e)n=getRootPath()+"/retail/getRetailInfo/"+t+".do";else if("GD"==e)n=getRootPath()+"/maintain/getMaintainInfo/"+t+".do";else if("LPD"==e)n=getRootPath()+"/claim/getMaintainInfo/"+t+".do";else if("PDD"==e)n=getRootPath()+"/collate/get/"+t+"/toShow.do";else{if("MC"==e)return memberCardDetail(t),!1;"CCD"==e?n=getRootPath()+"/carCheck/"+t+"/toViewCarCheck.do":"CCD_NEW"==e?n=getRootPath()+"/carCheck/"+t+"/toViewCarCheckNew.do":"YJD_NEW"==e?n=getRootPath()+"/carCheck/"+t+"/toViewCarPreview.do":"XCD"==e?n=getRootPath()+"/wash/getWashInfo/"+t+".do":"TJD"==e?n=getRootPath()+"/adjustPrice/"+t+"/toViewAdjust.do":"TC"==e?n=getRootPath()+"/package/"+t+"/toViewPackage.do":"DCD"==e?n=getRootPath()+"/allot/getAllotIn/"+t+".do":"DRD"==e?n=getRootPath()+"/allot/getAllotIn/"+t+".do":"DZD"==e&&(n=getRootPath()+"/reconciliationOrder/getOrderDetailPageList/"+t+".do")}window.open(n)}function hrefCustomerCar(e,t){var a=getRootPath()+"/customerCar/getCustomerCar/"+e+"/"+t+".do";window.open(a)}function exit(){window.location.href=getRootPath()+"/page/index/index.jsp"}function memberCardDetail(e){$.ajax({cache:!0,type:"get",url:getRootPath()+"/vip/queryMemberByIdMember.json",dataType:"json",contentType:"application/json",data:"idMember="+e,async:!1,success:function(e){var t=e,a="",n="",s=t.memberEntity;null!=s.vipMoney&&s.vipMoney;var i="";null!=s.memo&&(i=s.memo);var r="";1==s.permanent&&(r="永久有效"),null!=s.endDate&&(r=s.endDate);var o=t.memberEntityDetailList;if("JCK"==s.cardType){var c="<div class='cardBody no-padding jckDetail' id='timesCard'><h3>"+s.name+"</h3><p class='cardEndDate'>截止有效期:<i>"+r+"</i></p><div class='desc'>"+i+"</div><ul class='itemList'><li id='itemDetail'><div class='itemTitle heading'>项目名称</div><div class='itemUsered heading'>已用</div><div class='itemRemaining heading'>剩余</div></li>",u="";$.each(o,function(e,t){u+="<li><div class='itemTitle'>"+t.serviceName+"</div><div class='itemUsered'><i>"+t.usedNumber+"</i></div><div class='itemRemaining'><i>"+t.unusedNumber+"</i></div></li>"});a=c+u+"</ul></div>",$("#memberInfo").html(a),$("#cardDetail").toggle("fast")}if("TCK"==s.cardType){var l="<div class='cardBody no-padding tckDetail' id='comboCard'><h3>"+s.name+"</h3><p class='cardEndDate'>截止有效期:<i>"+r+"</i>剩余次数:<i>"+s.unusedNumber+"</i>次</p><div class='desc'>"+i+"</div><ul class='itemList'><li id='itemDetail'><div class='itemTitle heading'>项目名称</div><div class='itemUsered heading'>数量</div><div class='itemRemaining heading'>金额</div></li>",d="";$.each(o,function(e,t){d+="<li><div class='itemTitle'>"+t.serviceName+"</div><div class='itemUsered'><i>"+t.number+"</i></div><div class='itemRemaining'><i>"+t.amount+"</i></div></li>"}),n=l+d+(g="</ul></div>"),$("#memberInfo").html(n),$("#cardDetail").toggle("fast")}if("CZK"==s.cardType){var g="</div>";n=(l="<div class='cardBody no-padding czkDetail' id='comboCard'><h3>"+s.name+"</h3><p class='cardEndDate'>截止有效期:<i>"+r+"</i></p><div class='desc'>"+i+"</div><div class='price'><div class='amount'><i class='fa fa-rmb'></i><i>"+s.amount+"</i></div></div>")+g,$("#memberInfo").html(n),$("#cardDetail").toggle("fast")}},error:function(e){}}),$("#btnClose").click(function(){$("#cardDetail").hide("fast")})}function confirmDialog(e,t,a){if(!confirm(e))return!1;t.call(this)}function confirmMessageDialog(e,t,a){var n=Messenger().post({message:e,hideAfter:null,actions:{retry:{label:"确定",phrase:"Retrying TIME",auto:!1,delay:10,action:function(){t.call(this),n.hide()}},cancel:{label:"取消",action:function(){return a&&a.call(this),n.cancel()}}}})}function toThousands(e){for(var t="",a=0,n=(e=(e||0).toString()).split("."),s=n[0],i=s.length-1;i>=0;i--)a++,t=s.charAt(i)+t,a%3||0==i||(t=","+t);for(i=1;i<n.length;i++)t+=".",t+=n[i];return t}function formatDate(e,t){arguments.length<2&&!e.getTime&&(t=e,e=new Date);var a=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","日","一","二","三","四","五","六"];return t.replace(/YYYY|YY|MM|DD|hh|mm|ss|星期|周|www|week/g,function(t){switch(t){case"YYYY":return e.getFullYear();case"YY":return(e.getFullYear()+"").slice(2);case"MM":return e.getMonth()+1<10?"0"+(e.getMonth()+1):e.getMonth()+1;case"DD":return e.getDate()<10?"0"+e.getDate():e.getDate();case"hh":return e.getHours()<10?"0"+e.getHours():e.getHours();case"mm":return e.getMinutes()<10?"0"+e.getMinutes():e.getMinutes();case"ss":return e.getSeconds()<10?"0"+e.getSeconds():e.getSeconds();case"星期":return"星期"+a[e.getDay()+7];case"周":return"周"+a[e.getDay()+7];case"week":return a[e.getDay()];case"www":return a[e.getDay()].slice(0,3)}})}function getConstantMsg(e){return{MODIFIED_BY_ANOTHER_USER_MSG:"页面内容过期了,请刷新页面后再继续操作!",REMOVED_BY_ANOTHER_USER_MSG:"页面数据已经被删除,请稍后刷新再试!",HAVE_PAYED_MSG:"本单已经结算完成,请刷新页面!",DAFAULT_ERROR_MSG:"系统繁忙,请稍后再试!"}[e]}function html2Escape(e){return e.replace(/[<>&"']/g,function(e){return{"<":"&lt;",">":"&gt;","&":"&amp;",'"':"&quot;","'":"&#39;"}[e]})}function escapeHtml(e){return $("<div>").html(e).text()}$.fn.trimSpace=function(){$(this).bind("blur",function(){$(this).val($(this).val().trim())})},$.fn.onlyNum=function(){$(this).keypress(function(t){var a=t||e,n=a.keyCode||a.which;return n>=48&&n<=57}).focus(function(){this.style.imeMode="disabled"}).bind("blur",function(){$(this).val($(this).val().replace(/[^0-9]/g,""))})},$.fn.onlyNumAlpha=function(){$(this).keypress(function(t){var a=t||e,n=a.keyCode||a.which;return n>=48&&n<=57||n>=65&&n<=90||n>=97&&n<=122}).focus(function(){this.style.imeMode="disabled"}).bind("paste.onlyNumAlpha",function(e){var t="",a=window.clipboardData;return a?t=a.getData("Text"):(a=e.originalEvent.clipboardData)&&(t=a.getData("Text")),!!/^(\d|[a-zA-Z])+$/.test(t)}).bind("blur",function(){$(this).val($(this).val().replace(/[^0-9a-zA-Z]/g,""))})},$.fn.carNoInput=function(){};var getFloatStr=function(e){return e+="",e=e.replace(/[^0-9|\.]/g,""),e=e.replace(/^0+/,""),e=e.replace(/\.+/gi,"."),/\./.test(e)||(e+=".000"),/^\./.test(e)&&(e="0"+e),e+="000",e=e.match(/\d+\.\d{3}/)[0]};jQuery(document).ready(function(){jQuery(".table:not(.stuffTable) tr>td:first-child").nextAll("td").click(function(){var e=jQuery(this).parent().find("input:checkbox")[0];if(!$(e).prop("disabled")){var t,a=!1;e&&(t=$(e).prop("checked")),e||(a=!0),a||(t?(e&&$(e).prop("checked",!1),jQuery(this).parent().css({background:"#FFFFFF"}),jQuery(this).parent().index()%2==0&&jQuery(this).parent().css({background:"#F3F7FA"})):(e&&$(e).prop("checked",!0),jQuery(this).parent().css({background:"#EFEFEF"})))}}),$(".modal-body").delegate("table:not(.cardSet-layout) tbody tr td","click",function(e){var t=jQuery(this).parent("tr").eq(0).find("input:checkbox")[0],a=jQuery(this).parent("tr").eq(0).find("input:radio:not(.RCheck)")[0],n=e.target.cellIndex;if(void 0==n||0==n)return!0;var s;a&&(s=$(a).prop("checked")),t&&(s=$(t).prop("checked")),s?(a&&$(a).prop("checked",!1),t&&$(t).prop("checked",!1),jQuery(this).parent().css({background:"#FFFFFF"})):(a&&$(a).prop("checked",!0),t&&$(t).prop("checked",!0))}),$(".onlyNum").onlyNum(),$(".onlyNumAlpha").onlyNumAlpha(),$(".carNoInput").carNoInput(),$(".trimSpace").trimSpace()}),jQuery(function(e){Messenger.options={extraClasses:"messenger-fixed messenger-on-top",theme:"flat",showCloseButton:!0},showQueryDiv()}),$(function(){$(".input-search").keyup(function(){""!=$(this).val().trim()?$(".clearInput").show():$(".clearInput").hide()}),$(".input-search").focus(function(){""!=$(this).val().trim()?$(".clearInput").show():$(".clearInput").hide()}),$(".clearInput").click(function(){$(".input-search").val(""),$(this).hide(),$(".input-search").focus()})}),jQuery.fn.rowspan=function(e){return this.each(function(){var t;$("tr",this).each(function(a){$("td:eq("+e+")",this).filter(":visible").each(function(e){null!=t&&$(this).attr("id")==$(t).attr("id")?(rowspan=$(t).attr("rowSpan"),void 0==rowspan&&($(t).attr("rowSpan",1),rowspan=$(t).attr("rowSpan")),rowspan=Number(rowspan)+1,$(t).attr("rowSpan",rowspan),$(this).hide()):t=this})})})},jQuery.fn.rowspanName=function(e){return this.each(function(){var t;$("tr",this).each(function(a){$("td:eq("+e+")",this).filter(":visible").each(function(e){null!=t&&$(this).html()==$(t).html()?(rowspan=$(t).attr("rowSpan"),void 0==rowspan&&($(t).attr("rowSpan",1),rowspan=$(t).attr("rowSpan")),rowspan=Number(rowspan)+1,$(t).attr("rowSpan",rowspan),$(this).hide()):t=this})})})},$.f6car=$.f6car||{};
//# sourceMappingURL=common-f83fd0c1ac.js.map