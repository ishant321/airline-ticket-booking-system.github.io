<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>first page</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cedarville+Cursive&family=KoHo:wght@200&display=swap" rel="stylesheet">
    <script src="javascript/index.js"></script>
    <script src="javascript/order.js"></script>

</head>
<body >
   <section class="body">
    <nav class="navbar h-nav">
    
                <div id="searchbar">
                     <img src="image/flag.png" alt="">
                </div>

                <ul class="nav v-class">
                     <li class="item"><a href="index.html">HOME</a></li>
                     <li class="item"><a href="service.html">SERVICES</a></li>
                     <li class="item"><a href="about.html">ABOUT&nbspUS</a></li>
                     <li class="item"><a href="contact.html">CONTACT&nbspUS</a></li>
                </ul> 

                <div class="burger">
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                </div>
    </nav>
    

         <%
  String fc=(String)session.getAttribute("flight_company");
   String fid=(String)session.getAttribute("flight_id");
  String se=(String)session.getAttribute("seats");
  String dc=(String)session.getAttribute("departure_city");
  String ac=(String)session.getAttribute("arrival_city");
  String dt=(String)session.getAttribute("departure_time");
  String at=(String)session.getAttribute("arrival_time");
  int fr=Integer.parseInt((String)session.getAttribute("fare"));
  int nop=Integer.parseInt((String)session.getAttribute("nop"));
   
  
%> 
<form action="payment.jsp" onsubmit="return check()" method="post">
<div class="order">
<div class="order-content">
      <h1>Ticket Form</h1>
      
      <div class="first-line">
      <input id="order-name" type="text" class="order-fields" name="ticketname" placeholder="enter your name">
      <input id="number" type="text" class="order-fields" name="ticketmobnumber" placeholder="enter your Mob. Number" max="10" min="10">
      <input type="text" class="order-fields" readonly placeholder="<%= fc%>">
      <input type="text" class="order-fields" readonly placeholder="<%= fid%>">
      <input type="text" class="order-fields" readonly placeholder="<%= nop%> passengers">
      </div>

      <div class="second-line">
      <input type="text" readonly class="order-fields" placeholder="<%= dc%>">TO
      <input type="text"class="order-fields" readonly  placeholder="<%= ac%>">
      <input type="text" class="order-fields" readonly placeholder="<%= dt%>">
      <input type="text" class="order-fields" readonly placeholder="<%= at%>">
      <input type="text" class="order-fields" readonly placeholder="<%= fr*nop%>/-Rs.">
      </div>
      <a ><input type="submit" class="order-submit" value="make your payment"></a>
      
</div>
<div id="order-error"></div>
</div>
</form>

 </section>


<!-- -----------------footer-------------- -->

<div class="footer">

            <div class="footer-content">
            <h2>Get Help</h2>
                <ul>
                <a href="service.html"><li>Services</li></a>
                <a href="about.html"><li>About Us</li></a>
                <a href="contact.html"><li>Contact Us</li></a>
                </ul>
            </div>
            <div class="footer-content">
            <h2>Social Media</h2>
               <ul>
               <a href="contact.html"><li>Instagram</li></a>
               <a href="contact.html"><li>Facebook</li></a>
               <a href="contact.html"><li>YouTube</li></a>
               <a href="contact.html"><li>Twitter</li></a>
               </ul>
             </div>  
     

           <div class="footer-content">
        <h2>Payment Methods</h2>
            <p>
                 Your data security and privacy is our responsibility
            </p>

            <div id="paymenticons">
                   <img id="paymenttypes" src="image/phonepay.png" alt="image not available">
                   <img id="paymenttypes" src="image/gpay.png" alt="image not available">
                   <img id="paymenttypes" src="image/credit.png" alt="image not available">
                   <img id="paymenttypes" class="paytmspecial" src="image/paytm.png" alt="image not available">
            </div>
    </div>

</div>


<script src="javascript/indexresponsive.js"></script>
</body>
</html>















