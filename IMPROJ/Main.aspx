<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="IMPROJ.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Sports Registration</title>
    <link href="Stylesheet/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
     <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <style type="text/css">
        .auto-style2 {
            color:#edf2f4;
        }
    </style>
    </head>

<body>
  
 

    <header>
      <div class="logo">
         ⌨
      </div>
      <nav>
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#about"><strong>About</strong></a></li>
          <li><a href="RegisterT.aspx">Register Team</a></li>
          <li><a href="Join.aspx">Join Tournament</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
    </header>

    <main>
   

      <section class="hero"> 
          
       <div class="text animate__animated animate__fadeInUp"> <h1>Bring Your <span style="color:#ffea00;">Team to The Top⇪</span> </h1>
        <p>
         Welcome to <span style="color:#ffea00; font-weight:bold;">E-Sports Tournament Registration</span>. Register your team now! 
        </p></div>
  <button><a href="RegisterT.aspx" class="auto-style2"><span>Register</span></a></button> 

     </section>
      <section id="about"  class="features">
        <h2>About us</h2>

          
        <p><img src="img/aboutimg.jpg"  style="width:80vh;height:70vh;margin-left:15px;">

               Esports Tournament Registration websites are online platforms that allow players or teams to register and participate in 
              competitive gaming events. These websites often have a user-friendly interface where players can create accounts, browse available 
              tournaments, and sign up for the ones they are interested in. Esports tournament registration websites typically provide details about 
            the tournaments such as game titles, dates, and prize pools. Players can also find information about tournament rules, match formats, 
            and scheduling. Some websites may charge an entry fee, while others offer free registration.
            In addition to tournament registration, some esports websites may offer other features such as player statistics, community forums, 
            and live streaming of matches. These platforms have become increasingly popular in recent years as esports continue to grow 
            in popularity and recognition as a legitimate competitive sport.



        </p>
         
        
      </section>
      <section id="contact" class="testimonials">
       <footer class="footer">
  <div class="footer-content">
    <div class="footer-section about">
      <h3>About Us</h3>
      <p>Tournament registration refers to the process of signing up or enrolling for a tournament. 
          It typically involves providing personal information and paying a fee to participate in the tournament. 
          Tournament registration can be done online or in-person, depending on the type of tournament and the organizer's preferences. 
          During the registration process, participants may also be required to agree to certain rules and regulations governing the tournament, 
          such as eligibility criteria, tournament format, and prize distribution.</p>
    </div>
    <div class="footer-section contact">
      <h3>Contact Us</h3>
      <ul>
        <li><i class="fa fa-map-marker"></i> QC, Philippines</li>
        <li><i class="fa fa-phone"></i> (555) 555-1234</li>
        <li><i class="fa fa-envelope"></i> esportsgg@yahoo.com</li>
      </ul>
    </div>
    <div class="footer-section social">
      <h3>Follow Us</h3>
      <ul>
        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
      </ul>
    </div>
  </div>
  <div class="footer-bottom">
    <p>&copy; 2023. All Rights Reserved</p>
  </div>
</footer>
      </section>


    </main>

</body>

   
</html>
