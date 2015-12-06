<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscrition</title>
            <script type="text/javascript">
		    var a = Math.ceil(Math.random() * 10);
		    var b = Math.ceil(Math.random() * 10);       
		    var c = a + b
		    function DrawBotBoot()
		    {
		        document.write("Quel est le resultat de "+ a + " + " + b +" ? ");
		        // document.write("<input id='BotBootInput' type='text' maxlength='2' size='2'/>");
		    }    
		    function ValidBotBoot(){
		        var d = document.getElementById('BotBootInput').value;
		        if (d == c) {document.getElementById('Validation').disabled = false }
		        else document.getElementById('Validation').disabled = true;       		        
		    }
		    </script>
    </head>
    <body>
        <form method="get" action="registration">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">S'inscrire</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Prénom</td>
                        <td><input type="text" name="fname" value="" required pattern="[^(^insta$|^test$)]"/></td>
                    </tr>
                    <tr>
                        <td>Nom</td>
                        <td><input type="text" name="lname" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Pseudo</td>
                        <td><input type="text" name="uname" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Mot de passe</td>
                        <td><input type="password" name="pass" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Combien font <script type="text/javascript">DrawBotBoot()</script> ?</td>
                        <td><input id='BotBootInput' type='text' maxlength='2' size='2' onChange="ValidBotBoot();" /></td>
                        <!--  <td><script type="text/javascript">DrawBotBoot()</script>  -->
                    </tr>
                    <tr>
                        <td><input id="Validation" type="submit" value="Valider" disabled="disabled"/></td>
                        <td><input type="reset" value="Annuler" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Pas encore inscrit <a href="index">S'inscrire</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>