<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accueil</title>
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
    @import url(http://fonts.googleapis.com/css?family=Roboto:400);
body {
  background-color:#fff;
  -webkit-font-smoothing: antialiased;
  font: normal 14px Roboto,arial,sans-serif;
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
    box-shadow:0 1px 0 #cfcfcf;
    width:200%;
    opacity:0.9;
    box-shadow: 2px 2px 15px black;
    box-shadow: -1px 2px 10px 3px rgba(0, 0, 0, 0.3) inset;

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
body {
	background-image:url("http://www.wallpapers-hd.ovh/wp-content/uploads/2015/01/console-games-0367.jpg");
}
.header {
	background-color: black;
	height: 60px;
}

.footer {
	bottom:0;
	left:0;
	height:40px;
	width:100%;
	background: black;
	position:fixed;
}
.logo_igame{
	/*background-image:url("C:\Users\ilias\Downloads\logo_igame_sansfond.png");*/
	background-repeat:none;
	width: 20%;
    height: 20%;
    position: absolute;
}
.col-lg-5{
	color: white;
	background-color: black;
	border-radius: 15px;
	opacity:0.5;
}
.IgameLogo{
	width: 200px;
	height: 200px;
	margin-top:10px;
	margin-bottom:20px;
}
    </style>
    <body>
    <div class="header"><span class="logo_igame"></span>
    </div>
       <!--<form method="GET" action="login">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">S'identifier</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Pseudo</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Mot de passe</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Pas encore inscrit <a href="reg">S'inscrire</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>-->
    
    <!-- BOOTSTRAP -->
    
    <div class="container">
	    <div class="row">
	    	<div class="col-lg-5">
	    	<h1>Bienvenue sur l'interface de jeux-videos I-GAME</h1>
	    	<img class="IgameLogo" src="http://img11.hostingpics.net/pics/731672logoigamefondnoir.png" alt="">
	    	<p>C'est ici que tu peux jouer avec ou contre tes camarades de l'insta à une multitude de jeux plus amusants les uns que les autres! Alors n'hésite pas , inscrit toi gratuitement!</p>
	    	</div>
	    	<div class="col-lg-7">
	        <div class="col-md-offset-5 col-md-3">
	            <form  method="GET" action="login" class="form-login">
	            <h4>S'indentifier</h4>
	            <input type="text" id="userName" name="uname" class="form-control input-sm chat-input" placeholder="Pseudo" required />
	            </br>
	            <input type="password" id="userPassword" name="pass" class="form-control input-sm chat-input" placeholder="Mot de passe" required />
	            </br>
	            <label>Pas encore inscrit ? <a href="reg">S'inscrire</a></label>
	            </br>
	            
	            <div class="wrapper">
	            <span class="group-btn">     
	                <input type="submit" class="btn btn-primary btn-md" value="Login"/>
	                <input type="reset" class="btn btn-primary btn-md" value="Annuler" />
	            </span>
	            </div>
	            </form>
	        </div>
	    	</div>
	    </div>
	</div>
    
    
    <!-- BOOTSTRAP -->
     <!-- Footer -->
        <div class="footer">
        <p style="text-align:center;" class="text-muted">I-GAME© by T2ISOFT : <a href="http://www.t2isoft.com">www.t2isoft.com</a></p>
      </div>  
<!-- /Footer -->
    </body>
</html>