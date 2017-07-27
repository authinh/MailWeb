
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
${gethead }

 <style>
 	.fixed-bg {
    background-image: url("${background}");
    min-height: 500px;
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
 </style>
</head>
<body id="page-top" class="fixed-bg" data-spy="scroll" data-target=".navbar-fixed-top">
	<!-- Header -->
	${getheader}
	
	<!-- Container -->
	${getContainer }
	
	<!-- Footer -->
	<!-- Plugin JavaScript-->
	${getfooter}

</body>

</html>
