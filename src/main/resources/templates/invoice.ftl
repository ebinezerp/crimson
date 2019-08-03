<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

  
    <div  style="background-color:#2E2EFE;height:100px">
    <p style=" color:white;
	  font-family:verdana;
	  margin-top:2%;
	  text-align:center;padding-top:30px;font-family: 'Karla'";>Invoice #${orderId}</p>
    </div><br><br>

	<p style="margin-left:23%;
	  font-family:verdana;
	  font-size:13px;
	  color:#000000;font-family: 'Karla'";>Dear ${user.username}</p>
	<p style="margin-left:23%;
	  font-family:verdana;
	  font-size:13px;
	  color:#000000;font-family: 'Karla'">Thank you for your business. Your invoice can be viewed,printed and downloaded as PDF from<br>
	   <span>the link below. You can also choose to pay at online.<span></p>
 <br>
  
    <div style="height:560px;
	  border:1px solid #BDBDBD;
	  margin-left:23%;
	   margin-right:20%"> 
	   <h6 style="text-align:center; margin-top:6%;font-size:18px;font-family: 'Karla';"><b>INVOICE AMOUNT</b></h6>
	   <h5 style="text-align:center;color:red;font-size:18px;font-family: 'Karla'";>Rs. ${totalAmount}</h5><br><hr>
	   
        <table class="table" style="border: none;font-family: 'Karla';margin-left:8%;padding-left:160px;"> 
             <thead>

               <tr>

	  
	   <td style="font-family: 'Karla';padding:5px 120px 40px 5px;"> 
                      
		<p style="padding-bottom:7px";> Invoice No<br></p>
		 <p style="padding-bottom:7px";> Invoice Date<br></p>
		 <p style="padding-bottom:7px";> Due Date<br></p>
		  </td>
	
	  
	 <td style="font-family: 'Karla';padding:5px 120px 40px 5px;"> 
                      
		 <p style="padding-bottom:7px";> <b>${orderId}</b><br></p>
		  <p style="padding-bottom:7px";><b>${orderedDate?date}</b><br></p>
		 <p style="padding-bottom:7px";> <b>${deliveryDate?date}</b> <br></p>
		</td>
		  </tr>
             </thead> 
         </table> 
    
	  
	  
	
	<br>
	<button type="button" class="btn btn-success" style="margin-left:33%;
	 border-style:none;
	 width:33%;
	 padding:10px";><span style="font-size:13px;font-family:verdana;"><a href="http://crimsontrading.in/order/${orderId}">VIEW INVOICE</a></span></button><br><br><hr>
	<p>Regards<br>
  Project Manager <br>
	 Crimson Trading </p>
	</div>
  </div>
  <br>
</body>
</html>