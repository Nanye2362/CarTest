function ajaxFormWithValidate(s,e,t,a,r){$(s).validate({success:function(s){s.addClass("valid").closest(".form-group").removeClass("has-error").addClass("has-success")},highlight:function(s){$(s).closest(".form-group").removeClass("has-success").addClass("has-error")},submitHandler:function(o){ajaxFormWithMessage(s,e,t,a,r)}})}function ajaxFormWithMessage(s,e,t,a,r){$.blockUI({message:'<img src="/kzf6/images/gif/loading.gif" />  处理中，请稍后...'}),$.ajax({cache:!0,type:"POST",url:e,data:$(s).serialize(),async:!0,success:function(s){"success"==s.status?Messenger().post({message:t,type:"success",hideAfter:3}):"false"==s.status?null!=a&&""!=a&&Messenger().post({message:null!=s.str&&""!=s.str?s.str:a,type:"error",hideAfter:3}):"MBAU"!=s.status&&"RBAU"!=s.status&&"LBAU"!=s.status&&"AE"!=s.status||Messenger().post({message:s.str,type:"error",hideAfter:3}),$.isFunction(r)&&r.call(this,s)},error:function(s){if(401===s.status){var e="对不起，您没有权限！";if(s.responseText){var t=JSON.parse(s.responseText);e=t&&t.str?t.str:e}Messenger().post({message:e,type:"error",hideAfter:3})}else Messenger().post({message:a,type:"error",hideAfter:3})},complete:function(){$.unblockUI()}})}function ajaxPostJsonWithValidate(s,e,t,a,r,o){$(s).validate({success:function(s){s.addClass("valid").closest(".form-group").removeClass("has-error").addClass("has-success")},highlight:function(s){$(s).closest(".form-group").removeClass("has-success").addClass("has-error")},submitHandler:function(s){ajaxPostWithMessage(t,e,a,r,o)}})}function ajaxPostWithJsonData(s,e,t,a,r){ajaxPostWithMessage(s,e,t,a,r,"application/x-www-form-urlencoded;charset=UTF-8")}function ajaxPostWithMessage(s,e,t,a,r,o,n){$.blockUI({message:'<img src="/kzf6/images/gif/loading.gif" />  处理中，请稍后...'}),$.ajax({cache:!0,type:"post",url:e,dataType:"json",contentType:o||"application/json;charset=UTF-8",data:s,async:!0,traditional:n||!1,success:function(s){"success"===s.status?Messenger().post({message:t,type:"success",hideAfter:3}):"false"===s.status||"fail"===s.status?s.str?Messenger().post({message:s.str,type:"error",hideAfter:5}):null!=a&&""!=a&&Messenger().post({message:a,type:"error",hideAfter:5}):"MBAU"!=s.status&&"RBAU"!=s.status&&"LBAU"!=s.status&&"AE"!=s.status||Messenger().post({message:s.str,type:"error",hideAfter:3}),$.isFunction(r)&&r.call(this,s)},error:function(s){Messenger().post({message:a,type:"error",hideAfter:3})},complete:function(){$.unblockUI()}})}function ajaxGetWithMessage(s,e,t,a,r){$.ajax({cache:!0,type:"get",url:e,dataType:"json",contentType:"application/json",data:s,async:!1,success:function(s){"success"==s.status?Messenger().post({message:t,type:"success",hideAfter:3}):"false"==s.status?Messenger().post({message:null!=s.str&&""!=s.str?s.str:a,type:"error",hideAfter:3}):"MBAU"!=s.status&&"RBAU"!=s.status&&"LBAU"!=s.status&&"AE"!=s.status||Messenger().post({message:s.str,type:"error",hideAfter:3}),$.isFunction(r)&&r.call(this,s)},error:function(s){Messenger().post({message:a,type:"error",hideAfter:3})}})}function ajaxFormWithMessageBtn(s,e,t,a,r){disableBtn(),$.ajax({cache:!0,type:"POST",url:e,data:$(s).serialize(),async:!1,success:function(s){enableBtn(),"success"==s.status?Messenger().post({message:t,type:"success",hideAfter:3}):"false"==s.status?Messenger().post({message:null!=s.str&&""!=s.str?s.str:a,type:"error",hideAfter:3}):"MBAU"!=s.status&&"RBAU"!=s.status&&"LBAU"!=s.status&&"AE"!=s.status||Messenger().post({message:s.str,type:"error",hideAfter:3}),$.isFunction(r)&&r.call(this,s)},error:function(s){enableBtn(),Messenger().post({message:a,type:"error",hideAfter:3})}})}function getRequest(s,e){var t=null;return $.ajax({cache:!0,type:"get",url:e,dataType:"json",contentType:"application/json",data:s,async:!1,success:function(s){t=s},error:function(){t=-1}}),t}
//# sourceMappingURL=ajax-submit-5151e1aac3.js.map