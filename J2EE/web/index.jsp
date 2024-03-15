<%@ page language="java" contentType="text/html;charset=utf-8" import="java.sql.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title>网上书店</title>
<style>
  body {
    background-color: #f2f2f2;
    color: #ffffff;
    font-family: Arial, sans-serif;
    font-size: 16px;
    line-height: 1.5;
    margin: 0;
    background: url("image/R-C.jpg") fixed no-repeat;
    padding: 0; text-align: center;
  }
  form {
    width: 240px;
    height: 220px;
    display: flex;
    flex-direction: column;
    padding: 40px;
    text-align: center;
    position:center;
    z-index: 100;

    border-radius: 18px;
    overflow: hidden;

    background-size: cover;
  }
  input[type="text"],
  input[type="password"] {
    border: none;
    border-radius: 3px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
    font-size: 16px;
    margin: 10px 0;
    padding: 10px;
    width: 100%;
  }
  input[type="submit"] {
    background-color: #6495ED;
    border: none;
    border-radius: 3px;
    color: #fff;
    cursor: pointer;
    font-size: 16px;
    margin: 10px 0;
    padding: 10px;
    transition: background-color 0.3s;
    width: 100%;
  }
  input[type="submit"]:hover {
    background-color: #6495ED;
  }
</style>
</head>


  <body >
<form action="dl.jsp" method="post" name="frm">
  账号：<input type="text" name="name"><br>
  密码：<input type="password" name="password"><br>
    <input type="submit" value="登录">
</form>
  </body>
</html>
