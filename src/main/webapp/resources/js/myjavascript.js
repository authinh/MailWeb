$(document).ready(function(){
  $('#sendMail').click(function(){
    var mailTemplate={
      contactList: [],
      subject:"",
      content:""
    };
     $('.badgebox').each(function(){
       if($(this).is(":checked")){
          //alert($(this).next().val());
          mailTemplate.contactList.push($(this).next().val()); 
       }
     });
    mailTemplate.subject = $('#subject').val();
    mailTemplate.content = $('#content').val();
    
    $.post("demo_test_post.asp",mailTemplate,
    function(data, status){
        alert("Data: " + data + "\nStatus: " + status);
    });
  });
});