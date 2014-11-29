Use this page for testing API with AJAX

var ready;
ready = function() {
 var newUserInfo = {
   "user": {
     "first_name": "joan",
     "last_name": "joan",
     "email": "joan@joan.com"
   }
}
 $.ajax({
     url: "/api/v1/users",
     type: "POST",
     data: newUserInfo
   })
   .done(function(res){
     console.log(res);
     console.log("Awesome!");
   })
   .fail(function(err){
     console.log(err);
     console.log("failed.");
   });
}
$(document).ready(ready);
$(document).on('page:load', ready);