//$('.card').matchHeight();
$(function(){
    
    $('ul.nav.nav-pills li.nav-item a.nav-link').click(function() {  
        $('#nav-all').removeClass('active');
        $('#nav-css').removeClass('active');
        $('#nav-js').removeClass('active');
        $(this).addClass('active');
    });
   
  
   $('#nav-all').click(function(){
     $('.col-md-4').show();
   });
  
   $('#nav-css').click(function(){
     $('.col-md-4').hide();
     $('.cssProject').show();
   });
  
   $('#nav-js').click(function(){
     $('.col-md-4').hide();
     $('.jsProject').show();
   });
  

  
 
  
});
//cssProject
//javascriptProject