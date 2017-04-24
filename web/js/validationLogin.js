$(document).ready(function () {

    $('#login-form').validate({ // initialize the plugin
        rules: {
            username: {
                required: true,               
                minlength: 4
            },
            password: {
                required: true,                
                minlength: 8
            }
        }
    });
    
   
});