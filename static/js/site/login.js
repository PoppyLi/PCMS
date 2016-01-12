$(function(){
    rules = {
        tel: {
            required:true
            ,minlength:1
            ,maxlength:20
            ,digits:true
        },
        pwd: {
            required:true
            ,minlength:2
            ,maxlength:20
        }
    };
    messages = {
        tel: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
            ,digits: ""
        },
        pwd: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
        }
    }
    make_validate('login',rules,messages);
});
