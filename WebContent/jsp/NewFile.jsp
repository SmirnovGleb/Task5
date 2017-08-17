<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <title>File Uploading Form</title>
      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
       
   </head>
   
   <body>
   <form id="idForm" method="post">
   	<input type="text" id="name" name="name"/>
   	<input type="submit" id="done" />
   	<div id="information"></div>
   	</form>
   </body>
   <script type="text/javascript">
 
       $("#idForm").submit(function(e) {
    	    var url = "../Contr";
    	    var name = $("#name").val();
    	    $.ajax({
    	           type: "POST",
    	           url: url,
    	           data: $("#idForm").serialize(), 
    	           
    	           success: function(data)
    	           {
    	               
    	           }
    	         });
    	    e.preventDefault(); 
    	});
    
    </script>
</html>