$(document).ready(function () {

    $('#registerForm').validate({ // initialize the plugin
        rules: {
            firstName: {
                required: true,
                minlength: 4
            },
            username: {
                required: true,                
                minlength: 4
            },
            email: {
                required: true,
                email: true,
                minlength: 5
            },password: {
                required: true,                
                minlength: 8
            },           
            rpassword: {
                required: true,
                minlength: 8,
                equalTo: "#password"
            },
            telephone: {
                required: true,                
                minlength: 9
            }
        }
    });
    
    /*
    if($('input[name=gender1]:checked').length<=0 && $('input[name=gender2]:checked').length<=0)
    {
     alert("No gender selected")
    }
    */
});