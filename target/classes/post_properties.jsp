<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="postProperties"  method="post" enctype="multipart/form-data">

           <label for="myfile">enter your email:</label>
           <input type="text" id="myfile" name="email">
           <br>
         <label for="myfile">Select a file:</label>
           <input type="file" id="myfile" name="multipartfile">
          <br>
          <label>location </label>
          <input type="text" name="city">
          <br>
           <label>rent </label>
          <input type="text" name="rent">
          <label for="myfile">submit:</label>
            <input type="submit">
            <h3> ${text }</h3>
</form>
</body>
</html>