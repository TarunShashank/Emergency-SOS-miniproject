<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <meta charset="UTF-8">
  <title>Scrape-Emergencies Companion</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
   
     <link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">  
  
      <link rel="stylesheet" href="css/style.css"
<body>
    
  <div class="user">
    <header class="user__header">
        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3219/logo.svg" alt="" />
        <h1 class="user__title" style="font-size:20px">Welcome to Scrape your Emergency SOS companion</h1>
    </header>
      <br>
      <header class="user__header">
          <h1 class="user__title">Login here</h1>
      </header>
            
      <form class="form" action="login.jsp" method="post">
        <div class="form__group">
            <input type="text" placeholder="Username" class="form__input" name="uname"  />
        </div>
        
        <div class="form__group">
            <input type="password" placeholder="Password" class="form__input" name="pass" />
        </div>
        
        <button class="btn" type="submit">Login</button>
    </form>
</div>
    <div class="user">
        
           <header class="user__header">        
                <h1 class="user__title">new user? Don't worry join us here</h1>
           </header>
        <form class="form" action="reg.jsp" >    
               <button class="btn" type="submit">Register</button>
        </form>
    </div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>
