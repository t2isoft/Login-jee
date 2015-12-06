<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>         
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification profil</title>
         <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	    <link rel="stylesheet" href="css/main.css" />
	    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	    <script src="js/parallax.js"></script>
	    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
	    <!--Pulling Awesome Font -->
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <style>
body {
	background-image:url("http://www.wallpapers-hd.ovh/wp-content/uploads/2015/01/console-games-0367.jpg");
}
.container {
    padding: 25px;
}

.form-login {
    background-color: #EDEDED;
    padding-top: 10px;
    padding-bottom: 20px;
    padding-left: 20px;
    padding-right: 20px;
    border-radius: 15px;
    border-color:#d2d2d2;
    border-width: 5px;
    width:25%;
    box-shadow:0 1px 0 #cfcfcf;
    box-shadow: 2px 2px 15px black;
    box-shadow: -1px 2px 10px 3px rgba(0, 0, 0, 0.3) inset;
    margin-left: auto;
    margin-right: auto;
    margin-top:150px;
    opacity:0.9;

}

h4 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
}

.form-control {
    border-radius: 10px;
}

.wrapper {
    text-align: center;
}
.header {
	background-color: black;
	height: 60px;
	color: white;
	top:0;
}

.footer {
	bottom:0;
	left:0;
	height:40px;
	width:100%;
	background: black;
	position:fixed;
}
.IgameLogo{
	top:0;
	float:right;
	width: 60px;
	height: 60px;
}
</style>
    <body>
    <!-- Header -->
	<div class="header">
	<img class="IgameLogo" src="http://img11.hostingpics.net/pics/731672logoigamefondnoir.png" alt="">
		<p style="padding-top:2px;">
			<%
		    	if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
			%>
				Vous n'êtes pas connecté<br/>
				<a href="index">Connectez vous!</a>
			<%
				} else {
			%>
				<!-- NAVIGATION -->
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Bonjour <%=session.getAttribute("userid")%>
					<span class="caret"></span></button>
						<ul class="dropdown-menu">	
							<li><a href='logout'>Déconnexion</a></li>
							<li><a href="success">Liste des jeux</a></li>
						</ul>
				</div>
				<!-- /NAVIGATION -->
			<%
			  	}
			%>	
		</p>	
    </div>
	<!-- /Header -->
    <body>
        <form class="form-login" method="get" action="update">
         <!-- BOOTSTRAP -->
	            <h4>Modification Profil</h4>
	            <input type="text" id="uname" name="uname" class="form-control input-sm chat-input" value="<%=session.getAttribute("userid")%>" placeholder="Pseudo"/>
	            </br>
	            <input type="password" id="pass" name="pass" class="form-control input-sm chat-input" value="<%=session.getAttribute("pwd")%>" placeholder="Mot de passe" />
	            <div class="wrapper">
		            <span class="group-btn">  
		            	</br>   
		                <input id="submit" type="submit" class="btn btn-primary btn-md" value="Valider"/>
		                <input type="reset" class="btn btn-primary btn-md" value="Annuler" />
		            </span>
	            </div>
	            <!-- BOOTSTRAP -->
        
        
            <!--<center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Modification Profil</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Pseudo</td>
                        <td><input type="text" name="uname" value="<%=session.getAttribute("userid")%>" /></td>
                    </tr>
                    <tr>
                        <td>Mot de Passe</td>
                        <td><input type="password" name="pass" value="<%=session.getAttribute("pwd")%>" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>-->
        </form>
        <!-- Footer -->
        <div class="footer">
        <p style="text-align:center;" class="text-muted">I-GAME© by T2ISOFT : <a href="http://www.t2isoft.com">www.t2isoft.com</a></p>
      </div>  
<!-- /Footer -->
    </body>
</html>