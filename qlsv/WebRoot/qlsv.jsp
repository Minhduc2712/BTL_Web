<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style>
    .form-group {
        display: flex;
        flex-direction: row;
        align-items: center;
        margin: 5px;
    }
    .form-group label {
    	width: 90px;
        margin: 0;
    }
    .form-group input {
    	margin: 5px;
    }
    .buttons {
        display: flex; 
        flex-direction: row;
        margin-top: 10px;
    }
    .buttons button {
        margin: 0 20px;
    }
    .form-title {
        margin-left: 100px;
        color: blue;
    }
</style>

</head>
<body>
    <%
        String formtitle="QUẢN LÝ THÔNG TIN SINH VIÊN";
    %>
    <h4 class="form-title"><%= formtitle %></h4>
    <FORM id="studentForm" method="post" action='slvSV1'>
        <div class="form-group">
            <label for="parmasv">Mã SV:</label>
            <input type='text' name='parmasv' value='' style="width:120px;"><br> 
        </div>
        <div class="form-group">
            <label for="parhodemsv">Họ đệm SV:</label>
            <input type='text' name='parhodemsv' value=''>
            <label for="partensv" style="width:60px;">Tên SV:</label>
            <input type='text' name='partensv' value=''><br> 
        </div>
        <div class="form-group">
            <label for="partelsv">Số điện thoại:</label>
            <input type='text' name='partelsv' value=''>
        </div>
        <div class="form-group">
        	<label for="paremailsv">Email:</label>
            <input type='text' name='paremailsv' value=''><br>
        </div>

        <div class="buttons">
            <button type="submit" name="action" value="add">Thêm SV mới</button>
        	<button type="submit" name="action" value="edit">Lưu sửa tt SV</button>
        	<button type="submit" name="action" value="delete">Xóa SV</button>
        </div>
    </FORM>
    <br>
    <h2>Thông tin sinh viên</h2>
    <br>
    <h3>${requestScope.message}</h3>
    <br>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">Mã SV</th>
      <th scope="col">Tên SV</th>
      <th scope="col">Họ Đệm SV</th>
      <th scope="col">SDT</th>
      <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">${requestScope.masv}</th>
      <td>${requestScope.tensv} </td>
      <td>${requestScope.hodemsv}</td>
      <td>${requestScope.telsv}</td>
      <td>${requestScope.emailsv}</td>
    </tr>
    
    
  </tbody>
</table>
    
    <script src="assests/Js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
</body>
</html>
