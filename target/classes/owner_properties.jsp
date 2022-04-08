
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<style>
table, th, td {
  border:1px solid black;
}
.box{
 
 display:flex;

 padding: 0 3rem;
 margin: 15px;
}
.box img{
height:250px;
background-color: black;
}
.content{
background-color: white;
}
</style>
<body>

<h2> your images</h2>

<table style="width:10%">

 <c:forEach var="user" items="${userInfo}">
  <div class="box">
             <img src="${user.image}" alt="">
              <!--      <img src="uploded_image_on_server/2020-06-13.png" alt=""> --> 
                <h3>$12,999</h3>
                <div class="content">
                    <div class="text">
                        <h3>jaipur</h3>
                        <p>${user.rent}</p>
                    </div>
                    <div class="icon">
                        <i class='bx bx-bed' ><span>5</span></i>
                        <i class='bx bx-bath' ><span>2</span></i>
                    </div>
                </div>
                
            </div>
  </c:forEach>
 
</table>


</body>
</html>