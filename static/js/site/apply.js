$(function(){

    // var files=$("#feedback_form input[name=files]");
    // if(files.val()!=""){
    //     files_o=files.val().split(".");
    //     k=files_o[files_o.length-1].toLocaleLowerCase()
    //     if(k!="jpeg" && k!="jpg" && k!="gif" && k!="png" && k!="pdf" && k!="doc" && k!="docx" && k!="xlsx" && k!="xls"){
    //         $(".errfiles").html("Format is GPEG,JPG,GIF,PNG,PDF,DOC,DOCX,XLSX,XLS!").show();
    //         return false;
    //     }
    // }


    
    rules = {
        name: {
            required:true
            ,minlength:2
            ,maxlength:100
        },
        email: {
            required:true
            ,minlength:2
            ,maxlength:100
            ,email:true
        },
        edu: {
            required:true
            ,minlength:2
            ,maxlength:20
        },
        tel: {
            required:true
            ,minlength:1
            ,maxlength:20
            ,digits:true
        },
        language: {
            required:true
            ,minlength:2
            ,maxlength:20
        }
    };
    messages = {
        name: {
            required: "您还没有输入申请人"
            ,minlength: ""
            ,maxlength: ""
        },
        email: {
            required: "您还没有输入邮箱"
            ,minlength: ""
            ,maxlength: ""
            ,email: "您输入的邮箱格式不正确"
        },
        edu: {
            required: "您还没有输入项目类型"
            ,minlength: ""
            ,maxlength: ""
        },
        tel: {
            required: "您还没有输入号码"
            ,minlength: ""
            ,maxlength: ""
            ,digits: "您输入的号码不正确"
        },
        language: {
            required: "您还没有输入备注"
            ,minlength: ""
            ,maxlength: ""
        }
    }
    make_validate('frm-apply',rules,messages);
});
