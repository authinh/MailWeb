<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Calm</title>
      <!-- táº¡o icon -->
      <link rel="icon" type="image/png" href="https://www.calm.com/images/favicon.png">
      <link rel="stylesheet" href="resources/css/meditate.css">
      <link rel="stylesheet" href="resources/css/listplayer.css">
      <link rel="stylesheet" href="resources/css/font-awesome.min.css">
      <!-- Latest compiled and minified CSS 
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >-->

      <!-- Optional theme -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

      <!-- Latest compiled and minified JavaScript -->
      <script type="text/javascript"> var tracks= ${music}</script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
      
       
      <script type="text/javascript" src="resources/js/listplayer.js"> </script> 
      
      <!-- player mp3 á» ÄÃ¢y -->
      </head>
<body background="http://cdn.calm.com/images/ZRPAmzj/1pZZeKNE9/program-bg-ZRPAmzj.jpg">
	<div  class="container">
    <div class="column add-bottom" >
        <div id="mainwrap" class="show-hide">
            <div id="nowPlay">
                <span class="left" id="npAction">Paused. ô a  ..</span>
                <span class="right" id="npTitle"></span>
            </div>
            <div id="audiowrap">
                <div id="audio0">
                    <audio preload id="audio1" controls="controls">Your browser does not support HTML5 Audio!</audio>
                </div>
                <div id="tracks">
                    <a id="btnPrev">&laquo;</a>
                    <a id="btnNext">&raquo;</a>
                </div>
            </div>
            <div id="plwrap" class="controls hidden">
                <ul id="plList" class ="scrollable-menu"></ul>
            </div>
        </div>
    </div>
    
</div>

</body>
</html>