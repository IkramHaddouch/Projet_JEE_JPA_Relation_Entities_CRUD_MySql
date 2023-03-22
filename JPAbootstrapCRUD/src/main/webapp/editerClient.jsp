<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title> Modification des clients</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@include file="header.jsp" %>
<p></p>
<div class="container">
<div class="card">
  <div class="card-header">
    Modification des clients
  </div>
  <div class="card-body">
      <form action="updateClient" method="post" >
      <div hidden class="form-group"  >
       <label class="control-label">ID Client :</label>
       <input type="text" name="id" class="form-control" value="${client.id}"/>
      </div>
      <div class="form-group">
       <label class="control-label">Nom  :</label>
       <input type="text" name="nom" class="form-control" value="${client.nom}"/>   
      </div>   
      <div class="form-group">
       <label class="control-label">Prenom :</label>
       <input type="text" name="prenom" class="form-control" value="${client.prenom}"/>   
      </div> 
       
       <div class="form-group">   
       <select name="information" class="form-control">
       <option value="${client.information.id }" selected>${client.information.id }</option>
          <c:forEach items="${infModel.informations}" var="inf">  
          <c:if test="${inf.id != client.information.id }">       
            <option value="${inf.id}">${inf.id}</option>
            </c:if>
         </c:forEach>
       </select>
     </div> 
     
      <div>     
       <button type="submit" class="btn btn-primary">Modifier</button>
      </div>
      </form>     
  </div>
</div>
</div>
</body>
</html>