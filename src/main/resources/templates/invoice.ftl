<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home | Crimson</title>
    <link rel="icon" href="img/index/favicon.png" sizes="16x16">
    <!--css-->
    <style>
	@charset "utf-8";
/* CSS Document */

body{
	font-family: 'Karla';
	font-size:18px;
	color:#333;
	overflow-x:hidden;
	font-weight:400;
}



.padd-30{
	padding:30px 0;
}
.padd-60{
	padding:60px 0;
}
.padd-80{
	padding:40px 0;
}
.padd-40{
	padding:40px 0;
}
.pt-30{
	padding-top:30px;
}
.pb-60{
	padding-bottom:60px;
}
.pt-60{
	padding-top:60px;
}
.padd-100{
	padding:100px 0;
}
.mt-30{
	margin-top:30px;
}
.mt-10{
	margin-top:10px;	
}

#shop{padding-left:75px;}
p{
	color:#333;
}

a:focus,
button:focus,
input:focus,
textarea:focus,
select:focus{
	outline:none;
}

/*back-to-top*/
#return-to-top {
    position: fixed;
    bottom: 20px;
    right: 20px;;
    background: #ff3c20;
    width: 50px;
    height: 50px;
    display: block;
    text-decoration: none;
    -webkit-border-radius: 35px;
    -moz-border-radius: 35px;
    border-radius: 35px;
    display: none;
    -webkit-transition: all 0.3s linear;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
	z-index:100;
}
#return-to-top i {
    color: #fff;
    margin: 0;
    position: relative;
    left: 16px;
    top: 8px;
    font-size: 30px;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
#return-to-top:hover i {
    color: #fff;
    top: 5px;
}


/*================Landing-page==================*/
.landing-page .work-btn.white{
	margin:0;
	border-color:#fff;
	color:#fff;
}
/*nav-bar*/
.main-nav{
	position:absolute;
	width:100%;
	z-index:99;
	padding:20px 0;
}
.main-nav .nav-left{
	display:inline-block;
}
.main-nav .nav-left img{
	width:110px;
}
@media (min-width:320px) and (max-width:767px){
.main-nav {
    position: relative;
    padding: 15px 0;
    background-color: #252525;
}
.main-nav .nav-left img{
	width:85px;
}
.main-nav .work-btn{
	padding:8px 30px;
}
#shop{padding-left:155px;}
.welcome{float:right;
margin-right:55px;}
}
@media (min-width:768px) and (max-width:991px){
.main-nav {
    position: relative;
    padding: 15px 0;
    background-color: #252525;
}
.main-nav .nav-left img{
	width:85px;
}
.main-nav .work-btn{
	padding:8px 30px;
}
}

/*main-header*/
.main-wrapper{
	position:relative;
}

/*layout-sec*/
.sec-head{
	font-size:50px;
	margin-top:0;
}
.sec-head span{
	font-weight:600;
	color:#ff3c20
}
.layout-body{
	position:relative;
	overflow:hidden;
}
.layout-img img{
	width:100%;
	transition:all .5s;
}
.layout-hover{
	position:absolute;
	width:100%;
	height:100%;
	top:0;
	z-index:2;
	background-color:rgba(0,0,0,.7);
	opacity:0;
	transition:all .3s;
	visibility:hidden;
	cursor:pointer;
}
.layout-hover .arrow-body{
	position:absolute;
	width:50px;
	height:50px;
	border-radius:50%;
	border:2px solid #fff;
	text-align:center;
	color:#fff;
	left:50%;
	transform:translateX(-50%);
	top:-80px;
	transition:all .5s;
}
.layout-hover .arrow-body i{
	line-height:46px;
	font-size:26px;
}
.arrow-body:hover{
	color:#ff3c20
}
.layout-body:hover .layout-img img{
	transform:scale(1.1);
}
.layout-body:hover .layout-hover{
	opacity:1;
	visibility:visible;
}
.layout-body:hover .arrow-body{
	top:50%;
	transform:translate(-50%,-50%);
}
.layout-col h3 a{
	color:#252525;
}
.welcome{float:right;
margin-right:55px;}
.layout-col h3{
	color:#252525;
	font-weight:700;
	margin-top:15px;
	display:block;
	overflow:hidden;
	white-space:nowrap;
	text-overflow:ellipsis;
}
@media (min-width:320px) and (max-width:480px){
.sec-head {
    font-size: 24px;
}
.layout-col h3{
	font-size:18px;
}
.welcome{float:left!important;}

#shop{padding-left:93px;}
}

/*bg-grey*/
.bg-grey{
	background-color:#f6f6f6
}

/*call-action*/
.call-action{
	background-image:url(../img/inner-page/head-bg1.html);
	background-size:cover;
	background-attachment:fixed;
	position:relative;
	color:#fff;
}
.black-overlay{
	background-color:rgba(0,0,0,.7);
}
.call-action h2{
	display:inline-block;
	float:left;
	margin:0;
}
.call-action .work-btn{
	float:right;
}
@media (min-width:320px) and (max-width:480px){
.call-action{
	text-align:center;
}
.call-action h2{
	float:none;
	display:block;
	margin-bottom:20px;
}
.call-action .work-btn{
	float:none;
}
}

/*feature-sec*/
.feature-body{
	position:relative;
	padding-left:50px;
}
.feature-body i{
	position:absolute;
	left:0;
	top:0;
	color:#ee3333;
	font-size:40px;
}
.feature-body h3{
	font-size:20px;
	font-weight:900;
	margin-top:0;
}
.feature-body p{
	line-height:1.6;
	color:#666;
}
.landing-page .feature-sec .col-md-4{
	min-height:130px;
}

/*footer*/
.footer{
	background-color:#252525;
	color:#fff;
}
.footer .soc-ul{
	margin:30px 0 0;
}
.soc-ul{
	list-style:none;
	padding:0;
}
.soc-ul li{
	display:inline-block;
	margin:0 8px;
}
.soc-ul li a{
	display:block;
	width:40px;
	height:40px;
	background-color:#fff;
	color:#252525;
	font-size:26px;
	text-align:center;
	border-radius:50%;
}
.soc-ul li a i{
	line-height:40px;
}

/*Nav-bar*/
.nav > li > a{
	display:block;
}
.logo-name img{
	padding-top:3px;
}
.logo-name.col-md-3{
	padding:0;
}
.search{
	margin-top:26px;
}
.search input{
	position:relative;
	width:100%;
	border:1px solid #000;
	border-radius:30px;
	padding:15px 20px;
	font-weight:normal;
	font-size:15px;
	color:#5d5d5d;
}
.search input::placeholder{
	color:#bababa;
}
.search select{
		position:absolute;
		right:70px;
		top:50%;
		transform:translateY(-50%);
		border:none;
		font-size:15px;
		font-weight:400;
		cursor:pointer;
}
.search-round{
	position:absolute;
}
.search-round a{
	color:#fff;
	text-align:center;
	display:block;
	line-height:40px;
}
.icon-round {
	display:inline-block;
	margin-top:35px;
}
.icon-round a:first-child i{
	padding-left:0;
}
.cart{	
	display:inline-block;
	position:relative;
}
.cart span{
	width:17px;
	height:17px;
	border-radius:50%;
	display:inline-block;
	background-color:#ff3c20;
	position:absolute;
	top:-5px;
	right:0;
	font-size:12px;
	color:#fff;
	text-align:center;
	line-height:17px;
	font-weight:normal;
}
.cart i{
	padding-left:20px !important; 
}
.shopping-cart p{
	display:inline-block;
	font-size:12px;
	color:#5d5d5d;
	font-weight:800;
	padding-left:10px;
}
.shopping-cart p span{
	color:#ff3c20;
	padding-left:4px;
	padding-right:5px;
	font-weight:700;
	font-size:16px;
}
.icon-round i{
	color:#313131;
	padding-left:15px;
	font-size:24px;
	font-weight:normal;
	transition:all 0.4s;
}
.icon-round i:hover{
	color:#ff3c20;
}
.top-bar-list p{
	transition:all 0.4s;
}
.top-bar-list p:hover{
	color:#ef402b;	
}
.icon-round i:nth-child(5){
	color:#613960;
}
.icon-round a:last-child{
	position:relative;
	display:block;
	float:right;
}
.logo-bar{
	position:relative;
}
.header-sec{
	padding:10px 0;
}
.header p{
	display:inline-block;
	padding-left:5px;
	font-weight:normal;
	margin-bottom:0;
	font-size:15px;
	position:relative;
	color:#333;
	/* vertical-align:top; */
}
.header i{
	color:#ef402b;
	font-size:18px;
	font-weight:400;
    padding-left:15px; 
}
.phone i{
	/* padding-left:0;  */
	
}
.header-right .top-bar-list:nth-child(2) i{
	font-size:20px !important;
}
.border{
	border-bottom:1px solid #dedede;
}
.top-bar-list{
	float:left;
	border-right:1px solid #e2e2e2;
	  padding-right:15px; 
	  padding-left:10px; 
}
.header-left .top-bar-list:last-child,.header-right .top-bar-list:last-child{
	border:none;
	padding-right:0;
	/* padding-left:10px; */
}
.header-right{
	float:right;
}

.welcome{float:right;
margin-right:5px;}


.header-right p a{
	color:#5d5d5d;
	text-decoration:none;
}
/*------------cart--Hover--------*/
.cart-item{
		position:relative;
		float:right;
		padding-left:18px;
		 margin-top:-20px; 
}
.cart-item i{
		font-size:24px;
}
.cart-mail{
	display:inline-block;
	position:relative;
	padding-top:30px; 
	padding-right:11px;
}
.cart-item .cart-mail span{
		width:17px;
		height:17px;
		background-color:#000;
		color:#fff;
		font-size:12px;
		border-radius:50%;
		display:inline-block;
		text-align:center;
		line-height:20px;
		position:absolute;
		left:6px;
		bottom:15px;
}
.cart-item .cart-item-hover:before{
		position:relative;
}
.cart-item .cart-item-hover:after{
	border-bottom-color:#ff3c20;
}
.cart-item .cart-item-hover:after{
		position:absolute;
		top: -26px;
		border: solid transparent;
		content: " ";
		height: 0;
		width: 0;
		border-bottom-color:#313131;
		border-width: 13px;
		right: 50%;
}
.cart-item:hover > .cart-item-hover{
		opacity:1;
		visibility:visible;
}
.cart-item .cart-item-hover{
		position:absolute;
		top:40px;
		background-color:#fff;
		padding:25px;
		opacity:0;
		visibility:hidden;
		transition: all 0.2s ease-in-out 0s;
		z-index:99;
		right:-50%;
		width:300px;
		box-shadow:2px 2px 5px 2px rgba(0,0,0,0.5);
}
.cart-item .cart-item-hover .cart-item-list {
		position:relative;
		margin-bottom:20px;
		padding-right:15px;
		min-height:73px;
		text-align:left;
}
.cart-item .cart-item-hover .cart-item-list b{
		position:absolute;
		right:0;
		top:0;
		font-size:16px;
}
.cart-item .cart-item-hover .cart-item-list b a{
		color:#212121;
}
.cart-item .cart-item-hover .cart-item-list img{
		float:left;
		margin-right:10px;
}
.cart-item .cart-item-hover .cart-item-list h3{
		color:#212121;
		font-size:14px;
		margin-top:0;
		line-height:22px;
		margin-bottom:7px;
		transition:all 0.4s;
}
.cart-item .cart-item-hover .cart-item-list h3:hover{
	color:#ff3c20;	
}
.cart-item .cart-item-hover .cart-item-list p{
		color:#212121;
		font-weight:800;
		font-size:14px;
		padding-left:0;
}
.cart-item .cart-item-hover .cart-item-list p del{
		color:#757575;
		font-weight:normal;
}
.cart-item .cart-item-hover .border{
		width:100%;
		height:1px;
		background-color:#dedede;
		margin-bottom:15px;
		margin-top:25px;
}
.cart-item .cart-item-hover .cart-total h6,.cart-item .cart-item-hover .cart-total p{
		color:#212121;
		font-weight:800;
		font-size:14px;
}
.cart-item .cart-item-hover .cart-total p {
    float: right;
    font-size: 18px;
    color: #ff4001;
}
.cart-item .cart-item-hover .cart-total h6 {
    float: left;
    margin-top: 5px;
    margin-bottom: 0;
}
.cart-item .cart-item-hover .cart-total p{
		float:right;
}
.cart-item .cart-item-hover .cart-total a{
		color:#fff;
		font-size:15px;
		font-weight:bold;
		text-align:center;
		padding:0 18px;
		height:46px;
		line-height:42px;
		transition:all 0.3s;
		display:inline-block;
		text-transform:uppercase;
		margin-top:26px;
}
.cart-item .cart-item-hover .cart-total a.cart-view{
		background-color:#212121;
		border:2px solid #212121;
		float:left;
}
.cart-item .cart-item-hover .cart-total a.cart-view:hover{
		background-color:transparent;
		color:#212121;
}
.cart-item .cart-item-hover .cart-total a.cart-checkout{
		background-color:#ff3c20;
		border:2px solid #ff3c20;
		float:right;
}
.cart-item .cart-item-hover .cart-total a.cart-checkout:hover{
		background-color:transparent;
		color:#ff3c20;
}
.shopping-cart.col-md-3{
	padding:0;
	text-align:right;
}
.header.col-md-7,.header.col-md-5{
	padding:0;
}
/*modal-css*/
.border .modal-img{
	position:absolute;
	transform:translateY(-50%);
	left:4px;
	top:50%;
}
.modal-text.col-md-7{
	padding-left:0;
	padding-right:0;
}
.border .modal-img.col-sm-5{
	padding-left:0;
	padding-right:0;
}
.border .modal-img h2{
	position:absolute;
	top:30px;
	font-size:40px;
	color:#fff;
	font-weight:600;
	left:35px;
}
.border .modal-img p{
	position:absolute;
	font-size:16px;
	color:#f1f1f1;
	font-weight:normal;
	top:102px;
	left:35px;
	line-height:1.5;
}
.modal-img-text img{
	position:absolute;
	left:50%;
	bottom:15px;
	width:40%;
	transform:translateX(-50%);
}
.register .modal-img-text img{
	top:420px;
	transform:translateX(-40%);
}
.border .modal-dialog{
	top:50%;
	transform:translateY(-50%) !important;
	margin:0 auto;
}
.register .modal-img h2{
	top:40px;
}
.register .modal-img p{
	top:115px;
}
.border .modal-text{
	margin-left:41.66666667%;
	background-color:#fff;
	padding:18px;
	position:relative;
}
.border .modal-content{
	background-color:transparent;
	box-shadow:none;
	border:none;
}
.border .modal-body button{
	position:absolute;
	right:27px;
	z-index:1;
	top:20px;
	font-size:30px;
}
.border .swiss-right p{
	font-size:13px;
	color:#424242;
	font-weight:normal;
	text-align:center;
	margin-top:20px;
}
.border .swiss-right p a{
	color:#424242 !important;
}
.border .social-button .facebook{
	background-color:#3b5998;
	border-radius:30px;
	display:inline-block;
	padding:10px 19px;
	transition:all 0.3s;
	border:1px solid #3b5998;
	position:relative;
}
.border .social-button .facebook:hover a i {
	color:#3b5998 !important;
}
.border .social-button .facebook:hover a  {
	color:#3b5998 !important;
}
.border .social-button .facebook:hover{
	border-color:#3b5998 !important;
	background-color:transparent;
}
.border .social-button .facebook a{
		position:relative;
		display:block;
		padding-left:30px;
}
.border .social-button .facebook a i{
	font-size:20px;
	color:#fff;
	padding-right:15px;
	transition:all 0.4s;
	position:absolute;
	left:0px;
	top:50%;
	transform:translateY(-50%);
}
.border .social-button .facebook a{
	font-size:15px;
	color:#fff;
	font-weight:normal;	
}
.border .social-button .google{
	background-color:#ea4335;
	margin-left:10px;
	border:1px solid #ea4335;
}
.border .social-button .google:hover a i {
	color:#ea4335 !important;
}
.border .social-button .google:hover a  {
	color:#ea4335 !important;
}
.border .social-button .google:hover{
	border-color:#ea4335 !important;
	background-color:transparent;
}

.border .social-button .twitter{
	background-color:#239ddc;
	display:block;
	margin-top:15px;
	border:1px solid #239ddc;
}
.special-offer ul.nav-tabs li.active a{
	position:relative;
}
.border .social-button .twitter:hover a i {
	color:#239ddc !important;
}
.border .social-button .twitter:hover a  {
	color:#239ddc !important;
}
.border .social-button .twitter:hover{
	border-color:#239ddc !important;
}
/*.border .social-button .twitter a {
	display:block;
}*/
.border .input-row h5{
	font-size:14px;
	font-weight:bold;
	color:#c1c1c1;
	text-transform:uppercase;
	margin-bottom:10px;
}
.border .navbar-brand{
	float:none;
}
.border .input-row input{
	border:none;
	border-bottom:2px solid #f1f1f1;
	width:100%;
	font-size:15px;
	font-weight:normal;
	color:#313131;
	margin-bottom:10px;
	padding-bottom:12px;
}
.border .privacy-sec{
	margin-bottom:10px;
	margin-top:5px;
}
.border .privacy-sec label{
	font-size:13px;
	color:#424242;
	font-weight:300;
	margin-left:10px;
}
.border .privacy-sec input[type="checkbox"]{
	color:#5bc200;
}
.border .button{
	display:inline-block;
}
.border .button a:hover{
	border:1px solid #ef402b;
	background-color:transparent;
	color:#ef402b;
}
.border .button a{
	padding:15px 35px;
	display:inline-block;
	background-color:#ef402b;
	font-size:18px;
	font-weight:600;
	color:#fff;
	transition:all 0.4s;
	border-radius:30px;
	border:1px solid #ef402b;
}
.border .modal-acc{
	display:inline-block;
	padding-left:10px;
}
.border .modal-acc p{
	font-size:16px;
	font-weight:normal;
	color:#424242;
}
.border .modal-text p a{
	color:#ef402b;
}
.or span{
	font-size:15px;
	color:#424242;
}
.or{
	position:relative;
	text-align:center;
	margin-top:20px;
	margin-bottom:15px;
}
.or span:after{
	content:"";
	position:absolute;
	width:200px;
	height:2px;
	background-color:#f1f1f1;
	display:block;
	left:0;
	top:11px;
}
.or span:before{
	content:"";
	position:absolute;
	width:200px;
	height:2px;
	background-color:#f1f1f1;
	display:block;
	right:0;
	top:11px;
}
.input-row{
	position:relative;
}
.input:focus {
  outline: none;
}
.input-1:focus + .underline {
  transform: scale(1);
}
.underline {
  background-color: #ff3c20;
  display: inline-block;
  height: 2px;
  left: 0px;
  margin-top: -4px;
  position: absolute;
  bottom:10px;
  -webkit-transform: scale(0, 1);
  transform: scale(0, 1);
  -webkit-transition: all 0.2s linear;
  transition: all 0.2s linear;
  width: 450px;
}
[type="checkbox"]:not(:checked),
[type="checkbox"]:checked {
  position: absolute;
  left: -9999px;
}
[type="checkbox"]:not(:checked) + label,
[type="checkbox"]:checked + label {
  position: relative;
  padding-left: 1.95em;
  cursor: pointer;
}

/* checkbox aspect */
[type="checkbox"]:not(:checked) + label:before,
[type="checkbox"]:checked + label:before {
  content: '';
  position: absolute;
  left: -4px;
  top: -4px;
  width: 1.6em;
  height: 1.6em;
  border: 2px solid #ccc;
  background: #fff;
  border-radius: 4px;
  box-shadow: inset 0 1px 3px rgba(0,0,0,.1);
}
/* checked mark aspect */
[type="checkbox"]:not(:checked) + label:after,
[type="checkbox"]:checked + label:after {
  content: '✔';
  position: absolute;
  top: 1px; 
  left: 0px;
  font-size: 1.3em;
  line-height: 0.8;
  color: #7ed321;
  transition: all .2s;
}
/* checked mark aspect changes */
[type="checkbox"]:not(:checked) + label:after {
  opacity: 0;
  transform: scale(0);
}
[type="checkbox"]:checked + label:after {
  opacity: 1;
  transform: scale(1);
}
/* disabled checkbox */
[type="checkbox"]:disabled:not(:checked) + label:before,
[type="checkbox"]:disabled:checked + label:before {
  box-shadow: none;
  border-color: #bbb;
  background-color: #ddd;
}
[type="checkbox"]:disabled:checked + label:after {
  color: #999;
}
[type="checkbox"]:disabled + label {
  color: #aaa;
}
@media (min-width:320px) and (max-width:767px){
	.border .modal-dialog{
		transform:translateY(0) !important;
		top:0;
	}
	.border .social-button .facebook{
		text-align:center;
	}
	.social-button{
		text-align:center;
	}
	.shopping-cart.col-md-3{
		text-align:center;
	}
.navbar-nav li.has-child a i{
	float:right;
}

/* .header-right{margin-right:79px;} */
}
@media (min-width:768px) and (max-width:991px){
.border .social-button .google{
	margin-left:0;
	margin-top:15px;
}
.border .social-button .facebook{
	display:block;
	text-align:center;	
}
.icon-round{
	margin-top:25px;
}
.search.col-md-6{
	padding:0;
}
#shop{padding-left:265px;}
}

/*menu*/
.menu .collapse.navbar-collapse{
	background-color:transparent;
	font-size:15px;
	margin-top:15px;
	
	padding-bottom:5px;
}

.menu .navbar-default{
	border:none;
	background-color:transparent;
}
.menu ul.navbar-nav.navbar-left li{
	padding-left:40px;
	font-weight:600;
}
.navbar-right li{
	background-color:#ef402b;
}
.menu ul.navbar-nav.navbar-right li a{
	color:#fff !important;
	padding:15px;
	font-weight:800;
}
.menu .col-md-9{
	padding:0;
}
.menu ul.navbar-nav.navbar-left li a{
	/*padding-bottom:0;*/
}
.menu ul.navbar-nav.navbar-left li.active > a,
.menu ul.navbar-nav.navbar-left li.active a.active{
	color:#ef402b
}
.menu .navbar-collapse{
	padding:0;
}
.navbar-default .navbar-nav > li > a{
	transition:all 0.3s;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus{
	color:#ef402b8 !important;
}
select {
  background-image: url(../img/index.html);
  background-position: right 10px center;
  background-repeat: no-repeat;
  background-size: auto 50%;
  border-radius: 2px;
  border: none;
  color: #ffffff;
  padding: 10px 30px 10px 10px;
  outline: none;
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
}
select::-ms-expand {
  display: none;
}

/*Nav-mega-menu*/
.navbar-nav > li:hover .nav-mega-menu {
    top: 100%;
    opacity: 1;
    visibility: visible;
}
.menu-border{
	border-bottom:1px solid #efeeee;
}
.navbar-nav > li .nav-mega-menu {
    box-shadow: 0 0 9.6px 0.4px rgba(0, 0, 0, 0.1);
    top: 110%;
    position: absolute;
    width: 180px;
    background: #fff none repeat scroll 0 0;
    padding: 10px 15px;
    z-index: 9999;
    transition: .4s;
    opacity: 0;
    visibility: hidden;
	left:50%;
	transform:translateX(-50%);
}
.navbar-nav > li .nav-mega-menu span a {
    font-size: 15px;
    font-weight: 400;
    display: block;
    background:transparent;
    color: #191919;
    line-height: 40px;
    height: auto;
    transition: all 0.3s;
    border-bottom: 1px solid #f1f1f1;
}
.navbar-nav > li .nav-mega-menu span a:hover{
	color:#ff3c20;
}
.navbar-nav > li .nav-mega-menu span a:last-child{
		border:none;
}
.round {
    width: 40px;
    height: 40px;
    background-color: rgb(254, 205, 8);
    display: inline-block;
    position: absolute;
    top: 50%;
    margin-top: -20px;
    right:5px;
    border-radius: 50%;
	transition:all 0.4s;
}
.round:hover{
	background-color:#000;
}
@media (min-width:320px) and (max-width:480px){
.menu .navbar-default .navbar-toggle:hover,.menu .navbar-default .navbar-toggle:focus{
	background-color:transparent;
}
.menu .collapse.navbar-collapse{
	font-size:15px;
}
.menu ul.navbar-nav{
	margin:0;
	text-align:left;
}
.menu ul.navbar-nav.navbar-left li{
	line-height:2;
}
.header-left{
	/* display:none; */
}
.header-right {
	float:left !important;
}
.top-bar-list{
	padding-right: 15px;`
	padding-left:10px;
}
.cart-mail{
	padding-top:0px !important
}
/* .header-right .top-bar-list:nth-child(2), .header-right .top-bar-list:nth-child(1) { */
    /* /* display: none; */ 
	 /* margin-right:76px; */
	/* /* padding-right:50px; */            
/* } */

/* .header-right .top-bar-list { */
    /* display: block; */
    /* /* text-align: center; */ 
    /* float: none; */
    /* padding-right: 0; */
/* } */
/* .header-right{ */
	/* /* float:none !important; */ 
	/* /* margin-right: 104px; */ 
/* } */


.logo-name img {
    display: inline-block;
    padding-top: 20px;
}
.shopping-cart {
    text-align: center;
}
.menu .navbar-header:nth-child(2){
	float:right;
}
.menu .navbar-collapse{
	margin-top:0 !important;
	font-size:16px !important;
}
.menu ul.navbar-right li a{
	text-align:center;
}
.categories ul{
	left:0;
}
#timer span{
	display:block;
}
.border .social-button .facebook a{
	font-size:13px;
	text-align:left;
	padding-left:33px;
}
.border .modal-text p{
	font-size:13px;
}
.border .input-row h5{
	font-size:13px;
}
.border .modal-text{
	display:block;
	margin-left:0;
	padding:35px 15px;
}
.underline{
	width:100%;
}
.border .modal-img{
	display:none;
}
.register .modal-img-text img{
	top:310px;
}
.border .input-row input{
	font-size:12px;
}
.border .social-button .facebook{
	margin-top:15px;
	display:block;
}
.border .social-button .google{
	margin-left:0;
}
.or span:after,.or span:before{
	width:90px;
}
.border .modal-acc{
	display:block;
	margin-top:15px;
	text-align:center;
}
.border .button{
	display:block;
	text-align:center;
}
.cart-item .cart-item-hover{
	right:-30px;
	text-align:left;
}
.search select{
	display:none;
}
.container{
	width:381px;
	
}


}
@media (min-width:481px) and (max-width:767px){
.header-left{
	/* display:none; */
}
.header-right .top-bar-list:nth-child(2),.header-right .top-bar-list:nth-child(1){
	/* display:none; */
}

.header-right{
		/* float:none !important; */
		/* padding-right:280px; */
		
}
.header i{
	 padding-left:0; 
}

/* .header-right .top-bar-list{ */
	/* display:block; */
	/* text-align:center; */
	/* float:none; */
	/* padding-right:0; */
/* } */
.or span:after ,.or span:before{
	width: 46%;
}
.logo-name img{
	display:inline-block;
	padding-top:20px;
}
.search{
	margin-top:20px;
}
.icon-round{
	margin-top:25px;
}
.underline{
	width:100%;
}
.icon-round a:first-child i{
	padding-left:0;
}
.shopping-cart{
	text-align:center;
}
.menu .navbar-default .navbar-toggle:hover,.menu .navbar-default .navbar-toggle:focus{
	background-color:transparent;
}
.menu .navbar-header:nth-child(2){
	float:right;
}
.menu .navbar-collapse{
	margin-top:0px !important; 
	font-size:16px !important;
}
.menu ul.navbar-right li a{
	text-align:center;
}
.menu ul.navbar-nav.navbar-left li {
    line-height: 2;
}
.border .social-button .facebook a{
	font-size:13px;
	padding-left:30px;
}
.border .modal-text p{
	font-size:13px;
}
.border .input-row h5{
	font-size:13px;
}
.border .modal-text{
	display:block;
	margin-left:0;
}
.border .modal-img{
	display:none;
}
.register .modal-img-text img{
	top:310px;
}
.border .input-row input{
	font-size:12px;
}
.border .social-button .facebook{
	margin-top:15px;
}
.border .social-button .google{
	margin-left:0;
}
.or span:after,.or span:before{
	width:90px;
}
.border .modal-acc{
	display:block;
	margin-top:15px;
	text-align:center;
}
.border .button{
	display:block;
	text-align:center;
}
.border .social-button .facebook{
	padding:10px 13px;
}
.cart-item .cart-item-hover{
	text-align:left;
}
.cart-mail{
	padding-top:0px !important
}
}
@media (min-width:768px) and (max-width:991px){
.menu ul.navbar-nav.navbar-right li a{
	padding:15px 10px;	
}
.menu ul.navbar-nav.navbar-left li{
	padding:0 6px;
}
.cart-item .cart-item-hover:after{
	right:32%;
}
.shopping-cart {
    position: absolute !important;
    top: 10px;
    right: 15px;
}
.header-left{
	/* display:none; */
}
.header-right{
	/* float:none !important; */
	/* display: inline-block; */
}
.header {
  text-align: center;
}
.underline{
	width:100%;
}
.border .modal-acc{
	margin-top:10px;
	text-align:center;
}
.round{
	right:5px;
}



}
@media (min-width:992px) and (max-width:1199px){
.cart-item .cart-item-hover{
	right:-10%;
}
.cart-item .cart-item-hover:after{
	right:30%;
}
.icon-round i {
    font-size: 20px;
    padding-left: 10px;
}
.shopping-cart.col-md-3{
	padding:0;
}
}
@media (min-width:320px) and (max-width:767px){
.navbar-nav > li .nav-mega-menu{
	background-color:transparent;
	position:relative;
	display:none;
	width:100%;
	top:auto;
	transform:none;
	left:0;
	opacity: 1;
    visibility: visible;
	transition: unset;
	padding: 0 0 0 15px;
	box-shadow:none;
}
.navbar-nav > li:hover .nav-mega-menu{
	position:relative;
	background-color:transparent;
	box-shadow:none;
	margin-left:10px;
	top:0 !important;
	left:0;
	transform:none;
	transition: unset;
	padding: 0 0 0 15px;
}
.navbar-nav > li .nav-mega-menu span a{
	border:none;
}
.navbar-nav > li .nav-mega-menu span a{
	border:none;
}
.main-nav ul.navbar-nav{
	width:100%;
}	
.main-nav ul.navbar-nav li a{
	width:100%;
}	
.navbar-nav > li .nav-mega-menu span a{
	color:#ababab;
}
.index-new .menu .collapse.navbar-collapse{
	margin-top:50px;
}
.navbar-right li{
	display:inline-block !important;
	margin-top:10px;
}

.about-page {
width: 599px;}
/* .header-right{padding-right:31px;} */
}
@media (min-width:1200px) and (max-width:1359px){
.cart-item .cart-item-hover{
	right:-10%;
}
.cart-item .cart-item-hover::after{
	right:48%;
}

}
@media (min-width:768px) and (max-width:1299px){
.navbar-nav > li:first-child .nav-mega-menu{
	left: 0;
    transform: none;
}
.welcome{margin-right: -13px;
    margin-top: 0px;

}
.cart-mail{
	padding-top:27px !important
}
.top-bar-list{padding-left:0px;
padding-right:0px;}



/* #number{margin-left:-187px;} */

}

/*==about-page==*/
/*top-sec*/
.sign-up{
	position:relative;
}
.passion-body{
	background-image:url(../img/about-us/background-img.jpg);
	background-size:cover;
	padding:250px 00;
}
.newsletter.passsion-info{
	background-color:#ff3c20;
	transform: skew(-25deg, 0deg);
	position:absolute;
	background-image:none !important;
	left:-150px;
	z-index:5;
	width:60%;
}
.sign-up .newsletter{
	position:absolute;
	height:100%;
	width:55%;
	left:-9%;
	top:0;
}
.newsletter-body{
	position:absolute;
	top:50%;
	transform:translateY(-50%);
	width:80%;
	margin-left:10%;
}

.passsion-info p{
	font-size:36px;
	color:#fff;
	text-transform:uppercase;
	margin-bottom:00px;
}
p.best-result{
	margin-top:0px;
}
.top-button{
	display:inline-block;
	margin-left:-26px;
}
.passsion-info h4{
	font-size:100px;
	color:#fff;
	font-weight:700;
	text-transform:uppercase;
	margin:0;	
}
.passion-to-work{
	transform:skew(25deg, 0deg) translateY(-50%) translateX(-50%);
	position:absolute;
	top:50%;
	left:62%;
	width:100%;
}
.passion-to-work a.work-btn{
	border:2px solid #fff;
	color:#fff;
	margin-top:15px !important;
}
.passion-to-work a.work-btn:hover{
	background-color:#fff;
	color:#ff3c20;
}
.work-btn.view-btn{
	background-color:#232f3e;
	border:2px solid #232f3e !important; 	
	margin-right:15px;
	margin-top:15px !important;
}
.work-btn.view-btn:hover{
	background-color:transparent !important;
	color:#fff !important;
}
@media (min-width:320px) and (max-width:480px){
.newsletter.passsion-info,
.passion-to-work{
	position:relative;
	left:0;
	transform:none;
	width:100%;
}
.passion-body{
	padding:180px 0;
	background-position:top;
}
.passsion-info p{
	font-size:24px;
}
.passsion-info h4{
	font-size:60px;	
}
a.work-btn{
	font-size:16px;
	padding:10px 18px;
}
.top-button a.work-btn{
	font-size:12px;
}
.top-button{
	margin:0;
}
.newsletter.passsion-info{
	padding:80px 0;
}

.about-page{width:411px;}

.about-page1{width:510px}
	
}
@media (min-width:481px) and (max-width:767px){
.newsletter.passsion-info,
.passion-to-work{
	position:relative;
	left:0;
	transform:none;
	width:100%;
}
.top-button a.work-btn{
	font-size:14px;
}
.top-button{
	margin:0;
}
.passsion-info p{
	font-size:28px;
}
.passsion-info h4{
	font-size:80px;	
}
.mission-sec.sign-up .newsletter.passsion-info{
	padding:80px 0;
}
.passion-body{
	padding:180px 0;
	background-position:top;
}
a.work-btn{
	font-size:18px;
	padding:10px 18px;
}
/* .header-right {margin-right:25px;} */
.cart-item{margin-top:30px;
padding-right:111px;}
.welcome{margin-right:158px;}

	
}

@media (min-width:768px) and (max-width:991px){
.newsletter.passsion-info,.passion-to-work{
	position:relative;
	transform:none;
	left:0;
	width:100%;
}
.newsletter.passsion-info{
	padding:80px 0;
}

.passsion-info p{
	font-size:29px;
}
.passsion-info h4{
	font-size:80px;
}
.passion-body{
	padding:200px 0;
}	

}
@media (min-width:992px) and (max-width:1199px){
.newsletter.passsion-info{
	width:65%;
	left:-13%;
}
.passion-body{
	padding:250px 0;
}
.passsion-info p{
	font-size:29px;
}
.passsion-info h4{
	font-size:80px;
}
.top-button a.work-btn{
    font-size: 13px;
	margin-right:5px;
}
.top-button{
	margin:0;
}
.passion-to-work{
	text-align:left;
	width:65%;
	left:71%;
}
.cart-item{margin-top:-25px;}
.welcome{margin-top:0px;}
	
}
@media (min-width:1200px) and (max-width:1359px){
.passion-to-work{
	left:66%;
}
.sign-up .newsletter{
	left: -10%;
}
.cart-item{margin-top:0px;}
.welcome{margin-top:0px;}
}

/*welcome-sec*/	
.mt-50{
	margin-top:10px;
}
.about-heading {
	text-align:center;
}
.about-heading h3{
	font-size:50px;
	position:relative;
}
.about-heading span{
	color:#ff3c20;
	font-weight:600;	
}
.about-heading h3:before{
	position:absolute;
	content:"";
	width:105px;
	height:5px;
	background-color:#ff3c20;
	display:inline-block;
	top:-30px;
	left:50%;
	transform:translateX(-50%);	
}
.about-heading h5{
	font-size:20px;
	color:#ababab;	
	margin-top:15px;
}
.about-heading p{
	font-size:16px;
	margin-bottom:0;
	max-width:88%;
	display:inline-block;
	line-height:1.4;
	margin-top:15px;
}
.welcome-content{
	transition:all 0.4s;	
}
.welcome-content:hover{
	box-shadow:3px 3px 25px rgba(0,0,0,.4)	;
}
.welcome-content i{
	font-size:42px;
	color:#ff3c20;
}
.welcome-content h3{
	font-size:30px;
	font-weight:600;
	margin-top:10px;
	position:relative;
}
.welcome-content h3:after{
	position:absolute;
	content:"";
	display:inline-block;
	width:68px;
	height:4px;
	background-color:#ff3c20;
	bottom:-40px;
	left:0;	
}
.welcome-content p{
	font-size:16px;
	color:#333;	
	margin-top:40px;
}
@media (min-width:320px) and (max-width:480px){
.about-heading h3{
	font-size:36px;	
}
.about-heading h5{
	font-size:16px;
	line-height:1.4;
}
.about-heading p{
	max-width:none;
	font-size:12px;
}
.welcome-content.mt-50{
	margin-top:30px;
}
.welcome-content.padd-40{
	padding:30px 15px;
}
.cart-item{margin-top:0px;
padding-left:15px;}


.about-heading.col-md-12{
	padding:0;
}


}
@media (min-width:481px) and (max-width:767px){
.about-heading h3{
	font-size:36px;
}
.about-heading h5{
	font-size:18px;
	line-height:1.4;
}
.about-heading p{
	max-width:none;
	font-size:14px;
}
.welcome-content.mt-50{
	margin-top:30px;
}
/* .header-right{padding-right:97px;} */
}
@media (min-width:768px) and (max-width:991px){
.about-heading p{
	font-size:14px;
}
.about-heading h5{
	font-size:18px;
}
.about-heading h3{
	font-size:44px;
}
.welcome-content h3{
	font-size:24px;
}
.welcome-content p{
	font-size:14px;
}	
}

/*company-sec*/
.company-sec.container-fluid{
	position:relative;
	background-color:#f4f4f4;
}
.col-27{
	width:25%;
	float:left;
}
.col-30{
	width:37%;
	float:left;
	padding:70px 30px;
}
.col-40{
	width:38%;
	float:left;
}
.company-detail{
	background-color:#fff;
}
.company-detail h5{
	font-size:20px;
	color:#ababab;
	line-height:1.4;
}
.company-detail h5 span{
	color:#5d5d5d;
	font-style:italic;
}
.company-detail p{
	font-size:16px;
	line-height:1.4;
	margin-top:20px;
}
.company-img{
	background-image:url(../img/about-us/company-img.jpg);
	position:absolute;
	background-size:cover;
	height:100%;
	right:0;	
}
.company-heading{
	padding-left:70px;
	padding-top:70px;
}
.company-heading h4{
	font-size:46px;	
}
.company-heading h4 span{
	color:#ff3c20;
	font-weight:600;
}	
.company-heading p{
	font-size:20px;
	color:#ababab;	
	position:relative;
}
.company-heading p:after{
	position:absolute;
	content:"";
	width:50px;
	height:4px;
	display:inline-block;
	background-color:#ff3c20;
	bottom:-30px;
	left:0;	
}
@media (min-width:320px) and (max-width:480px){

.company-heading h4{
	font-size:40px;
}
.company-heading{
	padding-bottom:70px;
	padding-left:15px;
}
.company-detail h5{
	font-size:17px;
	margin-top:0;
}
.company-detail p{
	font-size:14px;
}
.col-27{
	width:100%;
}
.col-30{
	width:100%;
	padding:40px 15px;
}
}
@media (min-width:481px) and (max-width:767px){
.col-27{
	width:100%;
}
.company-heading{
	padding-bottom:70px;
	padding-left:15px;
}
.company-heading h4{
	margin-top:0;
}
.company-img{
	padding:220px 0;
	position:relative;
	width:100%;
}
.col-30{
	width:100%;
	padding:40px 15px;
}	
}
@media (min-width:768px) and (max-width:991px){
.company-heading{
	width:100%;
	padding-bottom:70px;
}
.col-30{
	width:100%;
}
.company-img{
	position:relative;
	width:100%;
	left:0;
	padding:220px 0;
	background-position:left;
}
.company-detail h5{
	font-size:23px;
}	
}
@media (min-width:992px) and (max-width:1199px){
.company-heading{
	padding-left:50px;
}
.company-detail p{
	font-size:14px;
}
.col-40{
	width:33%;
}
.col-27{
	width:30%;
}

.col-30{
	padding:55px 30px;
}	
}

/*mission-sec*/
.mission-sec .newsletter{
	background-image:url(../img/about-us/mission.jpg);
	background-size:cover;
}
.mission-info-sec.sign-up .newsletter{
	width:60%;
}
.mission-sec .mission-img{
	position:absolute;
	height:100%;
	width:100%;
	top:0;
	left:0;	
}
.mission-sec .mission-detail{
	background-color:#f4f4f4;
	padding-left:80px !important;
}
.mission-detail h4{
	font-size:40px;
	position:relative;
}
.mission-detail h4:after{
	position:absolute;
	content:"";
	display:inline-block;
	width:60px;
	height:4px;
	background-color:#ff3c20;
	left:0;
	bottom:-25px;	
}
.mission-detail h4 span{
	font-weight:700;	
}
.mission-detail h6{
	font-size:20px;
	line-height:1.4;
	max-width:77%;
	margin-top:50px;
}
.mission-detail p{
	font-size:16px;
	max-width:75%;
	line-height:1.4;
	margin-top:20px;
	margin-bottom:0;
}
a.work-btn{
	display:inline-block;
	padding:14px 35px;
	border:2px solid #5d5d5d;
	text-align:center;
	border-radius:30px;
	margin-top:30px;
	transition:all 0.4s;
	color:#5d5d5d;
    font-size: 15px;
    font-weight: 900;
    text-transform: uppercase;
}
a.work-btn:hover{
	background-color:#5d5d5d;
	color:#fff;	
}
.our-mission-sec.mission-sec.sign-up .newsletter{
	left:0;
}
@media (min-width:320px) and (max-width:480px){
.mission-sec .mission-detail{
	padding-left:15px !important;
}
.mission-detail h6{
	max-width:none;
	font-size:15px;
}
.mission-detail p{
	max-width:none;
	font-size:14px;
}	
.mission-sec.sign-up .newsletter{
	padding:80px 0;
}
.mission-detail h4{
	margin-top:0;
}
.our-mission-sec.mission-sec.sign-up .newsletter{
	padding:180px 0;
	background-position:center;
}
.company-img{
	position:relative;
	width:100%;
	padding:220px 0;
}
.sign-up .newsletter{
	position:relative;
	width:100%;
}
}
@media (min-width:481px) and (max-width:767px){
.mission-sec.sign-up .newsletter{
	padding:180px 0;
}
.mission-detail h6{
	font-size:18px;
	max-width:none;
}
.mission-sec .mission-detail{
	padding-left:15px !important;
}
.mission-detail p{
	max-width:none;
	font-size:14px;
}
.mission-detail.padd-80{
	padding:40px 0;	
}	
.sign-up .newsletter{
	position:relative;
	width:100%;
}
}
@media (min-width:768px) and (max-width:991px){
.mission-sec.sign-up .newsletter{
	padding:250px 0;
}
.mission-sec.sign-up .newsletter.passsion-info{
	padding:80px 0;
}
.top-button{
	margin-left:0;
}
.mission-detail h4{
	margin:0;
}
.sign-up .newsletter{
	position:relative;
	width:100%;
}
.mission-sec .newsletter{
	position:relative;
	width:100%;
	padding:80px 0;
	background-position:right;
}

}
@media (min-width:992px) and (max-width:1199px){
.mission-sec .newsletter{
	background-position:bottom;
}
}

/*jobs-slider*/
.find-job{
	padding:80px 0;
}
.find-job .carousel-caption{
		text-shadow:none;
}
.find-job .carousel-inner img{
		width:100%;
}
.find-job .carousel-caption h4{
	font-size:30px;
	color:#5d5d5d;	
}
.find-job .carousel-caption h2{
	color:#5d5d5d;	
	font-size:50px;
	font-weight:700;
	margin-top:10px;
}
.find-job .carousel-caption span{
	font-size:20px;
	color:#ababab;
	position:relative;	
}
.find-job .carousel-caption span:after{
	position:absolute;
	content:"";
	width:70px;
	height:4px;
	background-color:#ff3c20;	
	display:inline-block;
	left:0;
	bottom:-30px;
}
.find-job .carousel-caption p{
	font-size:16px;
	color:#5d5d5d;
	max-width:41%;
	line-height:1.4;
	margin-top:55px;
	margin-bottom:0;
}
.find-job .carousel-caption {
    left: 5%;
    padding-bottom: 30px;
    text-align: left;
	bottom:auto;
}
.find-job a.work-btn{
	margin-top:20px;		
}
.find-job a.live{
	font-size:18px;
	font-weight:700;
	color:#5d5d5d;
	display:block;
	margin-top:20px;	
}
.find-job a.live i{
	color:#ff3c20;
	margin-left:15px;
}
.find-job .carousel-indicators li {
  display: inline-block;
  width: 16px;
  height: 16px;
  margin: 1px;
  text-indent: -999px;
  cursor: pointer;
  background-color: #000 \9;
  background-color: rgba(0, 0, 0, 0);
  border: 1px solid #5d5d5d;
  border-radius: 10px;
  background-color:#fff;
}
.find-job .carousel-indicators .active {
  width: 16px;
  height: 16px;
  margin: 1px;
  background-color: #5d5d5d;
  border: 1px solid #5d5d5d;
}
.find-job .carousel-indicators{
	left:7%;
	bottom:30px;	
}
.find-job .col-md-6{
	padding:0;
}
@media (min-width:320px) and (max-width:480px){
.find-job .carousel-caption{
	position:relative;
	top:0;
	bottom:0;
	transform:none;
	left:0;
	padding:0 15px;
}
.find-job .carousel-caption h2{
	font-size:36px;
	margin-top:10px;
}
.find-job .carousel-caption p{
	max-width:100%;
	font-size:14px;
}
.find-job .carousel-indicators{
	display:none;
}
.find-job a.live i{
	margin-left:5px;
}	
}
@media (min-width:481px) and (max-width:767px){
.find-job .carousel-caption{
	position:relative;
	top:0;
	bottom:0;
	transform:none;
}
.find-job .carousel-caption h2{
	font-size:36px;
	margin-top:10px;
}
.find-job .carousel-caption p{
	max-width:89%;
	font-size:14px;
}
.find-job .carousel-indicators{
	display:none;
}

}
@media (min-width:768px) and (max-width:991px){
.find-job .carousel-caption {
    position: relative;
    top: 0;
    bottom: 0;
    transform: none;
	padding-bottom:20px;
}
.find-job .carousel-caption p{
	max-width:65%;
}
.find-job .carousel-indicators{
	left:50%;
	bottom:-4%;
}
.find-job .carousel-inner img{
	width:60%;
	float:right;
}
.find-job .col-md-6{
	float:right !important;
}
.find-job .carousel-caption h2{
	margin-top:0;
}
.find-job .carousel-caption h4{
	display:inline-block;
}	
}
@media (min-width:992px) and (max-width:1199px){
.find-job .carousel-indicators{
	left:50%;
	bottom:-15%;
}
.find-job{
	padding-bottom:100px;
}
.find-job .carousel-caption h2{
	font-size:44px;
	margin-top:10px;
}
.find-job .carousel-caption h4{
	margin-bottom:0;
}
.find-job .carousel-caption p{
    max-width: 68%;
	font-size:14px;
}	
}
@media (min-width:1200px) and (max-width:1359px){
.find-job .carousel-indicators{
	bottom:-4%;
}
.find-job .carousel-caption p{
    max-width: 62%;
}
}

/*counter-sec*/
.counter-sec{
	background-color:#ff3c20;
	padding:50px 0;
}
.counter-sec .item{
	position:relative;	
}
.counter-sec p{
	font-size:70px;
	color:rgba(255,255,255,.2);
	font-weight:700;
	margin:0 !important;
}
.counter-sec span{
	position:absolute;
	top:50%;
	transform:translateY(-50%) translateX(-50%);
	color:#fff;
	font-size:15px;
	font-weight:700;
	left:50%;
}
@media (min-width:320px) and (max-width:480px){
.counter-sec .col-md-3{
	margin-top:15px;
}
.counter-sec .col-md-3:first-child{
	margin-top:0;	
}	
}

/*feature-sec*/
.feature-detail i{
	font-size:28px;
	color:#ff3c20;
	padding-right:15px;
	position:absolute;
}
.feature-detail h4{
	font-size:20px;
	font-weight:700;	
	text-transform:uppercase;
	display:inline-block;
	position:relative;
	padding-left:50px;
	margin:0;
	line-height:34px;
}
.feature-detail p{
	font-size:16px;
	line-height:1.4;
	max-width:87%;
	margin-top:5px;	
	margin-bottom:0;
}
.feature-detail .col-md-12{
	padding:0;
}
.latest-feature-sec a.work-btn{
	padding:10px 40px;
	margin-top:40px;
}
@media (min-width:320px) and (max-width:480px){
.feature-detail p{
	max-width:none;
	font-size:14px;
}
.feature-detail h4{
	line-height:1.4;
	font-size:16px;
	margin-bottom:10px;
}
.feature-detail.col-md-6{
	padding:0;
}
}
@media (min-width:481px) and (max-width:767px){
.feature-detail h4{
	font-size:18px;
}
.feature-detail p{
	font-size:14px;
}
.feature-detail.col-md-6{
	padding:0;
}
}

/*testimonial*/
.about-page .testimonial-slider{
	background-image:url(../img/about-us/testimonial-slider-img.jpg);
	background-size:cover;
}
.about-page .testimonial-slider{
	background-image:url(../img/about-us/testimonial-slider-img.jpg);
	background-size:cover;
}
.testi-bg .testi{
	background-color:#ef402b;
	position:absolute;
	left:0;
	height:100%;
	top:0;
	width:33.33%;
}
.testi-bg{
	position:relative;
}
.testi h4{
	font-size:50px;
	font-weight:bold;
	max-width:50%;
	margin-top:0;
	margin-bottom:0;
}
.testi-text{
	position:absolute;
	top:50%;
	transform:translateY(-50%);
}
.testi-control a.control-round{
	width:15px;
	height:15px;
	border-radius:50%;
	border:1px solid #fff;
	float:left;
	margin-left:10px;
	cursor:pointer;
}
.control-round{
	width:15px;
	height:15px;
	border-radius:50%;
	border:1px solid #fff;
	float:left;
	margin-left:10px;
	cursor:pointer;
}
.control-round.active{
	background-color:#fff;
}
.testimonial-slider{
	background: -webkit-linear-gradient(-45deg, rgba(35,34,94,1) 0%, rgba(79,31,138,1) 78%, rgba(79,31,138,1) 100%);
	padding:180px 0 160px;
}
.testimonial-slider .owl-theme .owl-controls .owl-page{
	margin-left:10px;
	border:1px solid #fff;
}
.testimonial-slider .owl-carousel .col-sm-12{
		padding:0;
}
.testimonial-slider .owl-theme .owl-controls .owl-page.active{
	background-color:#fff;
}
.testimonial-slider .owl-theme .owl-controls .owl-page{
	width:14px;
	height:14px;
	border-radius:50%;
	display:inline-block;
}
.testimonial-slider .owl-pagination{
	text-align:left;
	padding-left:6px;
}
.testimonial-2{
	background-color:#ffffff;
	margin-left:15px;
	padding:25px;
	border-radius:10px;
}
.testimonial-2 .pic-2{
	display:inline-block;
	float:left;
}
.testimonial-2 .pic-2 img{
	width:52px !important;
}
.testimonial-review h3{
	font-size:16px;
	color:#313131;
	font-weight:700;
	display:inline-block;
	margin-top:0;
	margin-bottom:0;
	margin-left:15px;
}
.testimonial-review h4{
	font-size:14px;
	color:#999;
	font-weight:normal;
	padding-left:68px;
}
.testimonial-review p{
	font-size:16px;
	color:#313131;
	font-style:italic;
	font-weight:normal;
	line-height:1.4;
	padding-top:15px;
}
#quote-carousel {
  padding: 0 10px 30px 10px;
  margin-top: 30px;
  text-align:center;
}
/* indicator position */
#quote-carousel .carousel-indicators {
  right: 50%;
  top: auto;
  bottom: -10px;
  margin-right: -19px;
}
/* indicator color */
#quote-carousel .carousel-indicators li {
  background: #c0c0c0;
}
/* active indicator */
#quote-carousel .carousel-indicators .active {
  background: #333333;
  height:10px;
  width:10px;
  margin-bottom:1px;
}

@media (min-width:320px) and (max-width:991px){
.testimonial-slider .owl-pagination{
	text-align:center;
}
.testi-bg .testi{
	position:relative;
	width:100%;
}
.testi h4{
	max-width:none;
	font-size:36px;
	padding:10px 0;
}
.testi-text{
	transform:none;
	text-align:center;
}
.testimonial-slider{
	padding:80px 0;
}
.testimonial-2{
	margin:0 7px;
}

}
@media (min-width:768px) and (max-width:992px){
.testimonial-slider .container{
	padding:0;
	width:720px;
}
}

/*team-sec*/
.team-info {
	padding-top:20px;
	border-right:4px solid #ff3c20;
}
.team-info h4{
	font-size:20px;
	font-weight:600;
	margin:0;
	transition:all 0.4s;
	cursor:pointer;
}
.team-info h4:hover{
	color:#ff3c20;
}
.team-info h6{
	font-size:14px;
	color:#ff3c20;
}	
.team-info p{
	font-size:16px;
	color:#ababab;
	font-weight:400;
	line-height:1.4;
	text-align: justify;
    padding-right: 20px;
}
.team-info a{
	font-size:18px;	
	font-weight:700;
}
.team-info a i{
	font-size:18px;
	color:#ff3c20;
	padding-left:4px;
}
.team-sec .thumbnail{
	padding:10px;
}
.team-sec .owl-theme .owl-controls .owl-page{
	width:14px;
	height:14px;
	border:1px solid #5d5d5d;
	border-radius:50%;
	margin-left:15px;
}
.team-sec .owl-theme .owl-controls .owl-page.active{
	background-color:#5d5d5d;
}	
.team-sec .owl-theme .owl-controls .owl-buttons div{
	display:none;
}
.team-sec .team-info a.shop-btn:hover i{
	animation-name:red;
	animation-duration:.55s;
	position:relative;
}
.team-sec .team-info a.shop-btn{
	transition:all 0.4s;
}
.team-sec .team-info a.shop-btn:hover{
	color:#ff3c20;
}
@keyframes red
{
0%	{left:0;}
50% {left:20px;}
100% {left:0;}	
}
@media (min-width:320px) and (max-width:480px){
.team-sec .thumbnail{
	padding:0 ;	
}
.team-sec .owl-theme .owl-controls .owl-page:first-child{
	margin-left:0;	
}	

}

/*intuitive-sec*/
.intuitive-sec{
	background-color:#ff3c20;
	padding:60px 0;
}
.intuitive-sec h4{
	font-size:40px;
	font-weight:600;
	color:#fff;	
	margin-top:0;
}
.intuitive-sec a.work-btn{
	border:2px solid #fff;
	color:#fff;	
	margin-top:10px;
}
.intuitive-sec a.work-btn:hover{
	background-color:#fff;
	color:#ff3c20;
}
@media (min-width:320px) and (max-width:480px){
.intuitive-sec h4{
	font-size:24px;
}	
}
@media (min-width:481px) and (max-width:767px){
.intuitive-sec h4{
	font-size:30px;
}
}
 
/*footer*/
.payment.col-md-4, .social-sec.col-md-4 {
    margin-top: 12px;
}
.payment img{
	display:inline-block;
}
.social-sec .social-circle{
	display:inline-block;
	float:left;
	width:40px;
	height:40px;
	border-radius:50%;
	background-color:#bababa;	
	text-align:center;
	margin-left:15px;
	transition:all .4s;
}
.social-sec .social-circle:hover{
	background-color:#ff3c20;	
}
.social-sec .social-circle a{
	font-size:20px;
	line-height:40px;
	color:#fff;
	display:block;
	transition:all 0.4s;
}
.social-sec .social-circle a:hover{
	color:#fff;	
}
.footer-logo{
	text-align:center;
}
.footer-logo img{
	display:inline-block;	
}
.social {
	display:inline-block;
}
.footer-top-sec{
	padding-bottom:15px;
	border-bottom:1px solid #e5e5e5;
}
.call{
	margin-top:35px;
}
.email{
	margin-top:30px;
}
.call h3{
	font-size:18px;
	color:#707070;
	letter-spacing:3px;
	font-weight:700;
	text-align:center;
	margin-top:15px;
}
.email p{
	text-align:center;
	margin-bottom:5px;
	color:#333;
}
.footer-sec{
	background-color:#f7f6f6;
}
.email{
	text-align:center;
	position:relative;
}
.email i{
	font-size:24px;
	color:#ff3c20;
}
.email:after{
	position:absolute;
	content:"";
	width:2px;
	height:126px;
	background-color:#e0e0e0;
	display:block;
	top:0;
	right:0;	
}
.email:last-child:after{
	display:none;
}
.terms-condition ul{
	list-style:none;
	padding-left:0;
	float:right;
	margin-bottom: 0;
	line-height: 40px;
}
.terms-condition ul li{
	padding-left:20px;
	float:left;
	color:#707070;
	font-size:16px;
	line-height:42px;
}
.terms-condition ul li a{
	transition:all 0.4s;
}
.terms-condition ul li a:hover{
	color:#ff3c20;	
}
.contact-info h3{
	font-size:20px;
	font-weight:700;
	border-bottom:1px solid #e8e8e8;
	display:block;
	padding-bottom:10px;
	position:relative;
}
.contact-info.top-rated-product span{
	top:17%;
	height:5px;
	width:100px;
}
.contact-info p{
	font-size:15px;
	font-weight:normal;
	color:#282828;
	line-height:1.6;
}
p.phone-no{
	font-size:20px;
	font-weight:700;
}
.contact-info ul{
	list-style:none;
	padding-left:0;
}
.contact-info ul li a{
	line-height:1.6;
	font-size:16px;
	font-weight:normal;
	color:#282828;
	letter-spacing:0.5px;
	padding-top:7px;
	display:block;
	transition:all 0.3s;
	position:relative;
	overflow:hidden;
}
.foot-a ul li a i{
		transition:all .3s;
		color:#ff3c20;
		position:absolute;
		left:-15px;
		    top: 10px;
    font-size: 18px;
}
.foot-a ul li:hover a{
		padding-left:20px;
}
.foot-a ul li:hover a i{
		left:3px;
}
.contact-info ul li a:hover{
	color:#ff3c20;
}
.contact-info .col-md-4{
		padding-left:0;
		padding-right:0;
	}
.contact-info .col-md-4 img{
	overflow:hidden;
	transition:all 0.4s;
}
.contact-info .col-md-4 {
	overflow:hidden;
}
.contact-info .col-md-4 img:hover{
	transform:scale(1.2);
}
.contact-info h3:after{
	content:"";
	width:100px;
	height:4px;
	background-color:#ff3c20;
	display:block;
	position:absolute;
	bottom:-2px;
}
.instagram{
	border:1px solid #f2f2f2;
}
.contact i{
	float:left;
	font-size:25px;
	color:#ff3c20;
	padding-right:15px;
}
.contact p{
	padding-left:20px;
	margin:0;
}
.follow-us h2{
	font-size:20px;
	font-weight:700;
	color:#282828;
}
.follow a:first-child{
	padding-left:0;
}
.follow a{
	padding-left:15px;
	font-size:26px;
	color:#c7c7c7;
	transition:all 0.4s;
}
.follow a:hover{
	color:#ff3c20;
}
.copy-right{
	background-color:#e8e8e8;
	padding:10px 0;
}
.copy-text p{
	font-size:16px;
	font-weight:normal;
	color:#282828;
	margin:0;
	margin-left:-38px;
	line-height:40px;
	
	
}
.copy-text a{
	color:#ff3c20;
}
.copy-image a{
	display:inline-block;
	margin-top:5px;
}
.contact{
	margin-top:20px;
}


/*footer-media-query*/
@media (min-width:320px) and (max-width:480px){
.footer-top-sec.col-md-12{
	padding:0;
}
.copy-text p{
  text-align: center;	
}
	
.payment,.footer-logo{
	margin-bottom:20px;
	text-align:center;
}
.payment{
	margin-bottom:30px;
}
.social-circle:first-child{
	margin-left:0;
}
.footer-top-sec{
	border:none;
}
.email::after{
	display:none;
}
.email.col-md-4,
.call.col-md-12{
	padding:0;	
}
.call{
	margin-top:50px;
}
.email p{
	font-size:16px;
}
.terms-condition ul{
	padding-left:0;
	text-align: center;
	line-height: normal;
	float:none;
}
.terms-condition.col-xs-12{
	padding:0;
}
.terms-condition ul li{
	padding-left: 0;
    font-size: 14px;
    text-align: center !important;
    line-height: 1.6;
    float: none;
    display: inline-block;
    padding: 0 8px;
	
}
}
@media (min-width:481px) and (max-width:767px){
.payment.col-md-4{
	padding:0;
	text-align:center;
	margin-bottom:30px;
}
.footer-logo{
	margin-bottom:30px;
}
.footer-top-sec{
	border:none;
}
.social-circle:first-child{
	margin-left:0;
}
.email::after{
	display:none;
}
.terms-condition ul li{
	line-height: 1.6;
	font-size:14px;
	padding-left:55px;
}
.terms-condition ul{
	float:none;
}
.terms-condition.text-right.col-sm-9{
	padding:0;
	padding-left: 130px;
}
.copy-text p {
    text-align: center;
}
}
@media (min-width:768px) and (max-width:991px){
.email p{
	font-size:14px;
}
.terms-condition ul{
	padding-left:0;	
}
.terms-condition ul li{
	padding-left:11px;
}
.payment.col-md-4, .social-sec.col-md-4 {
    margin-top:0;
}
}
	
/*check-out-page*/
.padd-70{
	padding:70px 0;
}
.checkout{
		margin-top:30px;
}
.checkout-page .checkout-bg{
    background-image: url(../img/inner-page/checkout_head.jpg);
    background-size: cover;
    padding: 100px 0 80px;
}
.alert-faq .checkout{
		margin-top:20px;
}
.alert-faq .accordion{
		border: 1px solid rgb(238, 238, 238);
		padding:20px 12px;
		margin-bottom:20px;
		font-weight:400; 
		font-size:16px;
}
.alert-faq #section1 a{
		font-weight:bold;
		font-size:16px;
		color:#ff2c30;
}
.checkout-page .alert-faq #section1 + .accordian-body .faq label{
	margin-left: 5px;
    font-weight: normal;
}
.checkout-page .alert-faq #section2 + .accordian-body .btn-bg{
	margin-top:20px;
	margin-left:10px;
}
.alert-faq .accordian-body .faq{
		border: 1px solid rgb(238, 238, 238);
		margin-bottom:20px;
}
.alert-faq .accordian-body .faq{
		background-color:transparent;
		padding:12px 20px;
}
.alert-faq .accordian-body .faq p{
		color:#333;
		margin-bottom:15px;
		line-height:26px;
		font-weight:400
}
.article-read {
    padding: 15px 30px;
    border-radius: 11px;
    -webkit-border-radius: 11px;
    background-color: #ff5722; 
    display: inline-block;
    margin-top: 15px;
    color: #FFF;
    text-decoration: none;
    font-weight: 600;
    line-height: normal;
}
.alert-faq a{
		margin-top:0;
		margin-right:10px;
		margin-bottom:5px;
		font-weight:400;
}
.login-btn{
	display:inline-block;
}
.alert-coupon{
		border-radius:6px;
		line-height:40px;
}
.alert-faq span{
		float:left;
		padding:0;
		margin-right:25px;
		background:none;
}
.lost-pwd{
		color:#333;
}
.checkout.col-md-12{
	padding-left:0;
}
.checkout h2{
		text-transform:uppercase;
		font-size:20px;
		color:#313131;
		font-weight:bold;
		margin-bottom:30px;
		letter-spacing:2px;
		padding-bottom:15px;
		border-bottom:2px solid #ef402b;
}
.checkout h3{
		font-size:16px;
		color:#313131;
		margin-top:0;
}
.checkout input{
		width:100%;
		line-height:50px;
		border:1px solid #eeeeee;
		margin-bottom:15px;
		text-indent:20px;
		font-weight:400;
		font-size:16px;
}
.checkout .order-notes{
		height:100px;
}
.checkout .form-control{
		line-height:40px;
		height:50px;
		margin-bottom:15px;
}
.checkout .form-control option{
		height:30px;
}
.checkout label{
		margin-left:10px;
		font-size:16px;
		color:#313131;
		font-weight:400;
		cursor:pointer;
}
.check-faq .accordian-body .faq{
		background-color:transparent;
}
.check-faq .accordian-body .faq p{
		color:#313131;
		font-weight:400;
		font-size:16px;
		margin-bottom:15px;
		margin-top:20px;
}
.check-faq #section1{
		cursor:pointer;
		padding-bottom:0;
}
.checkbox-span .accordion-close span{
		float:left;
		margin-right:15px;
		background: url(../img/check-box/off.jpg) no-repeat scroll center center;
		padding:10px;
		display:block;
}
.checkbox-span .accordion-open span{
		float:left;
		margin-right:15px;
		background: url(../img/check-box/on.jpg) no-repeat scroll center center;
		padding:10px;
		display:block;
}
.pay-faq .accordion-close span{
		float:left;
		padding:8px;
		margin-right:25px;
		background: url(../img/Redio%20button/Off.png) no-repeat scroll center center;
		border-radius:50%;
		display:block;
		margin-top:5px;
		cursor:pointer;
}
.checkout-page #section6 span{
	margin-top:11px;
}
.pay-faq .accordion-open span{
		float:left;
		padding:8px;
		margin-right:25px;

		background: url(../img/Redio%20button/On.png) no-repeat scroll center center;
		display:block;
		margin-top:5px;
		cursor:pointer;
}
.pay-faq{
		margin-top:30px;
		padding-bottom:80px;
}
.pay-faq h2{
	margin-top:0;
	padding-bottom:10px;
	text-transform:uppercase;
	font-size:20px;
	font-weight:700;
	border-bottom:2px solid #ef402b;
	padding-left:8px;
}
.pay-faq h4{
		display:inline;
}
.pay-faq a.coupon{
		float:right;
		margin:10px 0;
}
.pay-faq .accordion{
		margin-top:0;
		background-color:transparent;
		margin-bottom:15px;
}
.mt-20{
	margin-top:20px !important;
}
.pay-faq .accordion label{
	font-weight:400;
	font-size:16px;
	color:#313131;
	cursor:pointer;
}	
.pay-faq .accordian-body .faq{
		background-color:#fff;
		color:#313131;
		position:relative;
		border:1px solid #eeeeee;
		font-weight:400;
		padding:15px;
		padding-bottom:0;
		margin-bottom:15px;
}
/*Quantity-box*/
.element-table .quantity input{
		border:none;
		width:30px;
		text-align:center;
		border-radius:4px;
}
.element-table button {
    border: none;
	background-color:transparent;
	font-size:14px;
}
.pay-faq .accordian-body .faq:before{
	content:"";
	position:absolute;
	width:20px;
	height:20px;
	display:block;
	transform:rotate(45deg);
	top:-10px;
	overflow:hidden;
	left:53px;
	border-top:1px solid #eee;
	border-left:1px solid #eee;	
}
.element .divider{
		margin:50px 0;
}
.element-faq{
		margin-top:15px;
}
.element-faq .accordion{
		background-color:#474747;
		color:#fff;
}
.element-faq .accordian-body .faq{
		color:#474747;
		background-color:transparent;
}
.element-faq .accordian-body .faq p{
		color:#474747;
}

.element-table h2{
		margin-bottom:40px;
}
.element-table{
		width:100%;
		overflow-y: auto;
	_overflow: auto;
	margin: 0 0 1em;
	padding-left:8px;
}
.element-table table{
		width:100%;
}
.element-table tr th{
		border-bottom:1px solid #eeeeee;
		padding:0 0px 10px;
		font-size:20px;
		text-transform:uppercase;
		color:#191919;
}
.element-table tr td{
		border-bottom:1px solid #333;
		padding:5px 0px;
		font-size:16px;
		font-weight:700;
}
.checkout-page .element-table tr td{
	font-weight:400;
}
.element-table tr td.shipping{
	color:#ef402b;
}
.element-table tr td.total{
	color:#ef402b;
	font-weight:700;
	font-size:23px;
}
.coupon {
    background-color: #ef402b;
    padding: 16px 60px;
    text-align: center;
    margin-left: 8px;
    color: #fff;
	font-size:16px;
    font-weight: 700;
    letter-spacing: 0;
    margin-top: 3px;
	border-radius:30px;
	transition:all 0.3s;
	border:1px solid #ef402b;
}
.coupon:hover{
	border:1px solid #ef402b;
	color:#ef402b;
	background-color:transparent;
}
@media (min-width:320px) and (max-width:480px){	
.element-table tr td{
	font-size:12px;
	line-height:1.4;
}
.element-table tr td.total{
	font-size:20px;
}
.coupon{
	padding:16px 45px;
}
.element-table tr th{
	font-size:16px;
}
.checkout.col-md-12{
	padding-left:0;
}
.login-btn{
	display:block;
}
.pay-faq{
		padding-top:0;
		padding-bottom:80px;
		padding-left:0 !important;
		padding-right:0 !important;
}
.checkout-page .pay-faq{
	padding-bottom:0;
}
.pay-faq .accordion-open span,.pay-faq .accordion-close span {
    margin-right: 12px;
}
.pay-faq #section1 label,.pay-faq #section1 h4 {
    font-size: 11px;
}
.pay-faq #section1 img{
		width:100px;
}
.faq p{
		font-size:14px;
}
.alert-faq #section1,
.alert-faq #section2{
	font-size:15px;
}
.alert-faq a{
	margin-right:0;
}
.pay-faq a.coupon{
	float:none;
	display:inline-block;
}


}
@media (min-width:481px) and (max-width:767px){
	
.element-table tr th{
	font-size:18px;
}
.element-table tr td{
	font-size:14px;
}
.element-table tr td.total{
	font-size:20px;
}
.pay-faq a.coupon{
	float:none;
	margin:0;
}
.pay-faq .col-md-12{
	margin-top:25px;
}
.pay-faq #section1 label,.pay-faq h4{
	font-size:14px;
}
.pay-faq{
		margin-top:30px;
		padding-bottom:30px;
}
.pay-faq a.coupon{
	float:none;
	display:inline-block;
}
}
@media (min-width:768px) and (max-width:991px){
.pay-faq{
		margin-top:30px;
		padding-bottom:0px;
}
.pay-faq a.coupon{
	margin-bottom:0;
}
.cart-item .cart-item-hover{
	right:0%;
}
.pay-faq a.coupon{
	float:left;
}
.team-info h4{
	font-size:55px;
}
}
@media (min-width:992px) and (max-width:1199px){
	
.element-table tr td{
	font-size:14px;
}
}

/*cart-page*/
.shp-cart .element-table tr td img{
	float:left;
}
.shp-cart .header-main{
	background-image:url(../img/inner-page/cart-bg.jpg);
}
.shp-cart .element-table tr td p{
	font-size:16px;
	font-weight:700;
	max-width:69%;
	line-height:1.5;
	padding-left:86px;
	color:#5d5d5d;
}
.shp-cart .element-table tr td h5{
	font-size:16px;
	font-weight:400;
	color:#333;
	padding-left:15px;
	display:inline;
}
.shp-cart .element-table tr td.width{
	width:47%;
}
.shp-cart .element-table tr td i{
	color:#dbdbdb;
	font-size:18px;
	transition:all 0.4s;
}
.shp-cart .element-table tr td i:hover{
	color:#ff3c20 !important;
}
.quantity{
	border:1px solid #333;
	border-radius:30px;
	display:inline-block;
	padding:15px 2px;
	color:#333;
}
.quantity i{
	padding-right:15px;
	padding-left:15px;
	color:#333;
}
.shp-cart .element-table tr td{
	padding:30px 0;
}
.cart-price{
	color:#333;
}
.cart-btn{
	font-size:16px;
	font-weight:700;
	color:#313131;
	display:inline-block;
	padding:15px 25px;
	border:1px solid #333;
	border-radius:30px;
}
.upd-btn{
	padding:15px 45px;
	margin-right:18px;
}
.shp-btn{
	font-size:16px;
	font-weight:700;
	color:#fff;
	display:inline-block;
	padding:15px 33px;
	background-color:#ef402b;
	border-radius:30px;
	border:1px solid #ef402b;
	transition:all .3s;
	 /* margin-top:15px;  */

}


.shp-btn:hover{
	background-color:#000;
	border:1px solid #000;
	color:#fff;
}
.shp-coupon h2{
	font-size:20px;
	font-weight:700;
	color:#313131;	
	text-transform:uppercase;
}
.shp-coupon input{
	width:66%;
	color:#b1b1b1;
	border-radius:30px;
	margin-right:13px;
	margin-bottom:30px;
}
.shp-coupon p{
	font-size:16px;
	font-weight:400;
	color:#313131;
}
.shp-coupon select{
	border-radius:30px;
}
.shp-coupon .state input{
	width:49%;
	float:left;
	margin-right:0;
}
.shp-coupon .state input.code{
	margin-right:10px;
}
.shp-cart .shp-checkout .element-table tr td{
	padding:15px 0;
}
.shp-cart .shp-checkout h2{
	margin-bottom:0;
}
.shp-cart-btn{
	display:inline-block;
padding-top:15px;
padding-left:65px;}
}
@media (min-width:320px) and (max-width:480px){
	
.shp-coupon input{
	width:100%;
	margin-bottom:15px;
}
.shp-coupon h2,.shp-coupon p{
	font-size:13px;
	text-align:left;
}
.shp-coupon .state input{
	width:100%;
}
.shp-btn.pull-right{
	float:none !important;
}
.shp-coupon{
	text-align:center;
}
.shp-cart .shp-checkout.pay-faq h2{
	font-size:14px;
	text-align:left;
}
.shp-cart .element-table tr td{
	font-size:14px;
}
.element-table tr td.total{
	font-size:20px;
}
.shp-checkout{
	text-align:center;
}
.shp-cart .element-table{
	text-align:left;
}
.shp-cart .element-table tr td p{
	max-width:100%;
	font-size:14px;
}
.product-table .element-table table{
	width:100%;
}
.element-table table{
	/* width:900px; */
}
.pull-right{
	text-align:center;
}
.shp-cart .shp-btn{
	margin-top:15px;
}
.shp-cart-btn{
	text-align:center;
	display:block;
}
.shp-checkout .element-table table{
	width:100%;
}
.shp-cart .header-main h2{
	font-size:36px;
}
.upd-btn{
	margin-right:0;
	margin-top:15px;
}
}
@media (min-width:481px) and (max-width:767px){
	
.shp-coupon h2{
	font-size:16px;
	text-align:left;
}
.shp-coupon input{
	width:100%;
}
.shp-coupon{
	text-align:center;
}
.shp-coupon .state input{
	width:100%;
}
.shp-btn.pull-right{
	float:none !important;
}
.shp-cart .shp-checkout.pay-faq h2{
	font-size:16px;
	text-align:left;
}
.shp-checkout{
	text-align:center;
}
.element-table{
	text-align:left;
}
.shp-cart .element-table tr td p{
	max-width:89%;
	font-size:14px;
}
.element-table table{
	/* width:900px; */
}
.shp-checkout .element-table table{
	width:100%;
}
.product-table .element-table table{
	width:100%;
}
.pull-right{
	text-align:center;
	margin-top:6px;
	padding-right: 60px;
}
.shp-cart-btn{
	display:block;
	text-align:center;
	padding-right:50px;
}


}
@media (min-width:768px) and (max-width:991px){	
.state{
	display:flow-root;
}
.shp-checkout.pay-faq{
	margin-top:20px;
	padding:0;
}
.shp-cart .element-table tr td p{
	font-size:14px;
	max-width:84%;
}
.shp-cart .shp-btn{
	margin-bottom:40px;
}
}
@media (min-width:992px) and (max-width:1199px){	
.shp-coupon .state input{
	width:48%;
}
}





/*product-list-page*/
.product-top-bar ul{
	list-style:none;
	padding-left:0;
	border-bottom:1px solid #ededed;
	min-height:35px;
}
.product-list .menu ul.navbar-nav.navbar-left{
	margin-left:0;
}
.product-top-bar ul li{
	float:left;
	position:relative;
	padding-right:20px;
}
.product-top-bar ul li:last-child {
    padding-right: 0;
}
.product-top-bar ul li i{
	font-weight:400;
}
.product-top-bar ul li a.show-list{
	padding-right:20px;
}
.product-top-bar ul li a{
	font-size:15px;
	font-weight:400;
}
.product-top-bar ul li a.menu-btn.active{
	color:#474747;
}
.product-top-bar ul li a span {
    color: #b1b1b1;
}
.product-top-bar ul li:first-child:after{
	position:absolute;
	content:"";
	width:150px;
	height:4px;
	background-color:#ff3c20;
	display:block;
	bottom:-14px;
}
.product-top-bar ul li a.menu-btn{
	border:1px solid #d5d5d5;
	padding:8px 10px;
	padding-bottom:6px;
}
.product-top-bar ul li a.menu-btn {
	color:#d5d5d5;
}
.product-top-bar .pull-right li:first-child:after{
	display:none;
}
.product-top-bar ul li a.menu-btn.active{
	border:1px solid #232f3e;
}
.product-top-bar ul li a.menu-bars i{
	font-size:20px;
}
.product-list-detail span{
	font-size:16px;
	color:#282828;
	font-weight:400;
	display:block;
	padding-left:20px;
	line-height:1.5;
	max-width:95%;
}
.product-list-img img{
	padding:40px 15px 0;
}
.list{
	display:table;
	border-left:1px solid #f2f2f2;
	min-height:280px;
	padding:25px 0;
}
.product-list-detail.popular-product:hover{
	box-shadow:none;
}
.product-list-detail{
	border:1px solid #f2f2f2;
}
.product-list-detail.popular-product .icon-hover{
	bottom:0;
	opacity:1;
	display:block;
	background-color:transparent;
	position:relative;
	padding:0;
	padding-left:10px;
	text-align:left;
}
.product-list-detail.popular-product .icon-hover i{
	text-align:center;
	display:block;
}
.product-list-detail.popular-product{
	padding:0;
}
.product-list-detail .icon h6{
	display:inline-block;
	font-size:16px;
	color:#ababab;
	padding-left:10px;
}
.product-list-detail .icon{
	padding-left:20px;
}
.product-list-detail.popular-product h2,.list p,.product-list-detail.popular-product h4{
	padding-left:20px;
}
.product-list .popular-product i:nth-child(1){
	padding-left:0;
}
.product-list .popular-product .sale-hover i{
	color:#ff3c20;
}
.product-list-detail.popular-product .sale-hover-cart .add-cart i{
	color:#5d5d5d;	
}
.product-list-detail.popular-product .sale-hover-cart i{
	color:#fff;
}
.product-list-detail.popular-product{
	transition:all .4s;
}
.product-list-detail.popular-product:hover .sale-hover-cart{
	display:block;
}
.product-list-img .sale-heart-hover{
	left:29%;
	display:inline-table;
	bottom:10px;
}
.product-list-img .sale-heart-hover i{
	transition:all 0.4s;
}
.product-list-img .sale-heart-hover i:hover{
	color:#ff3c20;
}
.product-list-img img{
	position:relative;
}
.product-list-labal{
	position:absolute;
	color:#fff;
	padding:6px 10px;
	font-size:12px;
	font-weight:700;
	left:27%;
	top:10px;
	background-color:#ff3c20;
	display:block;
	border-radius:30px;
}
.product-list-labal1{
	left:1%;
	background-color:#a7da64;
}
.product-list .popular-product.sale h4{
	padding-left:0;
	margin-top:0;
}
.product-list .top-rated{
	padding-bottom:80px;
}
.product-list .list.product-body h4{
	margin-bottom:10px;
	float:none;
}
.product-list .main-side-bar .sub-menu a i{
	float:none;
}
.col-md-12.discount{
	padding:0;
}

@media (min-width:320px) and (max-width:480px){
.product-top-bar ul li:first-child{
		margin-bottom:20px;
		display:block;
		float:none;
}
.product-top-bar ul .pull-right li:first-child{
	float:left;
}
.product-list-labal{
	left:auto;
	right:2%;
}
.product-list-labal1{
	left:2%;
	right:auto;
}
.product-list-img{
	text-align:center;
}
.product-list-detail.popular-product img{
	float:none;
	display:inline-block;
}
.product-top-bar ul li{
	padding-right:5px;	
}
.product-top-bar .pull-right{
	margin-top:15px;
}
.product-list-detail.popular-product h2{
	font-size:16px;
	padding-left: 0;
}
.product-body p,
.product-list-detail .icon,
.product-list-detail.popular-product h4,
.product-list-detail span{
  padding-left: 0;		
  margin-top:15px;
}
.product-list-detail .icon h6{
	padding-left:0;
}
.product-list-img img{
  padding-bottom: 0;		
}
.list.product-body{
  padding-bottom: 35px;		
}
.product-list-detail.popular-product .sale-hover-cart .add-cart i{
	font-size:18px;	
}
.product-list-detail.popular-product .sale-hover-cart i{
	font-size:16px;
}
.main-side-bar{
	padding:80px;
}
.product-list-sec{
	padding-bottom:30px;
	padding-top:30px;
}
.special-offer .main-side-bar.col-md-3,.product-list-sec .main-side-bar{
	padding-left:0 !important;
	padding-right:0 !important;
	padding-bottom:0 !important;
}
.popular-product{
	padding:15px 0;
}
.product-list-img .sale-heart-hover{
	left:auto;
	bottom:auto;
}
.product-top-bar ul li a{
	font-size:14px;
}
.col-md-9.grid-list,.col-md-12.discount{
	padding:0;
}
.product-list .top-rated{
	padding-bottom:30px;
}
}
@media (min-width:481px) and (max-width:599px){
.product-list-img{
	text-align:center;
}
.product-list-detail.popular-product img{
	float:none;
	display:inline-block;
}
.popular-product{
	padding:15px 0;
}
.main-side-bar{
	padding-top:80px;
}
.new-list img{
	bottom:-1px;
}
.main-side-bar ul:last-child{
	margin-bottom:0;
}
.top-rated-product.pb-60{
	padding-bottom:80px;
}
.product-list-img .sale-heart-hover{
	left:auto;
	bottom:55%;
}
.col-md-9.grid-list,.col-md-12.discount{
	padding:0;
}
.special-offer .main-side-bar.col-md-3,.product-list-sec .main-side-bar{
	padding-left:0 !important;
	padding-right:0 !important;
	padding-bottom:0 !important;
}

}
@media (min-width:600px) and (max-width:767px){
	
.product-list-img img{
	width:40%;
}
.product-list-labal{
	left:28%;
}
.product-list-labal1{
	left:2%;
}
.col-md-9.grid-list,.col-md-12.discount{
	padding:0;
}
.special-offer .main-side-bar.col-md-3,.product-list-sec .main-side-bar{
	padding-left:0 !important;
	padding-right:0 !important;
	padding-bottom:0 !important;
}
/* .header-right { */
/* padding-right: 0px;} */

}
@media (min-width:768px) and (max-width:991px){
.new-list img{
	bottom:-1px;
}
.main-side-bar ul:last-child{
	margin-bottom:0;
}
.product-list .sale.popular-product img{
	padding-bottom:0;
}
.product-list .popular-product h2{
	font-size:16px;
}
.product-list .popular-product h4{
	margin-top:0;
}
.product-list-img .sale-heart-hover{
	left:35%;
	bottom:11px;
}
.col-md-9.grid-list,.col-md-12.discount{
	padding:0;
}
.special-offer .main-side-bar.col-md-3,.product-list-sec .main-side-bar{
	padding-left:0 !important;
	padding-right:0 !important;
	padding-bottom:0 !important;
}
}
@media (min-width:992px) and (max-width:1199px){	
.product-list-labal{
	left:30%;
}
.product-list-labal1{
	left:1%;
}
.product-top-bar ul li{
	padding-right:14px;
}
.hover-icon{
	width:36px;
	height:36px;
}
.hover-icon a i{
	font-size:16px;
	line-height:36px;
}
.list{
	min-height:300px;
}
.product-list-img .sale-heart-hover{
	left:36%;
	bottom:10px;
}
.product-list .top-rated{
	padding-bottom:20px;
}
.product-list-sec,.special-offer{
	padding-bottom:30px;
}
}

/*Blog-page*/
.header-main{
		background-image:url(../img/blog/blog-head.jpg);
		background-size:cover;
		padding:100px 0 80px;
}
.header-main h2{
		font-size:50px;
		font-weight:700;
		margin-top:0;
		color:#fff;
}
.header-main .link-sec a{
		display:inline-block;
		color:#fff;
		font-size:16px;
		font-weight:400;
		padding:0 8px;
}
.header-main .link-sec i{
		font-size:20px;
		color:#fff;
}
/*BLog-main*/
.blog-main{
		padding:80px 15px;
}
.article-main{
		margin-bottom:44px;
}
.article-head{
		position:relative;
		overflow:hidden;
		cursor:pointer;
}
.article-head:hover img.img-responsive{
		transform:scale(1.2);
}
.article-head img.img-responsive{
		width:100%;
		transition:all .8s;
}
.type-post{
		position:absolute;
		right:0;
		bottom:0;
		background-color:#ff3c20;
		height:50px;
		width:50px;
		text-align:center;
		line-height:50px;
}
.type-post img{
		display:inline-block;
}
.article-body h3{
		font-size:14px;
		color:#fff;
		display:inline-block;
		background-color:#ff3c20;
		padding:5px 8px;
		line-height:1;
		font-weight:400;
		margin-top:35px;
}
.article-body img{
		width:100%;
}
.article-body h2{
		font-size:22px;
		line-height:1.3;
		font-weight:700;
		margin-top:0;
		transition:all 0.4s;
}
.article-body h2:hover{
	color:#ff3c20
}
.article-body h4{
		font-size:16px;
		line-height:1;
		font-weight:400;
		margin-top:0;
		color:#ababab;
		display:inline-block;
		margin-right:20px;
		transition:all 0.4s;
}
.article-body h4:hover,
.article-body h4:hover i{
	color:#ff3c20;	
}
.article-body h4 i{
		color:#313131;
		font-size:18px;
		margin-right:5px;
		transition:all 0.4s;
}
.article-body p{
		font-weight:400;
		font-size:14px;
		line-height:1.6;
		margin-bottom:15px;
}
a.more-btn{
		display:inline-block;
		border:1px solid #ebebeb;
		font-size:14px;
		font-weight:700;
		padding:16px 30px;
		border-radius:50px;
		text-transform:uppercase;
		letter-spacing:1px;	
		position:relative;	
}
a.more-btn i{
		opacity:0;
		transition:all .3s;
		right:40px;
		color:#ff3c20;
		font-size:18px;
		position:absolute;
		top:50%;
		margin-top:-11px;
}
a.more-btn:hover i{
		opacity:1;
		right:15px;
}
.article-footer{
		border-top:1px solid #ebebeb;
		padding-top:15px;
		margin-top:30px;
}
.article-footer .comt-like{
		float:left;
}
.comt-like h4{
		display:inline-block;
		font-size:16px;
		color:#ababab;
		margin-right:15px;
		margin-top:0;
		transition:all 0.4s;
}
.comt-like h4:hover,
.comt-like h4:hover i{
	color:#ff3c20;	
}
.comt-like h4 i{
		color:#313131;
		font-size:18px;
		margin-right:8px;
		vertical-align:middle;
		transition:all 0.4s;
}
.article-footer .soc-icon{
		float:right;
}
.soc-icon a{
		display:inline-block;
		font-size:20px;
		padding:0 5px;
		transition:all 0.4s;
}
.soc-icon a:hover{
	color:#ff3c20;
}
.article-body .blockquote{
		border-color:#232f3e;
}
.article-body .blockquote p{
		font-size:20px;
		line-height:1.5;
}
.article-body .blockquote span{
		font-weight:700;
		color:#ff3c20;
		font-size:20px;
}
/*video*/
.videoIframe {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: transparent;
}
.videoPoster {
  position: absolute;
  top: 0;
  right: 0;
  left: 0;
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  cursor: pointer;
  border: 0;
  outline: none;
  background-image:url(../img/blog/blog-2.jpg);
  background-position: 50% 50%;
  background-size: 100% 100%;
  background-size: cover;
  overflow: hidden;
  opacity: 1;
  -webkit-transition: opacity 800ms, height 0s;
  -moz-transition: opacity 800ms, height 0s;
  transition: opacity 800ms, height 0s;
  -webkit-transition-delay: 0s, 0s;
  -moz-transition-delay: 0s, 0s;
  transition-delay: 0s, 0s;
}
.videoPoster i {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 80px;
  height: 80px;
  margin: -40px 0 0 -40px;
  border: 5px solid #fff;
  border-radius: 100%;
  -webkit-transition: border-color 300ms;
  -moz-transition: border-color 300ms;
  transition: all 300ms;
  color:#fff;
  font-size:40px;
  line-height:72px;
}
.videoPoster:hover i, .videoPoster:focus i {
  border-color: #ff3c20;
  color:#ff3c20;
}
.videoWrapperActive .videoPoster {
  opacity: 0;
  height: 0;
  -webkit-transition-delay: 0s, 800ms;
  -moz-transition-delay: 0s, 800ms;
  transition-delay: 0s, 800ms;
}
.videoWrapper {
  position: relative;
  width: 100%;
 	min-height:330px;
  background-color: #000;
}
.page-row{
		border-top:2px solid #000;
		padding-top:20px;
}
.page-row a{
		display:inline-block;
		font-size:16px;
		font-weight:700;
		color:#262626;
		padding:16px 26px;
		border:1px solid #d1d1d1;
		transition:all .3s;
		text-transform:uppercase;
		margin-right:6px;
}
.page-row a:hover{
		background-color:#ff3c20;
		border-color:#ff3c20;
		color:#fff;
}
/*Side-bar*/
.blog-main .side-bar{
		padding-right:0;
}
.side-bar .search{
		margin-top:0;
		position:relative;
}
.side-bar .search input{
		border:none;
		background-color:#f9f9f9;
}
.side-bar .search .round{
		right:10px;
		background-color:#232f3e;
}
.side-bar .search .round:hover{
	background-color:#ff3c20;
}
.side-head{
		margin-top:35px;
		border:1px solid #f2f2f2;
}
.side-head h2{
		padding:15px 0 15px 15px;
		color:#fff;
		line-height:1;
		background-color:#232f3e;
		font-size:22px;
		font-weight:700;
		text-transform:uppercase;
		margin:0;
}
.categories ul{
		list-style:none;
		padding:0;
		margin:0;
}
.side-bar .categories ul li{
		border-bottom:1px solid #f2f2f2;
		padding:12px 15px;
}
.side-bar .categories ul{
	position:relative;
}
.blog .menu ul.navbar-nav.navbar-left{
	margin-left:0;
}
.blog .navbar-collapse{
	padding-left:0;
}
.categories ul li:last-child{
		border:none;
}
.categories ul li a{
		font-size:16px;
		font-weight:400;
		display:block;
		transition:all 0.4s;
}
.categories ul li a:hover{
	color:#ff3c20;
}
.categories ul li a span{
		float:right;
}
.post-list{
		padding:0 15px 0 140px;
		position:relative;
		min-height:85px;
		margin-top:20px;
}
.post-list img{
		position:absolute;
		left:15px;
}
.post-list h1{
		font-size:16px;
		font-weight:700;
		line-height:1.6;
		margin-top:0;
		margin-bottom:5px;
		transition:all 0.4s;
}
.post-list h1:hover{
	color:#ff3c20;
}
.post-list h3{
		font-size:14px;
		font-weight:400;
		line-height:1.3;
		margin:0;
}
.posts{
		padding-bottom:20px;
}
.soc-icon.side-head .soc-icon{
		padding:20px 15px;
}
/*Comment*/
.comment-box{
		margin-top:60px;
}
.comment-box h2{
		color:#ff5722;
		font-size:22px;
		font-weight:700;
		margin-top:0;
}
.comment-box .divider{
		margin:30px 0;
		height:1px;
		background-color: #f1f1f1;
}
.comment-1{
		position:relative;
		padding-left:140px;
		margin-top:30px;
		min-height:121px;
}
.comment-1 img{
		position:absolute;
		left:0;
}
.comment-1 h4{
		font-weight:700;
		font-size:20px;
		color:#333;
		display:inline;
}
.comment-1 a{
		color:#ff361d;
		text-decoration:none;
		transition:all 0.4s;
}
.comment-1 a:hover{
		color:#ff361d;
}
.comment-1 span{
		font-size:14px;
		display:inline-block;
}
.comment-1 font{
		font-size:14px;
}
.comment-1 p{
		margin-top:10px;
		font-size:15px;
		font-weight:500;
		line-height:22px;
}
.comment-2{
		position:relative;
		padding-left:200px;
		margin-top:30px;
		min-height:121px;
}
.comment-2 a{
		color:#ff361d;
		text-decoration:none;
		transition:all 0.4s;
}
.comment-2 a:hover{
		color:#ff361d;
}
.comment-2 img{
		position:absolute;
		left:57px;
}
.comment-2 h4{
		font-weight:700;
		font-size:20px;
		color:#333;
		display:inline;
}
.comment-2 span{
		font-size:14px;
		display:inline-block;
}
.comment-2 font{
		font-size:14px;
}
.comment-2 p{
		margin-top:10px;
		font-size:15px;
		font-weight:500;
		line-height:22px;
}
.leave-comt h2{
		color:#ff361d;
		font-size:22px;
		font-weight:700;
		margin-top:40px;
		margin-bottom:5px;
}
.leave-comt p{
		display:inline-block;
		font-weight:400;
		font-size:16px;
}
.leave-comt input{
		width:100%;
		background-color:#f9f9f9;
		border:none;
		height:50px;
		line-height:50px;
		border-radius:50px;
		text-indent:20px;
		color:#b1b1b1;
		font-weight:400;
		margin-top:25px;
}
.leave-comt textarea{
		width:100%;
		background-color:#f9f9f9;
		border:none;
		min-height:150px;
		line-height:1.3;
		padding:20px;
		border-radius:40px;
		text-indent:20px;
		color:#b1b1b1;
		font-weight:400;
		margin-top:25px;
}
.leave-comt .more-btn{
		background-color:#ff3c20;
		color:#fff;
		padding:16px 40px;
		margin-top:25px;
}
@media (min-width:320px) and (max-width:540px){
.comment-1{
		padding-left:0px;
		text-align:center;
}
.comment-2{
		padding-left:0px;
		text-align:center;
}
.comment-1 img{
		display:inline-block;
		position:relative;
}
.comment-1 h4{
		display:block;
}
.comment-2{
		padding-left:0px;
		text-align:center;
}
.comment-2 img{
		display:inline-block;
		position:relative;
		left:0;
}
.comment-2 h4{
		display:block;
}
}	
/*Media-queries*/
@media (min-width:320px) and (max-width:480px){
.article-body h3{
		margin-top:20px;
}
.article-body h2,.article-body h4 i{
		font-size:14px;
}
.article-body h4{
		font-size:12px;
		display:block;
}
.article-body p{
		font-size:12px;
}
.article-footer .comt-like,.article-footer .soc-icon{
		float:none;
		text-align:center;
}
.comt-like h4:last-child{
		margin:0;
}
.videoWrapper{
		min-height:250px;
}
.type-post{
		width:35px;
		height:35px;
		line-height:35px;
}
.type-post img{
		width:20px;
}
.page-row{
		text-align:center;
}
.page-row a {
    display: inline-block;
    font-size: 14px;
    padding: 12px 15px;
	margin-right:0;
}
.blog-main .side-bar{
		padding-top:60px;
}
.blog-main .side-bar{
	margin-top:0;
	padding-left:0;
}
.post-list{
		padding-left:105px;
		min-height:61px;
}
.post-list h1{
		font-size:13px;
}
.post-list img{
		width:80px;
}
.post-list h3{
		font-size:11px;
}
.article-body img{
		margin-bottom:20px;
}
.article-body .blockquote p{
		font-size:15px;
}
.article-body .col-sm-6{
		padding:0;
}
.leave-comt p{
		font-size:14px;
}
.header-main h2{
	font-size:36px;
}
.show-product .product-top-bar,.show-product.col-md-9{
		padding:0;
}
.blog-main{
	padding:60px 15px;
}
.blog-main .col-md-8{
	padding:0;
}
}
@media (min-width:481px) and (max-width:767px){
.article-body h3{
		margin-top:25px;
}
.article-body h2,.comt-like h4 i{
		font-size:15px;
}
.article-body h4,.comt-like h4{
		font-size:12px;
}
.article-body p{
		font-size:12px;
}
.type-post{
		width:35px;
		height:35px;
		line-height:35px;
}
.type-post img{
		width:20px;
}
.blog-main .side-bar{
		padding-right:0px;
		padding-top:60px;
		padding-left:0;
}
.article-body img{
		margin-bottom:20px;
}
.article-body .blockquote p{
		font-size:16px;
}
.article-body .col-sm-6{
		padding:0;
}
.product-top-bar ul li:first-child{
		margin-bottom:20px;
		display:block;
		float:none;
}
.product-top-bar ul .pull-right li:first-child{
		float:left;
}
.show-product .product-top-bar{
		padding:0;
}
.product-top-bar ul li {
    padding-right: 17px;
}
.blog-main .col-md-8{
	padding:0;
}
.banner-img img{
	width:100%;
}
.show-product.col-md-9{
	padding:0;
}
}
@media (min-width:768px) and (max-width:991px){
.blog-main .col-md-8{
	padding:0;
}
.banner-img img{
	margin:0 auto;
}
.show-product.col-md-9{
	padding:0;
}
}
@media (min-width:992px) and (max-width:1199px){
.post-list{
		padding-left:105px;
		min-height:61px;
}
.post-list h1{
		font-size:13px;
		line-height:1.2;
}
.post-list img{
		width:80px;
}
.post-list h3{
		font-size:11px;
}
}

/*contact-page*/
.contact-page .header-main{
		background-image:url(../img/inner-page/contact-head.jpg);
}
.contact-page .menu ul.navbar-nav.navbar-left{
	margin-left:0;
}
.contact-page .navbar-collapse{
	padding-left:0;
}
.contact-main .contact-info h3{
		font-size:30px;
		font-weight:400;
		margin-top:0;
}
.contact-main .contact-info h3 i{
	color:#ff3c20;
	font-size:40px;
}
.contact-main .contact-info p{
		font-size:16px;
		font-weight:400;
		color:#999999;
		line-height:1.6;
}
.contact-left label{
		font-size:16px;
		font-weight:400;
		margin-top:15px;
}
.contact-left input{
		width:100%;
		background-color:transparent;
		border:1px solid #eeeeee;
		font-size:16px;
		font-weight:400;
		text-indent:10px;
		height:50px;
		line-height:50px;
}
.contact-left textarea{
		width:100%;
		background-color:transparent;
		border:1px solid #eeeeee;
		font-size:16px;
		font-weight:400;
		text-indent:10px;
		padding-top:15px;
		min-height:150px;
}
.contact-right .contact{
		padding-left:40px;
		position:relative;
		padding-top:15px;		
}
.contact-right .contact i{
		position:absolute;
		left:0;
}
.contact-right .contact-info p{
		padding-left:0;
		color:#282828;
}
.contact-right .follow-us h2{
		color:#282828;
		display:inline-block;
		margin-right:25px;
}
.contact-right .follow{
		display:inline-block;
}
/*map-sec*/
.map-head{
		background-color:#ff3c20;
		padding:45px 0;
		position:relative;
}
.map-head span{
		position:absolute;
		height:60px;
		width:60px;
		left:50%;
		bottom:-30px;
		margin-left:-30px;
		background-color:#ff3c20;
		transform:rotate(45deg);
		z-index:1;
}
.map-head h2{
		font-size:30px;
		color:#fff;
		font-weight:700;
		margin:0;
		text-transform:uppercase;
		position:relative;
		z-index:3;
}
.contact-page #map{
		width:100%;
		height:520px;
}
.contact-page_1 .contact-right{
		background-color:#232f3e;
		padding:80px 0px 80px 50px;
}
.contact-page_1  .contact-main{
		padding:0;
		position:relative;
}
.contact-page_1 .contact-main .col-md-6{
		width:45%;
		padding-right:50px;
}
.contact-page_1 .contact-main .col-md-5{
		    width: 46.66666667%;
			position:absolute;
			top:0;
			right:0;
			height:100%;
			padding-right:8.33333333%;
}
.contact-page_1 .contact-main .contact-right .contact-info h3,.contact-page_1 .contact-right .contact-info p,.contact-page_1  .contact-right .follow-us h2{
		color:#fff;
}
.contact-page .shp-btn{
	margin-top:15px;
}
.contact-page .contact-left .shp-btn i{
	padding-left:15px;
	font-size:22px;
}
@media (min-width:320px) and (max-width:480px){
.contact-main .contact-info h3{
		font-size:20px;
}
.contact-main .contact-info i{
	margin-top:-5px;
}
.contact-main .contact-info h3 i{
	font-size:36px;
}
.contact-page_1 .contact-main .col-md-5{
		    width: 100%;
			position:relative;
			top:0;
			right:0;
			height:100%;
			padding-right:15px;
}
.contact-page_1 .contact-right{
		padding:80px 0px 80px 15px;
}
.contact-page_1 .contact-main .col-md-6{
		width:100%;
		padding:80px 15px;
}
.contact-page .contact-main .contact-info p{
	font-size:14px;
}
.special-offer ul.nav-tabs li{
	padding:0 !important;
}
.header-main h2{
	font-size:36px;
}
.contact-main .contact-info h3:after{
	top:auto;
}
.contact-right.mt-30{
	margin-top:60px;
}
.contact-right{
	margin-top:60px;
}
.contact-page_1 .contact-right {
    margin-top: 0px;
}
.contact-left .text-right{
	text-align:center !important;
}
.col-md-6.contact-left,.col-md-6.contact-right{
	padding:0;
}
}
@media (min-width:481px) and (max-width:767px){
 .contact-main .contact-info h3{
	font-size:24px;	
}
.contact-right.mt-30{
	margin-top:50px;
}
.contact-right{
	margin-top:60px;
}
.contact-page_1 .contact-right {
    margin-top: 0px;
}
.contact-left .text-right{
	text-align:center !important;
}
}
@media (min-width:768px) and (max-width:991px){
.contact-right{
	margin-top:50px;
}	
.letter h2 {
    font-size: 40px;
}
.footer-sec.padd-60{
		padding-top:20px;
}
.best-seller .best-product {
		padding-top:0;
}
.blog-main .side-bar{
	padding-top:60px;
	padding-left:0;
}
.contact-right.mt-30{
	margin-top:50px;	
}
.contact-page_1 .contact-right {
    margin-top: 0px;
}
}
@media (min-width:481px) and (max-width:991px){
.contact-page_1 .contact-main .col-md-5{
		    width: 100%;
			position:relative;
			top:0;
			right:0;
			height:100%;
			padding-right:15px;
}
.contact-page_1 .contact-right{
		padding:80px 0px 80px 15px;
}
.contact-page_1 .contact-main .col-md-6{
		width:100%;
		padding:80px 15px;
}

.contact-main .contact-info i{
	margin-top:-5px;
}
.contact-main .pull-right{
	float:right !important;
}
.contact-main .contact-info h3:after{
	top:auto;
}
.col-md-6.contact-left,.col-md-6.contact-right{
	padding:0;
}
}
@media (min-width:992px) and (max-width:1199px){
.contact-page_1 .contact-main .col-md-6{	
		margin-left:4.33333333%;
		width: 48%;
    	padding-right: 30px;
}
.contact-page_1 .contact-main .col-md-5{
		width:48.33333334%;
		padding-right:15px;
}
.contact-page_1 .contact-right{
		padding:80px 0px 80px 30px;
}
.contact-main .contact-info p{
		font-size:15px;
}
.contact-main .contact-info h3:after{
	top:auto;
}
.article-body .blockquote p{
	font-size:18px;
}
}

/*Product-grid-page*/
.mt-40{
	/* margin-top:40px; */
}
.grid-page .header-main{
		background-image:url(../img/grid/grid-head.jpg);
}
.grid-page .menu ul.navbar-nav.navbar-left{
	margin-left:0;
}
.grid-page .grid-list .sale p{
	min-height:44px !important;
	color: #5d5d5d;
    font-weight: 600;
}
.grid-list .product-top-bar{
		margin-bottom:30px;
}
.special-offer .main-side-bar{
		padding-left:0;
}
.icon-plus{
	width:20px;
	height:20px;
	border:2px solid #ababab;
	border-radius:50%;
	display:inline-block;
	float:right;	
	text-align:center;
}
.icon-plus i{
	font-size:10px;
	line-height:16px;
	color:#ababab;
	display:block;
	font-weight:700;
}
.main-side-bar ul{
		list-style:none;
		padding-left:0;
		margin-bottom:40px;
		margin-top:10px;
}
.main-side-bar ul li ul li label {
    font-size: 14px;
    font-weight: 400;
    line-height: 1;
    display: block;
    margin: 0;
	transition:all 0.5s ease-in-out;
}
.main-side-bar ul li ul li label:hover{
	color:#ff3c20;
}
.main-side-bar ul.shop-size li ul li {
    padding: 15px 0;
    border-bottom: 1px solid #e8e8e8;
}
.main-side-bar ul a.main-a{
		position:relative;
		padding-bottom:12px;
		display:block;
		border-bottom:1px solid #e8e8e8;
		font-size:20px;
		font-weight:700;
		text-transform:uppercase;
}
.main-side-bar ul a.main-a:after{
		content: "";
		width: 100px;
		height: 4px;
		background-color: #ff3c20;
		display: block;
		position: absolute;
		bottom: -2px;
}
.main-side-bar ul li ul li a{
		font-size:14px;
		font-weight:400;
		line-height:2;
		border-bottom:1px solid #e8e8e8;
		display:block;
		padding:10px 0;
		transition: all 0.5s ease-in-out;
}
.main-side-bar ul li ul li a:hover{
	color:#ff3c20;	
}
.main-side-bar ul.shop-size li ul li a{
	padding:15px 0;	
}
.main-side-bar ul.shop-size [type="checkbox"]:not(:checked) + label:before,
.main-side-bar ul.shop-size [type="checkbox"]:checked + label:before{
	width:1.3em;
	height:1.3em;	
	top:-3px;
	border:2px solid #eee;
	box-shadow:none;
	left:1px;
}
.main-side-bar ul.shop-size [type="checkbox"]:not(:checked) + label, 
.main-side-bar ul.shop-size  [type="checkbox"]:checked + label{
	padding-left:2.2em;
}
.main-side-bar ul.shop-size [type="checkbox"]:not(:checked) + label:after, 
.main-side-bar ul.shop-size [type="checkbox"]:checked + label:after{
	font-size:1em;
	top:0;	
	color:#232f3e;
	left:5px;	
}
.main-side-bar ul li ul li a span{
		float:right;
}
.main-side-bar ul li ul li a label{
		display:block;
		line-height:1;
		margin:0;
		font-weight:400;
}
.main-side-bar .range-text h3{
		display:inline-block;
		font-size:14px;
}
.range-text h3 span {
    color: #FF734F;
}
.main-side-bar .btn-custom{
		background-color:#232f3e;
		font-size:15px;
		font-weight:700;
		padding:10px 30px;
		color:#fff;
		border:none;
		float:right;
		margin-top:8px;
}
.main-side-bar .price-range{
		padding-top:15px;
}
.price-value{
	margin-top:15px;
}
.range-text{
	margin-top:15px;
}
.ui-slider {
  margin-top:20px;
}
.ui-slider-horizontal .ui-slider-range {
  top: 0;
  height: 100%;
}
.ui-slider-horizontal .ui-slider-handle {
  top: -5px;
  margin-left: -10px;
}
.ui-state-default,
.ui-widget-content .ui-state-default {
  border: 1px solid #c5c5c5;
  background: #695D46;
  font-weight: normal;
  color: #454545;
}
.ui-slider .ui-slider-range {
  position: absolute;
  z-index: 1;
  display: block;
  border: 0;
  background-position: 0 0;
}
.ui-slider .ui-slider-handle {
  position: absolute;
  z-index: 2;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  cursor: pointer;
  -ms-touch-action: none;
  touch-action: none;
  outline: 0;
}
.ui-widget-header {
  border: 1px solid #dddddd;
  background: #FFC107;
  color: #333333;
  font-weight: bold;
}
.new-list{
		position:relative;
		padding-left:90px;
		min-height:90px;
		border-bottom:1px solid #e8e8e8;
		padding:20px 0 25px 90px;
}
.new-list img{
		position:absolute;
		left:0;
}
.new-list h2{
		font-size:16px;
		font-weight:700;
		line-height:1.6;
		margin-top:0;
		margin-bottom:5px;
		transition:all 0.5s ease-in-out;
}
.new-list:hover h2{
	color:#ff3c20;
}
.new-list h3{
		font-size:24px;
		font-weight:700;
		color:#ff3c20;
		line-height:1;
		margin-top:0;
		margin-bottom:5px;
}
.new-list h3 span{
		font-size:16px;
		font-weight:400;
		color:#ababab;
}
.grid-page .page-row{
		margin-top:40px;
}
.page-row p{
		font-weight:400;
		font-size:15px;
		display:inline-block;
		margin-top:10px;
}
.grid-list .col-md-4{
	padding:0 7px;
}
.grid-page .grid-list .sale p{
	padding:0 15px;
}
.grid-page .main-side-bar .sub-menu a i{
	float:none;
}
/*featured-top-rated-popular-product-sec*/
.top-rated-product h3{
	font-size:26px;
	border-bottom:1px solid #ededed !important;
	padding-bottom:10px;
	position:relative;
}
.top-rated-product.pt-60,.top-rated-product.pb-60{
	padding-top:20px;
	padding-bottom:20px;
}
.top-rated-product h3:after{
	width:150px;
	content:"";
	height:4px;
	background-color:#ff3c20;
	display:block;
	position:absolute;
	bottom: -2px;
}
.popular-product i{
	display:inline-block;
	color:#eec627;
}
.popular-product i.empty-star{
	color:#adadad;
}
.popular-product span.stock{
	float:right;
	margin-top:8px;
}
.popular-product span.stock,
.popular-product span.stock i {
	color:#49b72c;
	font-weight:600;
}
.popular-product span.out-stock{
	color:#b1b1b1;
	font-weight:600;
	float:right;
	margin-top:8px;
}
.quick-view i{
	color:#5d5d5d;
}
.popular-product i:nth-child(1){
	padding-left:10px;
}
.popular-product p{
	margin-bottom:0;
	font-size:16px;
	color:#ababab;
	font-weight:normal;
	display:block;
	min-height:0;
}
.popular-product h2{
	font-size:18px;
	font-weight:700;
	padding-left:10px;
	margin-top:27px;
	margin-bottom:5px;
}
.popular-product img{
	float:left;
	padding-top:0;
	margin-right:15px;
	width:auto;
}
.popular-product h4 {
    display: inline-block;
    font-size: 24px;
    color: #ff3c20;
    font-weight: 700;
    margin-bottom: 00px;
    float: left;
}
.popular-product{
	padding:20px 0;
	position:relative;
	border:none;
}
.popular-product p{
	min-height:0 !important;
}
.popular-product h5{
	display:inline-block;
	text-decoration:line-through;
	color:#ababab;
	font-size:16px;
	margin-top:15px;
	margin-left:10px;
}
.popular-product:hover{
	box-shadow:none;
	transition:all ease-in-out 0.3s;
}
.popular-product .icon-hover{
	bottom:-32%;
}
.popular-product:nth-child(3){
	margin-top:20px;
}
.sale.popular-product{
	border-bottom:1px solid #ededed;
	position:relative;
	transition:all 0.4s;
}
.sale.popular-product.connect{
	border:none;
}
.sale.popular-product:hover > .hover-product{
	opacity:1;
	display:block;
}
.hover-product{
	position:absolute;
	background-color:rgba(275,79,54,.9);
	box-shadow:0px 0px 25px rgba(0,0,0,.4);
	width:100%;
	height:100%;
	top:0;
	left:0;
	text-align:center;
	opacity:0;
	animation:heart .5s;
	display:none;
}
@keyframes heart{
		0%{
				opacity:0;
				transform:translateY(10px);
		}
		100%{
				opacity:1;
				transform:translateY(0);
		}
}

.hover-icon{
	display:inline-block;
	width:46px;
	height:46px;
	border:1px solid #fff;
	text-align:center;
	border-radius:50%;
	margin-left:8px;
	transition:all 0.4s;
}
.hover-product-body{
	position:absolute;
	top:50%;
	left:50%;
	transform:translateY(-50%) translateX(-50%);
}
.hover-icon.heart{
	margin-left:0;
}
.hover-icon a i{
	display:block;
	line-height:46px;
	font-size:20px;
	font-weight:600;
	color:#fff;
	padding-left:0 !important;
	transition:all 0.4s;
}
.hover-icon:hover{
	background-color:#fff;
}
.hover-icon a i:hover{
	color:#ff3c20;
}
.sale.popular-product img{
	padding-bottom:10px;
}
.icon-circle{
	width:40px;
	height:40px;
	border-radius:50%;
	display:inline-block;
	background-color:#ff3c20;
	margin-top:10px;

	transition:all 0.3s;
	margin-left:10px;
	border:1px solid transparent;
}
.icon-circle i{
	text-align:center;
	line-height:40px;
	color:#fff;
	font-weight:normal;
	font-size:20px;
	padding-left:0 !important;
	transition:all ease-in-out 0.3s;
}
.popular-product:hover > .icon-hover{
	opacity:1;
	box-shadow:0px 10px 15px rgba(0,0,0,.1), -1em 0 0.4em rgba(0,0,0,0);
}
.icon-hover:hover{
	display:block;	
}
.top-rated-product .owl-carousel .owl-item img {
    width: auto;
    margin-right: 15px;
}
.top-rated-product .tranding .owl-prev,.top-rated-product .tranding .owl-next{
	top:-37px;	
	right:0;
	left:auto;
	background-color:#fff;
	border:1px solid #efeeee;
	transition:all 0.4s;
}
.top-rated-product .tranding .owl-prev:hover,
.top-rated-product .tranding .owl-next:hover{
	background-color:#ff3c20;
	border-color:#ff3c20;
}	
.top-rated-product .tranding .owl-prev:hover .fa,
.top-rated-product .tranding .owl-next:hover .fa{
	color:#fff !important;	
}
.top-rated-product .tranding .owl-prev{
	right:47px;
}
.top-rated-product .tranding .thumbnail{
	margin-bottom:0;
}
.sub-menu a i{
	float:right;
}
@media (min-width:320px) and (max-width:480px){	
.article-footer .soc-icon{
	margin-top:10px;
}
.special-offer .main-side-bar{
	padding-left:15px;
}
.phone{
	/* margin-top:40px; */
	padding-right:15px;
}
.new-list img{
	bottom:-1px;
}
.hover-icon{
	width:36px;
	height:36px;
	margin-left: 8px;
}
.hover-icon a i{
	font-size:16px;
	line-height:36px;
}
.popular-product h2{
	font-size:16px;
}
.new-list h2{
	font-size:15px;
}
.top-rated-product h3 {
    font-size: 20px;
}
.discount-banner.padd-40{
	padding-bottom:0;
}
.padd-60{
	padding:30px 0;
}
.top-rated-product.col-md-4{
	padding:0;
}
}
@media (min-width:481px) and (max-width:767px){	
.grid-page .grid-list .sale{
	width:50%;
	float:left;
}
.special-offer .main-side-bar{
	padding-left:15px;
}
.top-rated-product h3 {
    font-size: 22px;
}
.top-rated-product.col-md-4{
	padding:0;
}
}
@media (min-width:768px) and (max-width:991px){	
.product-top-bar ul li{
	padding-right:18px;
}
.special-offer .main-side-bar{
	padding-left:15px;
	margin-top:60px;
}
.product-list-labal{
	left:31%;
}
.top-rated .col-md-4 {
   	width: 100%;
}
.top-rated-product h3 {
    font-size: 22px;
}
.top-rated-product.col-md-4{
	padding:0;
}
}
@media (min-width:992px) and (max-width:1199px){	
.new-list h2{
	font-size:14px;
}
.grid-page .product-body p{
	font-size:16px;
}
.hover-icon {
  width: 40px;
	height: 40px;
	margin-left: 8px;
}
.hover-icon a i{
  font-size: 20px;
	line-height: 40px;
}
.product-list-labal{
	left:32%;
}
.top-rated-product h3 {
    font-size: 24px;
}
}
@media (min-width:1200px) and (max-width:1340px){

.detail-page .tranding .owl-prev{
	left:1px !important;
}
.detail-page .tranding .owl-next{
	right:1px !important;
}
}

/*error-page*/
.main-error{
		padding:80px 0;
}
.error-page .menu{
	border-bottom:1px solid #efeeee;
}
.error-page .main-error .search-round{
	transform:translateY(-50%);
	background-color:#ff3c20;
	margin-top:0;
	right:10px;
}	
.error-page .search{
	position:relative;
	padding:0;
}
.search.col-md-6{
	padding:0;
}
.error-page .menu ul.navbar-nav.navbar-left{
	margin-left:0;
}
.main-error h2{
		font-size:22px;
		font-weight:700;
		text-transform:uppercase;
		color:#ff3c20;
		letter-spacing:10px;
		margin-top:0;
		margin-bottom:25px;
}
.main-error img{
		display:inline-block;
}
.main-error .search input{
		border:1px solid #eceaea;
}
.main-error h3{
		font-size:50px;
		font-weight:700;
		margin-top:40px;
}
.main-error p{
		font-size:15px;
		font-weight:700;
		margin:20px 0 30px;
}
.main-error a.more-btn{
		font-size:15px;
		font-weight:700;
		border:2px solid #ff3c20;
		transition:all 0.4s;
}
.main-error a.more-btn:hover{
	background-color:#ff3c20;
	color:#fff;
}
@media (min-width:481px)  and (max-width:544px){
.error-page .main-error .search-round{
	bottom:239px;
}
}
@media (min-width:545px) and (max-width:767px){	
.error-page .main-error .search-round{
	bottom:220px;
}

/* .header-right{margin-right:80px;} */

}
@media (min-width:320px) and (max-width:480px){
.main-error h2{
		font-size:13px;
		letter-spacing:5px;
}
.main-error{
		padding:60px 0;
}
.error-page .main-error .search-round{
	bottom:240px;
}
.error-page .menu .navbar-header,.page-row .pull-right{
	float:none;
}
}
@media (min-width:481px) and (max-width:767px){
.main-error h2{
		letter-spacing:9px;
		font-size:21px;
}
.error-page .menu .navbar-header{
	float:none;
}
.main-error{
		padding:60px 0;
}
}
@media (min-width:768px) and (max-width:992px){
.main-error{
		padding:60px 0;
}
}




/*Product-detail-Page*/
.detail-left{
		
		position:relative;
		
}
.detail-left .carousel-control.right{
		background-image:none;
}
.detail-left .zoom-btn{
		position:absolute;
		display:inline-block;
		right:20px;
		width:40px;
		height:40px;
		border-radius:50%;
		background-color:#fff;
		color:#d5d5d5;
		line-height:40px;
		text-align:center;
		bottom:175px;
		z-index:6;
}
.detail-left ul li img,.detail-left .carousel .item img {
    display:inline-block;
}
.detail-left .carousel-indicators {
    bottom: 0;
    left: 0;
    margin-left: 5px;
    width: 100%;
}
/* Indicators list style */
.detail-left .carousel-indicators li {
    border: medium none;
    border-radius: 0;
    float: left;
    height: 90px;
    margin-bottom: 5px;
    margin-left: 0;
    margin-right: 5px !important;
    margin-top: 0;
    width: 100px;
}
/* Indicators images style */
.detail-left .carousel-indicators img {
    border: 2px solid #FFFFFF;
    float: left;
}
/* Indicators active image style */
.detail-left .carousel-indicators{
		position:relative;
		bottom: auto;
}
.detail-left .carousel-indicators:after{
	content:'';
	clear:both;
	display:block;
}
.detail-left .carousel-control{
		top:50%;
		transform:translateY(-50%);
		height:inherit;
		bottom: auto;
}
.detail-left .carousel-control .fa{
		color:#000;
		font-size:50px;
}
.detail-left .carousel-indicators .active img {
    border: 2px solid #428BCA;
    opacity: 0.7;
}
.detail-left .lSSlideOuter .lSPager.lSGallery img{
	width:100%;
}
.detail-page .coupon{
	padding:14px 35px;
	float:left;
}
.detail-page .menu ul.navbar-nav.navbar-left{
	margin-left:0;
}
.detail-page .navbar-collapse{
	padding-left:0;
}
.new-label{
		position:absolute;
		background-color:#ff3c20;
		font-size:13px;
		font-weight:700;
		color:#fff;
		padding:5px 8px;
		border-radius:30px;
		top:20px;
		left:20px;
}
.color-var{
		list-style:none;
		padding-left:0;
		position:absolute;
		right:20px;
		top:20px;
		z-index:50;
}
.color-var li a{
		display:inline-block;
		width:25px;
		height:25px;
		border:1px solid #ececec;
		border-radius:50%;
		font-size:15px;
		text-align:center;
		margin-bottom:8px;
}
.color-var li:nth-child(1) a{
		background-color:#222222;
}
.color-var li:nth-child(2) a{
		background-color:#f7c6bf;
}
.color-var li:nth-child(3) a{
		background-color:#fff;
}
.color-var li:nth-child(4) a{
		background-color:#c6c6c6;
}
.color-var li:nth-child(5) a{
		background-color:#d03131;
}
.color-var li a.active i{
		opacity:1;
}
.color-var li a i{
		line-height:25px;
		color:#fff;
		opacity:0;
}
		
.detail-top h1{
		margin-top:0;
		font-size:30px;
		font-weight:700;
		margin-bottom:7px;
}
.detail-top h6{
		margin-top:0;
		font-size:16px;
		font-weight:400;
		color:#ababab;
}
.detail-top .rating{
		margin-top:7px;
}
.detail-top .rating i{
	color:#eec627
}
.detail-top .rating i{
		margin-right:8px;
		font-size:16px;
}
.detail-top .rating span{
		color:#ababab;
		font-size:16px;
		font-weight:400;
}
.detail-top .rating a{
		color:#ababab;
		font-size:16px;
		font-weight:400;
		font-style:italic;
		float:right;
}
.rate{
	margin-top:15px;
}
.rate h2{
		font-size:34px;
		font-weight:700;
		color:#ff3c20;
		margin-top:8px;
		display:inline-block;
		vertical-align: middle;
		margin-right:15px;
		line-height:1;
}
.rate h2 del{
		font-size:16px;
		font-weight:400;
		color:#ababab;
		margin-left:8px;
		vertical-align:inherit;
		display:inline-block;
		margin-top:-3px;
}
label.offer-label{
	text-align:center;
	line-height:26px;
	height:26px;
	padding:0 12px;
	border-radius:30px;
	font-weight:700;
	color:#fff;
	background-color:#232f3e;
	font-size:13px;
	z-index:1;
}
.rate span{
		float:right;
		font-size:16px;
		color:#49b72c;
		margin-top:15px;
}
.rate span i{
		font-size:18px;
}
.detail-right ul.detail{
		margin-top:15px;
}
.detail-right ul.detail.feature{
		margin-top:25px;
}
.detail-right ul.detail,.detail-right ul{
		list-style:none;
		padding-left:0;
}
.detail-right ul.detail p,.detail-right ul.detail.feature ul li{
		font-size:16px;
		line-height:1.6;
		font-weight:400;
		color:#999;
}
.detail-right ul.detail li a.main-a{
		font-weight:700;
		color:#313131;
		text-transform:uppercase;
		margin-top:0;
		padding-bottom:12px;
		border-bottom:1px solid #f0f0f0;
		display:block;
		margin-bottom:15px;
}
.detail-right ul.detail.feature ul{
		width:50%;
		float:left;
}
.detail-right ul.detail.feature ul li{
		padding-left:15px;
		position:relative;
		margin-bottom: 8px;
}
.detail-right ul.detail.feature ul li i{
		position:absolute;
		left:0;
		color:#ff3c20;
		font-size:20px;
}
.detail-row p{
		font-size:16px;
		font-weight:700;
		display:inline-block;
}
.detail-row p span{
	color:#5d5d5d;
}
ul.size{
		margin-left:30px;
}
ul.size,ul.size li{
		display:inline-block;
}
ul.size li.active a,ul.size li a:hover{
		background-color:#232f3e;
		color:#fff;
		border:1px solid #232f3e;
}
ul.size li a{
		display:inline-block;
		padding:5px 10px;
		border:1px solid #f2f2f2;
		color:#282828;
		font-size:16px;
		font-weight:400;
		text-transform:uppercase;
		margin-left:15px;
		border-radius:45px;
		transition:all .3s;
}
.detail-btm{
		margin-top:20px;
}
.blog-detail .menu ul.navbar-nav.navbar-left{
	margin-left:0;
}
.blog-detail .navbar-collapse{
	padding-left:0;
}
/*Quantity-box*/
.quantity-box{
		margin-top:15px;
		margin-bottom:22px;
}
.quantity-box .input--filled{
		margin-top:5px;
		float:left;
}
.quantity-box .input--filled input{
		border:1px solid #e7e7e7;
		width:66px;
		text-align:center;
		height:46px;
		float:left;
}
.quantity-box .input--filled button {
    border:1px solid #e7e7e7;
	background-color:transparent;
	font-size:14px;
	height:46px;
	width:42px;
	text-align:center;
}
.quantity-box .input--filled button:hover{
	color:#ff3c20;
}
.quantity-box .input--filled button.sub{
		margin-right:-1px;
		float:left;
		transition:all 0.4s;
}
.quantity-box .input--filled button.add{
		margin-left:-1px;
		float:left;
		transition:all 0.4s;
}
.quantity-box .input--filled button#add:hover i,
.quantity-box .input--filled button#sub:hover i{
	color:#ff3c20;
}
.action-icon{
		display: inline-block;
		
		margin-top:15px;
}
.action-icon a{
		font-size:16px;
		font-weight:400;
		color:#dbdbdb;
		transition:all 0.3s;
		margin-left:15px;
		display:inline-block;
}
.action-icon a:hover{
	color:#ff3c20;
}
.action-icon a i{
		font-size:20px;
		margin-right:7px;
		color:#dbdbdb;
		transition:all 0.3s;
		vertical-align: middle;
}
.action-icon a:hover i{
		color:#ff3c20;
}
.quantity-box .sub{
		border-radius:30px 0 0 30px;
}
.quantity-box .add{
		border-radius: 0 30px 30px 0;
}
.detail-row .soc-icon{
		display:inline-block;
}
.detail-row .soc-icon a i{
		color:#868686;
}
/*detail-tab*/
.product-tab{
		border:1px solid #dcdcdc;
		position:relative;
		margin:50px 0;
}
.product-tab ul.nav-tabs{
		width:25%;
		float:left;
		border-right:1px solid #dcdcdc;
		position:absolute;
		height:100%;
		left:0;
		top:0;
		border-bottom:none;
}
.product-tab ul.nav-tabs li{
		display:block;
}
.product-tab ul.nav-tabs li a{
		font-size:16px;
		font-weight:700;
		color:#222222;

		padding:15px 0 15px 25px;
		border-bottom:1px solid #dcdcdc;
		border-left:5px solid transparent;
		transition:all .3s;
		margin:0;
		display:block !important;
}
.product-tab ul.nav-tabs li:hover a,.product-tab ul.nav-tabs li.active a{
		background-color:#efefef;
		border-left:5px solid #232f3e;
}		
.product-tab .tab-content{
		width:75%;
		float:left;
		margin-left:25%;
}
.product-tab  .tab-pane{
		padding:35px;
}
.detail-page .tab-pane p{
		font-size:16px;
		font-weight:400;
		line-height:1.6;
		color:#868686;
		margin-bottom:15px;
}
.detail-page .tab-pane p b{
		font-weight:700;
		color:#232f3e;		
}
.detail-page .tranding{
		padding:0;
}
.slider-head h3{
		position:relative;
		padding-bottom:12px;
		margin-top:0;
		font-size:30px;
		font-weight:400;
		border-bottom:1px solid #f2f2f2;
}
.slider-head h3:after {
    content: "";
    height: 4px;
    width: 160px;
    background-color: #ff3c20;
    display: block;
    position: absolute;
    bottom:-2px
}
.detail-page .owl-carousel .owl-item img{
		width:auto;
}
.detail-page .sale-body p{
		min-height:50px;
		color:#5d5d5d;
		font-weight:600;
		margin-bottom:5px;
}
.detail-page .tranding .owl-prev,.detail-page .tranding .owl-next{
	background-color:transparent;	
}
.detail-page .tranding .owl-prev .fa,.detail-page .tranding .owl-next .fa{
	font-size:66px;
	color:rgba(0,0,0,.3) !important;	
}
.detail-page .tranding .owl-prev:hover,.detail-page .tranding .owl-next:hover{
	background-color:transparent;	
}
.detail-page .sale h4{
	margin-top:0;
	padding-left:0;
}
.detail-page .container.padd-80{
		padding-bottom:0;
}
.product-wrapper{
  position: relative;
}
.image-zoom {
  position : absolute;
  left : 0;
  top : 0;
  bottom : 0;
  right : 0;
  opacity : 0.9;
  display : none;
  overflow : hidden;
  cursor:move;
}
.image-zoom img {

    position : absolute;
    top : 0;
    left : 0;
}
/*product-slider*/
/*product-body*/
.product{
	border:1px solid #f2f2f2;
	position:relative;
}
.product:hover{
	box-shadow: 0px 0px 20px 5px rgba(0,0,0,.1);
	transition:all ease-in-out 0.3s;	
}
.offer-discount{
	width:48px;
	position:absolute;
	text-align:center;
	float:right;
	margin-top:10px;
	line-height:23px;
	height:23px;
	top:0;
	right:15px;
	border-radius:30px;
	font-weight:700;
	color:#fff;
	background-color:#ff734e;
	font-size:11px;
	z-index:5;
}
.offer-discount.new{
	left:15px;
	background-color:#a7da64;
}
.offer-discount.out-stock{
	background-color:#f5f5f5;
	width:120px;
	color:#b3b3b3;
	font-size:14px;
}
.product-img{
	position:relative;
	padding:0px 0px 10px;
}
.product-img .product-href {
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    z-index:4;
}
.product-img img{
	position:relative;
	display:table;
	margin:0 auto;
	-webkit-transition: all 0.5s ease-out;
    -moz-transition: all 0.5s ease-out;
    -o-transition: all 0.5s ease-out;
    -ms-transition: all 0.5s ease-out;
    transition: all 0.5s ease-out;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
}
.product-img .img-overlay {
    position: absolute;
    opacity: 1;
    z-index: 2;
	left:50%;
	transform:translateX(-50%);
}
.product:hover .product-img .img-overlay{
	opacity:0;
}
.sale-heart-hover{
	position:absolute;
	right:15px;
	bottom:5px;
	opacity:0;
	transition:all 0.4s;
	z-index:5;
}
.sale-heart-hover i{
	color:#d5d5d5;
	font-size:22px;	
	transition:all 0.4s;
}
.sale-heart-hover i:hover{
	color:#ff3c20;
}
.product:hover .sale-heart-hover {
	opacity:1;
}
.product-body{
	position:relative;
	padding:15px 15px 0;
}
.product-body p{
	min-height:44px;
	font-weight:700;
	font-size: 17px;
	margin-bottom: 3px;
}
.product-body p a{
	color:#5d5d5d;
}
.product-body h4{
	display:inline-block;
	font-size:24px;
	color:#ff3c20;
	font-weight:700;
	margin-bottom:30px;
}
.product-body h5{
	display:inline-block;
	text-decoration:line-through;
	color:#ababab;
	font-size:16px;
}
.product-hover{
	position:absolute;	
	width:100%;
	right:0;
	bottom:-20px;
	text-align: right;
	padding-right:15px;
}
.product:hover .add-cart-hover{
	width:160px;
	border-radius:40px;
	transition:all 1s;
	-webkit-transition:all .4s;
	background-color:#000;
	box-shadow:0px 0px 20px rgb(239,64,43);
}
.add-cart-hover{
	width:40px;
	height:40px;
	border:2px solid #000;
	display:inline-block;
	border-radius:50%;
	transition:all .4s;
	-webkit-transition:all .4s;
	background-color:#fff;
	float:right;
	margin-left:5px;
	overflow:hidden;
	position:relative;
	padding-right:9px;
}
.add-cart-hover a{
	display:block;
}
.add-cart-hover i{
	line-height:36px;
	color:#ff3c20;
	transition:all .3s;
	-webkit-transition:all .3s;
	display:inline-block;
}
.product:hover .add-cart-hover i{
	color:#fff;
	font-size:16px;
	transform:rotate(360deg);
	-webkit-transform:rotate(360deg);
}
.add-cart-hover h6{
	display:none;
	transition:all 1s;
	font-size: 16px;
    text-transform: uppercase;
    margin: 0;
    color: #fff;
    font-weight: 700;
	margin-right:5px;
	position:absolute;
	left:15px;
	top:50%;
	transform:translateY(-50%);
}
.product:hover .add-cart-hover h6{
	animation: product-h6 1s;
	display:block;
}
@keyframes product-h6{
	0%{
				opacity:0;
	}
	100%{
				opacity:1;
	}
}
.quick-view{
	width:40px;
	height:40px;
	border-radius:50%;
	background-color:#f5f5f5;
	text-align:center;
	vertical-align:middle;
	display:none;
	transition:all .4s;
}
.quick-view:hover{
	background-color:#ff3c20;
	box-shadow:0px 0px 20px rgba(255,60,32,.7);
}
.quick-view:hover i{
	color:#fff;
}
.quick-view a{
	line-height:40px;
	font-size:20px;
	color:#5d5d5d;
	display:block;
	transition:all .4s;
}
.product:hover .quick-view{
	display:inline-block;
}

/*quick-modal*/
.quick-modal .modal-lg{
	width:1000px;
	max-height:90%;
	overflow:auto;
}
.quick-modal .coupon{
	padding:13px 30px;
	display:inline-block;
	margin-top:5px;
}
#thumbcarousel .thumb{
	width:25%;
	float:left;
}
.quick-modal .detail-left{
	background-color:transparent;
	padding:0;
}
.quick-modal .detail-left.col-md-5{
	padding:0;
}
.quick-modal .action-icon a{
	margin-left:6px;
}
.quick-modal .sub-menu a i{
	float:none;	
}
#thumbcarousel{
	margin-top:15px;
}
.quick-modal button.close{
	position:absolute;
	right: 15px;
    top: 0px;
    font-size: 48px;	
	z-index:5;
}
.quick-modal .rate h2{
	font-size:28px;
}
.quick-modal .rate h2 del{
	font-size:14px;
}
.quick-modal .detail-top h1{
	font-size:28px;	
}
.quick-modal .detail-left .carousel-control .fa{
	font-size:36px;
}
.quick-modal .carousel-control{
	left:-30px;
}
.quick-modal .carousel-control.right{
	right:-30px;
}
.detail-row .soc-icon a i{
	transition:all 0.4s;
}
.detail-row .soc-icon a i:hover{
	color:#ff3c20;
}
.quick-modal .detail-row .soc-icon a i:hover{
	color:#ff4001;
}
.quick-modal  .modal-body{
	padding:30px;
}

/*quick-modal-media-query*/
@media (min-width:320px) and (max-width:480px){
.quick-modal .modal-lg{
	width:auto;
}
.quick-modal button.close{
	font-size:36px;
}
.quick-modal .detail-left .carousel .item img{
	width:100%;
}
.quick-modal .detail-right.col-md-7{
	margin-top:30px;
	padding:0;
}
.quick-modal .detail-top .rating a{
	float:none;
}
.quick-modal .rate h2{
	font-size:24px;
}
.quick-modal .coupon{
	margin-left:0;
	margin-top:10px;
}
.quick-modal .detail-top h1{
	font-size:20px;
}

}
@media (min-width:481px) and (max-width:767px){
.quick-modal .modal-lg{
	width:auto;
}
.quick-modal button.close{
	font-size:36px;
}	
.quick-modal .detail-right.col-md-7{
	margin-top:40px;
	padding:0;
}
.quick-modal .detail-top h1{
	font-size:24px;
}
.quick-modal .rate h2{
	font-size:24px;
}
.quick-modal .rate span{
	margin-top:17px;
}
.quick-modal .action-icon.pull-right{
	float:none !important;
}
}
@media (min-width:768px) and (max-width:991px){
.quick-modal .modal-lg{
	width:auto;
	margin:0 auto;
}
.quick-modal button.close{
	z-index:1;
}
.quick-modal .detail-right.col-md-7{
	margin-top:60px;
}
.quick-modal .color-var{
	right:50px;
}
}
@media (min-width:992px) and (max-width:1199px){
.quick-modal button.close{
	right:25px;
}
.quick-modal .detail-top h1{
	font-size:26px;
}
}


@media (min-width:320px) and (max-width:480px){
.detail-page .detail-right{
		padding:0;
		margin-top:30px;
}
.detail-top h1 {
    font-size: 22px;
}
.detail-top .rating i {
    margin-right: 5px;
    font-size: 13px;
}
.detail-top .rating span,.detail-top .rating a {
    font-size: 13px;
}
.rate h2 {
    font-size: 22px;
    margin-right: 0px;
}
.rate h2 del {
    font-size: 14px;
    margin-left: 0;
}
.detail-top label.offer-label {
    line-height: 20px;
    height: 22px;
    padding: 0 5px;
    font-size: 11px;
}
.rate span {
    margin-top: 10px;
}
.detail-right ul.detail p, .detail-right ul.detail.feature ul li {
    font-size: 14px;
}
.detail-right ul.detail.feature ul {
    width: 100%;
    float: none;
}
ul.size li a {
    padding: 10px 15px;
    font-size: 13px;
    margin-left: 4px;
}
ul.size {
    margin-left: 4px;
}
.grid-page .grid-list .sale p,.grid-page .grid-list .sale span,.grid-page .grid-list .sale h4{
	padding-left:15px;
}
.product-tab ul.nav-tabs{
		width:100%;
		float:none;
		border-right:1px solid #dcdcdc;
		position:relative;
		border-bottom:none;
}
.product-tab .tab-content{
		width:100%;
		float:none;
		margin-left:0;
}
.product-tab .tab-pane {
    padding: 15px;
}
.action-icon.pull-right{
	float:none;
	margin-left:0;
	margin-top:10px;
}
.detail-page .coupon{
	margin-left:0;
	margin-top:10px;
}
.detail-page .header-main h2{
	font-size:36px;
}
.detail-left .zoom-btn {
    bottom: 15%;
}
.categories ul li .categories-mega-menu{
	left:0 !important;
	top:100%;
	width:100% !important;
}
.best-product ul.nav-tabs h3 {
		margin-bottom:20px;
}
.news-letter .col-md-4 {
    padding: 0;
    display: inline-block;
    width: 250px;
}
.detail-page .tranding .owl-prev .fa,.detail-page .tranding .owl-next .fa{
	font-size:30px;
}
}
@media (min-width:481px) and (max-width:767px){
.detail-page .detail-right{
		padding:0;
		margin-top:30px;
}
.detail-top h1 {
    font-size: 22px;
}
.rate h2 {
    font-size: 22px;
    margin-right: 0px;
}
.rate h2 del {
    font-size: 14px;
    margin-left: 0;
}
.detail-right ul.detail p, .detail-right ul.detail.feature ul li {
    font-size: 14px;
}
.grid-list .col-md-4{
	margin-top:30px;
}
.product-tab ul.nav-tabs li a {
    font-size: 13px;
    padding: 15px 0 15px 15px;
    border-bottom: 1px solid #dcdcdc;
    border-left: 3px solid transparent;
}
.product-tab .tab-content {
    width: 65%;
    float: left;
    margin-left: 35%;
}
.product-tab ul.nav-tabs {
    width: 35%;
}
.product-tab .tab-pane {
    padding: 25px 15px;
}
.tab-pane p {
    font-size: 14px;
    font-weight: 400;
    line-height: 1.5;
    margin-bottom: 10px;
}
.detail-page .owl-item .icon-circle i{
	font-size:20px;
	line-height:40px;
}
.product-list-labal{
	right:2%;
	left:auto;
}
.detail-page .tranding .owl-prev .fa,.detail-page .tranding .owl-next .fa{
	font-size:36px;
}
.product-list-labal1{
	left:1%;
	right:auto;
}
.product:hover .add-cart-hover{
  width: 145px;		
}
.add-cart-hover h6{
  font-size: 14px;		
}
.rate span {
    margin-top: 10px;
}
}
@media (min-width:768px) and (max-width:991px){
.product:hover .add-cart-hover{
	width:145px;
}
.add-cart-hover h6{
  font-size: 14px;		
}
.main-side-bar{
	margin-top:60px;
}
}
@media (min-width:992px) and (max-width:1199px){
.detail-page .coupon{
	padding:14px 34px;
}
.hover-product-body{
	width:100%;
}
}


/*========Cart-new-page=======*/
/*form styles*/
#msform {
    position: relative;
    margin-top: 30px;
}
#msform fieldset {
    background: white;
    border: 0 none;
    border-radius: 0px;
    box-sizing: border-box;
    width: 100%;
    /*stacking fieldsets above each other*/
    position: relative;
}
/*Hide all except first fieldset*/
#msform fieldset:not(:first-of-type) {
    display: none;
}
/*headings*/
.fs-title {
    font-size: 20px;
    text-transform: uppercase;
    margin-bottom: 10px;
	margin-top:0;
    font-weight: bold;
	text-align: center;
}
.fs-subtitle {
    font-weight: normal;
    font-size: 15px;
	margin-top:0;
	text-align: center;
}
/*progressbar*/
#progressbar {
	padding:0;
    overflow: hidden;
	display:table;
	width:900px;
	margin:0 auto 50px;
}
#progressbar li {
    list-style-type: none;
    text-transform: uppercase;
    font-size: 16px;
	color:#5d5d5d;
    width: 25%;
    float: left;
    position: relative;
	text-align: center;
}
#progressbar li.active:before{
	color:#fff;
}
#progressbar li:before {
	content:'\f101';
	font-family: "Flaticon-5";
    width: 52px;
    height: 52px;
    line-height: 52px;
    display: block;
    font-size: 26px;
    color: #5d5d5d;
    background: white;
    border-radius: 50%;
    margin: 0 auto 10px auto;
	position:relative;
	z-index: 2;
	text-align:center;
	background-color:#f7f6f6;
}
#progressbar li:nth-child(2):before{
	content:'\f104';
}
#progressbar li:nth-child(3):before{
	content:'\f103';
}
#progressbar li:nth-child(4):before{
	content:'\f102';
}
/*progressbar connectors*/
#progressbar li:after {
    content: '';
    width: 100%;
    height: 18px;
    background: #f7f6f6;
    position: absolute;
    left: -50%;
    top: 17px;
    z-index: 0; /*put it behind the numbers*/
}
#progressbar li:first-child:after {
    /*connector not needed before the first step*/
    content: none;
}
/*marking active/completed steps green*/
/*The number of the step and the connector before it = green*/
#progressbar li.active:before, #progressbar li.active:after {
    background:#ff3c20;
}
#msform .col-sm-6.input-body{
	padding-left:0;
}

fieldset .shp-cart-btn{
	float:left;
}
.cart-tab .cart-btn{
	background-color:#f2f2f2;
}
.promo-input{
	height:51px;
	float:left;
	margin-left:30px;
	line-height:48px;
	border:1px solid #f2f2f2;
	border-radius:49px;
	position:relative;
	padding:0 15px;
	font-size:16px;
	color:#b1b1b1;
	font-style:italic;
	position:relative;
}
.promo-input input{
	border:none;
	padding:0;
	height: 47px;
	width: 200px;
	padding-right:35px;
}
.promo-input > i{
	margin-right:5px;
}
.promo-input .promo-i{
	color:#ff3c20;
	font-size:30px;
	position:absolute;
	right:15px;
	top:50%;
	line-height:1;
	transform:translateY(-50%);
}
.new-cart .pay-faq{
	margin-top:60px;
}

/*Delivery-tab*/
#msform .nav-tabs{
	border:none;
	text-align:center;
	margin-bottom:40px;
}
#msform .nav-tabs .cart-btn{
	border:2px solid #e6e6e6;
	border-radius:30px;
	margin:0 8px;
	position:relative;
}
#msform .nav-tabs li.active .cart-btn{
	border-color:#ff3c20;
}
#msform .nav-tabs li.active .cart-btn:after{
	position:absolute;
	border-left: 15px solid transparent;
    border-right: 13px solid transparent;
    border-top: 13px solid #ff3c20;
	content:'';
	bottom:-13px;
	left:50%;
	transform:translateX(-50%);
}
.form-body{
	margin-bottom:30px;
}
.form-body p{
	font-size:16px;
}
.form-body input,.form-body select{
	width:100%;
	border:2px solid #e6e6e6;
	height:52px;
	border-radius:52px;
	padding-left:15px;
	color:#5d5d5d;
}
.form-body input::placeholder{
	color:#bababa;
}
.form-body textarea{
	width:100%;
	border:2px solid #e6e6e6;
	height:120px;
	border-radius:77px;
	padding:25px 20px;
	max-height:120px;
	min-height:120px;
	max-width:100%;
	min-width:100%;
}
.delivery-tab .cart-btn{
	border:2px solid #e6e6e6;
	padding:15px 35px;
	float:left;
}
.payment-tab.delivery-tab li a.cart-btn{
	padding:0;
}
#msform .payment-tab.delivery-tab .nav-tabs li.active .cart-btn:after{
	bottom:-11px;	
}
.delivery-tab .cart-btn i{
	color:#ff3c20;
	margin-right:5px;
}
.delivery-tab .cart-btn.next{
	float:right;
}
.delivery-tab .cart-btn.next-btn i{
	margin-right:0;
	margin-left:5px;
}

/*confirmation-tab*/
.dilivery-info{
	width:35%;
	float:left;
}
.delivery-cart{
	width:65%;
	float:left;
	margin-bottom:50px;
}
.dilivery-info h4{
	font-size:22px;
	font-weight:600;
	color:#5d5d5d;
	text-transform:uppercase;
	margin-bottom:25px;
}
.deli-pay h4{
	margin-bottom:15px;
}
.express{
	margin-top: 20px;
}
.express i{
	display:inline-block;	
	color: #bdbdbd;
	font-size: 24px;
	padding-right: 15px;
	position:absolute;
}
.express p{
	display:inline-block;
	font-size: 16px;
	color: #5d5d5d;
	margin-bottom: 0;
	position:relative;
	padding-left:40px;
	/*! max-width:84%; */
}
.express span{
	font-size: 20px;
	color: #ff3c20;
	font-weight: 600;
}
.deli-pay{
	margin-top:50px;	
}
.cart-img{
	border:1px solid #f2f2f2;
	float:left;	
}
.shp-coupon.col-md-6{
	padding-left:0;
}
.delivery-cart table{
	width:100%;
}
.delivery-cart.dilivery-info h4{
	border-bottom:2px solid #eeeeee;
	padding-bottom:10px;
	margin-bottom:5px;		
}
.order{
	width:60%;
}
.order-detail{
	margin-top:19px;
}
.order p{
	font-size:16px;
	font-weight:600;
	color:#5d5d5d;	
	padding-left:110px;
}
.order span{
	padding-left:20px;
	font-size:16px;
	font-weight:400;
	color:#ababab;	
}
.order-price h5{
	font-size:24px;
	color:#ff3c20;
	font-weight:600;
	display:inline-block;	
	padding-left:40px;
}
.order-price h6{
	display:inline-block;
	font-size:16px;
	font-weight:400;
	color:#ababab;	
	padding-left:10px;
}
.order h2{
	font-size:22px;
	font-weight:600;
	color:#5d5d5d;
	margin:0;
}
.total-price .order{
	float:left;	
}
.order-price h3{
	font-size:28px;
	color:#ff3c20;
	font-weight:600;	
	margin:0;
	padding-left:40px;
}
.delivery-cart table tr td{
	border-bottom:1px solid #eee;
	padding:20px 0;
}
.delivery-cart table tr.total-price td{
	border:none;
	padding:20px 0 20px;
}

/*success-order*/
.success-order{
	text-align:center;	
}
.success-order img{
	display:table;
	margin:0 auto;
}
.success-order h4{
	font-size:30px;
	font-weight:600;
	color:#313131;
	line-height:1.4;
	max-width:78%;
	display:inline-block;
	margin-top:20px;	
}
.success-order p{
	font-size:16px;
	font-weight:400;
	color:#5d5d5d;
	line-height:1.4;
	max-width:78%;
	display:inline-block;
	margin-top:5px;	
	margin-bottom:40px;
}
.pay-faq.col-md-12{
	padding:0;
}
@media (min-width:320px) and (max-width:480px){
#progressbar{
	width:305px;
	margin-left:0;
	margin-right:0;	
}
#progressbar li{
	font-size:12px;
}
#progressbar li:before{
	width:40px;
	height:40px;
	font-size:20px;
	line-height:40px;
}
#progressbar li:after{
	top:12px;
}
.cart-sec.container{
	padding:80px 0;
}
.cart-sec.container fieldset{
	padding:0 15px;
}
.promo-input input{
	width:185px;
}
fieldset .shp-cart-btn{
	float:none;
	margin-bottom:20px;
}
.new-cart .pay-faq{
	margin-top:50px;
	padding-bottom:0;
}
.cart-btn{
	font-size:14px;
	margin-bottom: 20px;
	margin-left:20px;
}
.delivery-tab .cart-btn{
	float:none;
	margin-top:20px !important;
}
.delivery-tab .cart-btn.free-del{
	margin-top:0 !important;
}
.delivery-tab .cart-btn.next,
.delivery-tab .cart-btn.previous{
	float:none;
	display:table;
	margin:0 auto;
}
.dilivery-info{
	width:100%;
}
.dilivery-info h4{
	font-size:18px;
}
.express p{
  font-size: 16px;
	max-width: none;
}
.order-price h5{
	font-size:20px;
}
.order-price h6{
	font-size:14px;
}
.order-price h3{
	font-size:24px;
}
.cart-detail{
	overflow-x:scroll;
	overflow-y:hidden;
}
.delivery-cart table{
	width:700px;
}
.delivery-cart{
	margin-top:50px;
}
.success-order .col-md-6,
.success-order.col-md-12{
	padding:0;
}
.success-order h4{
	font-size:22px;
	max-width:none;
}
.success-order p{
	font-size:14px;
	max-width:none;
	margin-bottom:20px;
}
.success-order img{
	width:75px;
}
.hover-product-body{
	width:100%;
}
/* .header-right{ */
	
	/* padding-right:100px; */
/* } */
}

@media (min-width:481px) and (max-width:767px){
#progressbar{
	width:451px;
}
#progressbar li{
	font-size:14px;
}
#progressbar li.active:before{
	width:46px;
	height:46px;
	line-height:46px;
	font-size:20px;
}
.promo-input input{
	width:154px;
}
.promo-input{
	margin-left:10px;
	margin-bottom:20px;
}
.new-cart .pay-faq.col-md-6{
	margin-top:60px;
	padding:0;
}
.delivery-tab .cart-btn{
	padding:15px 25px;
}
.dilivery-info{
	width:100%;
}
.delivery-cart{
	margin-top:50px;
}
.cart-detail{
	overflow-x:scroll;
}
.delivery-cart table{
	width:700px;
}
.cart-btn.shp-btn.pull-right{
	float:right !important;
	border:none;
}
.success-order .col-md-6,
.success-order.col-md-12{
	padding:0;
}
.success-order h4{
	font-size:24px;
	max-width:none;
}
.success-order p{
	font-size:14px;
	max-width:none;
	margin-bottom:30px;
}
.success-order img{
	width:90px;
}	

}
@media (min-width:768px) and (max-width:991px){
#progressbar{
	width:720px;
}	
.upd-btn{
	padding:15px 32px;
}
.shp-btn{
	padding:15px 30px;
}
#pull{float:right;}

.cart-btn{
	font-size:14px;
}	
.cart-tab .pull-right{
	margin-top:1em;
}
.dilivery-info {
	width:100%;
}
.delivery-cart {
	margin-top:50px;	
}
}
@media (min-width:992px) and (max-width:1199px){
.success-order h4{
	font-size:24px;
}
.order p{
	font-size:14px;
}
.new-cart .pay-faq{
	margin-top:50px;
	padding-bottom:0;
}
.add-cart-hover h6{
	font-size:14px;
}
.product:hover .add-cart-hover{
	width:145px;
}
}

@media (min-width:1024px) and (max-width:1366px){
	
	/* .about-page{ */
		/* width:500px; */
		
/* } */
	
#shop{padding-left:6px;
margin-left:333px;
}	
	
	
	
	
	
}	
	</style>
    <style>
	
	/*! =========================================================
 * bootstrap-slider.js
 *
 * Maintainers:
 *		Kyle Kemp
 *			- Twitter: @seiyria
 *			- Github:  seiyria
 *		Rohit Kalkur
 *			- Twitter: @Rovolutionary
 *			- Github:  rovolution
 *
 * =========================================================
  *
 * bootstrap-slider is released under the MIT License
 * Copyright (c) 2017 Kyle Kemp, Rohit Kalkur, and contributors
 * 
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 * 
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 *
 * ========================================================= */
.slider {
  display: inline-block;
  vertical-align: middle;
  position: relative;
}
.slider.slider-horizontal {
  width: 100%;
  height: 20px;
}
.slider.slider-horizontal .slider-track {
  height: 10px;
  width: 100%;
  margin-top: -5px;
  top: 50%;
  left: 0;
}
.slider.slider-horizontal .slider-selection,
.slider.slider-horizontal .slider-track-low,
.slider.slider-horizontal .slider-track-high {
  height: 100%;
  top: 0;
  bottom: 0;
}
.slider.slider-horizontal .slider-tick,
.slider.slider-horizontal .slider-handle {
  margin-left: -10px;
}
.slider.slider-horizontal .slider-tick.triangle,
.slider.slider-horizontal .slider-handle.triangle {
  position: relative;
  top: 50%;
  transform: translateY(-50%);
  border-width: 0 10px 10px 10px;
  width: 0;
  height: 0;
  border-bottom-color: #0480be;
  margin-top: 0;
}
.slider.slider-horizontal .slider-tick-container {
  white-space: nowrap;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
}
.slider.slider-horizontal .slider-tick-label-container {
  white-space: nowrap;
  margin-top: 20px;
}
.slider.slider-horizontal .slider-tick-label-container .slider-tick-label {
  padding-top: 4px;
  display: inline-block;
  text-align: center;
}
.slider.slider-horizontal.slider-rtl .slider-track {
  left: initial;
  right: 0;
}
.slider.slider-horizontal.slider-rtl .slider-tick,
.slider.slider-horizontal.slider-rtl .slider-handle {
  margin-left: initial;
  margin-right: -10px;
}
.slider.slider-horizontal.slider-rtl .slider-tick-container {
  left: initial;
  right: 0;
}
.slider.slider-vertical {
  height: 210px;
  width: 20px;
}
.slider.slider-vertical .slider-track {
  width: 10px;
  height: 100%;
  left: 25%;
  top: 0;
}
.slider.slider-vertical .slider-selection {
  width: 100%;
  left: 0;
  top: 0;
  bottom: 0;
}
.slider.slider-vertical .slider-track-low,
.slider.slider-vertical .slider-track-high {
  width: 100%;
  left: 0;
  right: 0;
}
.slider.slider-vertical .slider-tick,
.slider.slider-vertical .slider-handle {
  margin-top: -10px;
}
.slider.slider-vertical .slider-tick.triangle,
.slider.slider-vertical .slider-handle.triangle {
  border-width: 10px 0 10px 10px;
  width: 1px;
  height: 1px;
  border-left-color: #0480be;
  border-right-color: #0480be;
  margin-left: 0;
  margin-right: 0;
}
.slider.slider-vertical .slider-tick-label-container {
  white-space: nowrap;
}
.slider.slider-vertical .slider-tick-label-container .slider-tick-label {
  padding-left: 4px;
}
.slider.slider-vertical.slider-rtl .slider-track {
  left: initial;
  right: 25%;
}
.slider.slider-vertical.slider-rtl .slider-selection {
  left: initial;
  right: 0;
}
.slider.slider-vertical.slider-rtl .slider-tick.triangle,
.slider.slider-vertical.slider-rtl .slider-handle.triangle {
  border-width: 10px 10px 10px 0;
}
.slider.slider-vertical.slider-rtl .slider-tick-label-container .slider-tick-label {
  padding-left: initial;
  padding-right: 4px;
}
.slider.slider-disabled .slider-handle {
  background-image: -webkit-linear-gradient(top, #dfdfdf 0%, #bebebe 100%);
  background-image: -o-linear-gradient(top, #dfdfdf 0%, #bebebe 100%);
  background-image: linear-gradient(to bottom, #dfdfdf 0%, #bebebe 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffdfdfdf', endColorstr='#ffbebebe', GradientType=0);
}
.slider.slider-disabled .slider-track {
  background-image: -webkit-linear-gradient(top, #e5e5e5 0%, #e9e9e9 100%);
  background-image: -o-linear-gradient(top, #e5e5e5 0%, #e9e9e9 100%);
  background-image: linear-gradient(to bottom, #e5e5e5 0%, #e9e9e9 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffe5e5e5', endColorstr='#ffe9e9e9', GradientType=0);
  cursor: not-allowed;
}
.slider input {
  display: none;
}
.slider .tooltip.top {
  margin-top: -36px;
}
.slider .tooltip-inner {
  white-space: nowrap;
  max-width: none;
  display:none;
}
.slider .hide {
  display: none;
}
.slider-track {
  position: absolute;
  cursor: pointer;
  background-image: -webkit-linear-gradient(top, #f4f4f4 0%, #f4f4f4 100%);
  background-image: -o-linear-gradient(top, #f4f4f4 0%, #f4f4f4 100%);
  background-image: linear-gradient(to bottom, #f4f4f4 0%, #f4f4f4 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff5f5f5', endColorstr='#fff9f9f9', GradientType=0);
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  border-radius: 4px;
}
.slider-selection {
  position: absolute;
  background-image: -webkit-linear-gradient(top, #f9f9f9 0%, #f5f5f5 100%);
  background-image: -o-linear-gradient(top, #f9f9f9 0%, #f5f5f5 100%);
  background-image: linear-gradient(to bottom, #f9f9f9 0%, #f5f5f5 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff9f9f9', endColorstr='#fff5f5f5', GradientType=0);
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  border-radius: 4px;
}
.slider-selection.tick-slider-selection {
  background-image: -webkit-linear-gradient(top, #89cdef 0%, #81bfde 100%);
  background-image: -o-linear-gradient(top, #89cdef 0%, #81bfde 100%);
  background-image: linear-gradient(to bottom, #89cdef 0%, #81bfde 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff89cdef', endColorstr='#ff81bfde', GradientType=0);
}
.slider-track-low,
.slider-track-high {
  position: absolute;
  background: transparent;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  border-radius: 4px;
}
.slider-handle {
  position: absolute;
  top: 20px;
  left:10px !important;
  width: 20px;
  height: 20px;
  -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  border: 0px solid transparent;
  background-color:#ff2c30;
}
.slider-handle.round {
  border-radius: 50%;
}
.slider-handle.triangle {
  background: transparent none;
}
.slider-handle.custom {
  background: transparent none;
}
.slider-handle.custom::before {
  line-height: 20px;
  font-size: 20px;
  content: '\2605';
  color: #726204;
}
.slider-tick {
  position: absolute;
  width: 20px;
  height: 20px;
  background-image: -webkit-linear-gradient(top, #f9f9f9 0%, #f5f5f5 100%);
  background-image: -o-linear-gradient(top, #f9f9f9 0%, #f5f5f5 100%);
  background-image: linear-gradient(to bottom, #f9f9f9 0%, #f5f5f5 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff9f9f9', endColorstr='#fff5f5f5', GradientType=0);
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  filter: none;
  opacity: 0.8;
  border: 0px solid transparent;
}
.slider-tick.round {
  border-radius: 50%;
}
.slider-tick.triangle {
  background: transparent none;
}
.slider-tick.custom {
  background: transparent none;
}
.slider-tick.custom::before {
  line-height: 20px;
  font-size: 20px;
  content: '\2605';
  color: #726204;
}
.slider-tick.in-selection {
  background-image: -webkit-linear-gradient(top, #89cdef 0%, #81bfde 100%);
  background-image: -o-linear-gradient(top, #89cdef 0%, #81bfde 100%);
  background-image: linear-gradient(to bottom, #89cdef 0%, #81bfde 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff89cdef', endColorstr='#ff81bfde', GradientType=0);
  opacity: 1;
}

	
	
	
	</style>
    <!--BOOTSTRAP-->
    <style>
	
	/*!
 * Bootstrap v3.3.7 (http://getbootstrap.com)
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -webkit-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%;
}
body {
  margin: 0;
}
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
menu,
nav,
section,
summary {
  display: block;
}
audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline;
}
audio:not([controls]) {
  display: none;
  height: 0;
}
[hidden],
template {
  display: none;
}
a {
  background-color: transparent;
}
a:active,
a:hover {
  outline: 0;
}
abbr[title] {
  border-bottom: 1px dotted;
}
b,
strong {
  font-weight: bold;
}
dfn {
  font-style: italic;
}
h1 {
  margin: .67em 0;
  font-size: 2em;
}
mark {
  color: #000;
  background: #ff0;
}
small {
  font-size: 80%;
}
sub,
sup {
  position: relative;
  font-size: 75%;
  line-height: 0;
  vertical-align: baseline;
}
sup {
  top: -.5em;
}
sub {
  bottom: -.25em;
}
img {
  border: 0;
}
svg:not(:root) {
  overflow: hidden;
}
figure {
  margin: 1em 40px;
}
hr {
  height: 0;
  -webkit-box-sizing: content-box;
     -moz-box-sizing: content-box;
          box-sizing: content-box;
}
pre {
  overflow: auto;
}
code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em;
}
button,
input,
optgroup,
select,
textarea {
  margin: 0;
  font: inherit;
  color: inherit;
}
button {
  overflow: visible;
}
button,
select {
  text-transform: none;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
html input[disabled] {
  cursor: default;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  padding: 0;
  border: 0;
}
input {
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 0;
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}
input[type="search"] {
  -webkit-box-sizing: content-box;
     -moz-box-sizing: content-box;
          box-sizing: content-box;
  -webkit-appearance: textfield;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
fieldset {
  padding: .35em .625em .75em;
  margin: 0 2px;
  border: 1px solid #c0c0c0;
}
legend {
  padding: 0;
  border: 0;
}
textarea {
  overflow: auto;
}
optgroup {
  font-weight: bold;
}
table {
  border-spacing: 0;
  border-collapse: collapse;
}
td,
th {
  padding: 0;
}
/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */
@media print {
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;

    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100% !important;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
  }
  .navbar {
    display: none;
  }
  .btn > .caret,
  .dropup > .btn > .caret {
    border-top-color: #000 !important;
  }
  .label {
    border: 1px solid #000;
  }
  .table {
    border-collapse: collapse !important;
  }
  .table td,
  .table th {
    background-color: #fff !important;
  }
  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important;
  }
}
* {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
*:before,
*:after {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
html {
  font-size: 10px;

  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}
a {
  text-decoration: none;
  color:inherit;
}
figure {
  margin: 0;
}
img {
  vertical-align: middle;
}
.img-responsive,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  max-width: 100%;
  height: auto;
  padding-top: 20px;
}
.img-rounded {
  border-radius: 6px;
}
.img-thumbnail {
  display: inline-block;
  max-width: 100%;
  height: auto;
  padding: 4px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 4px;
  -webkit-transition: all .2s ease-in-out;
       -o-transition: all .2s ease-in-out;
          transition: all .2s ease-in-out;
}
.img-circle {
  border-radius: 50%;
}
hr {
  margin-top: 20px;
  margin-bottom: 20px;
  border: 0;
  border-top: 1px solid #eee;
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
[role="button"] {
  cursor: pointer;
}
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
h1 small,
h2 small,
h3 small,
h4 small,
h5 small,
h6 small,
.h1 small,
.h2 small,
.h3 small,
.h4 small,
.h5 small,
.h6 small,
h1 .small,
h2 .small,
h3 .small,
h4 .small,
h5 .small,
h6 .small,
.h1 .small,
.h2 .small,
.h3 .small,
.h4 .small,
.h5 .small,
.h6 .small {
  font-weight: normal;
  line-height: 1;
  color: #777;
}
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  margin-top: 20px;
  margin-bottom: 10px;
}
h1 small,
.h1 small,
h2 small,
.h2 small,
h3 small,
.h3 small,
h1 .small,
.h1 .small,
h2 .small,
.h2 .small,
h3 .small,
.h3 .small {
  font-size: 65%;
}
h4,
.h4,
h5,
.h5,
h6,
.h6 {
  margin-top: 10px;
  margin-bottom: 10px;
}
h4 small,
.h4 small,
h5 small,
.h5 small,
h6 small,
.h6 small,
h4 .small,
.h4 .small,
h5 .small,
.h5 .small,
h6 .small,
.h6 .small {
  font-size: 75%;
}
h1,
.h1 {
  font-size: 36px;
}
h2,
.h2 {
  font-size: 30px;
}
h3,
.h3 {
  font-size: 24px;
}
h4,
.h4 {
  font-size: 18px;
}
h5,
.h5 {
  font-size: 14px;
}
h6,
.h6 {
  font-size: 12px;
}
p {
  margin-top:10px;
  margin-bottom:10px;
}
.lead {
  margin-bottom: 20px;
  font-size: 16px;
  font-weight: 300;
  line-height: 1.4;
}
@media (min-width: 768px) {
  .lead {
    font-size: 21px;
  }
}
small,
.small {
  font-size: 85%;
}
mark,
.mark {
  padding: .2em;
  background-color: #fcf8e3;
}
.text-left {
  text-align: left;
}
.text-right {
  text-align: right;
}
.text-center {
  text-align: center;
}
.text-justify {
  text-align: justify;
}
.text-nowrap {
  white-space: nowrap;
}
.text-lowercase {
  text-transform: lowercase;
}
.text-uppercase {
  text-transform: uppercase;
}
.text-capitalize {
  text-transform: capitalize;
}
.text-muted {
  color: #777;
}
.text-primary {
  color: #337ab7;
}
a.text-primary:hover,
a.text-primary:focus {
  color: #286090;
}
.text-success {
  color: #3c763d;
}
a.text-success:hover,
a.text-success:focus {
  color: #2b542c;
}
.text-info {
  color: #31708f;
}
a.text-info:hover,
a.text-info:focus {
  color: #245269;
}
.text-warning {
  color: #8a6d3b;
}
a.text-warning:hover,
a.text-warning:focus {
  color: #66512c;
}
.text-danger {
  color: #a94442;
}
a.text-danger:hover,
a.text-danger:focus {
  color: #843534;
}
.bg-primary {
  color: #fff;
  background-color: #337ab7;
}
a.bg-primary:hover,
a.bg-primary:focus {
  background-color: #286090;
}
.bg-success {
  background-color: #dff0d8;
}
a.bg-success:hover,
a.bg-success:focus {
  background-color: #c1e2b3;
}
.bg-info {
  background-color: #d9edf7;
}
a.bg-info:hover,
a.bg-info:focus {
  background-color: #afd9ee;
}
.bg-warning {
  background-color: #fcf8e3;
}
a.bg-warning:hover,
a.bg-warning:focus {
  background-color: #f7ecb5;
}
.bg-danger {
  background-color: #f2dede;
}
a.bg-danger:hover,
a.bg-danger:focus {
  background-color: #e4b9b9;
}
.page-header {
  padding-bottom: 9px;
  margin: 40px 0 20px;
  border-bottom: 1px solid #eee;
}
ul,
ol {
  margin-top: 0;
  margin-bottom: 10px;
}
ul ul,
ol ul,
ul ol,
ol ol {
  margin-bottom: 0;
}
.list-unstyled {
  padding-left: 0;
  list-style: none;
}
.list-inline {
  padding-left: 0;
  margin-left: -5px;
  list-style: none;
}
.list-inline > li {
  display: inline-block;
  padding-right: 5px;
  padding-left: 5px;
}
dl {
  margin-top: 0;
  margin-bottom: 20px;
}
dt,
dd {
  line-height: 1.42857143;
}
dt {
  font-weight: bold;
}
dd {
  margin-left: 0;
}
@media (min-width: 768px) {
  .dl-horizontal dt {
    float: left;
    width: 160px;
    overflow: hidden;
    clear: left;
    text-align: right;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .dl-horizontal dd {
    margin-left: 180px;
  }
}
abbr[title],
abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #777;
}
.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
blockquote {
  padding: 10px 20px;
  margin: 0 0 20px;
  font-size: 17.5px;
  border-left: 5px solid #eee;
}
blockquote p:last-child,
blockquote ul:last-child,
blockquote ol:last-child {
  margin-bottom: 0;
}
blockquote footer,
blockquote small,
blockquote .small {
  display: block;
  font-size: 80%;
  line-height: 1.42857143;
  color: #777;
}
blockquote footer:before,
blockquote small:before,
blockquote .small:before {
  content: '\2014 \00A0';
}
.blockquote-reverse,
blockquote.pull-right {
  padding-right: 15px;
  padding-left: 0;
  text-align: right;
  border-right: 5px solid #eee;
  border-left: 0;
}
.blockquote-reverse footer:before,
blockquote.pull-right footer:before,
.blockquote-reverse small:before,
blockquote.pull-right small:before,
.blockquote-reverse .small:before,
blockquote.pull-right .small:before {
  content: '';
}
.blockquote-reverse footer:after,
blockquote.pull-right footer:after,
.blockquote-reverse small:after,
blockquote.pull-right small:after,
.blockquote-reverse .small:after,
blockquote.pull-right .small:after {
  content: '\00A0 \2014';
}
address {
  margin-bottom: 20px;
  font-style: normal;
  line-height: 1.42857143;
}
code,
kbd,
pre,
samp {
  font-family: Menlo, Monaco, Consolas, "Courier New", monospace;
}
code {
  padding: 2px 4px;
  font-size: 90%;
  color: #c7254e;
  background-color: #f9f2f4;
  border-radius: 4px;
}
kbd {
  padding: 2px 4px;
  font-size: 90%;
  color: #fff;
  background-color: #333;
  border-radius: 3px;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .25);
          box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .25);
}
kbd kbd {
  padding: 0;
  font-size: 100%;
  font-weight: bold;
  -webkit-box-shadow: none;
          box-shadow: none;
}
pre {
  display: block;
  padding: 9.5px;
  margin: 0 0 10px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #333;
  word-break: break-all;
  word-wrap: break-word;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 4px;
}
pre code {
  padding: 0;
  font-size: inherit;
  color: inherit;
  white-space: pre-wrap;
  background-color: transparent;
  border-radius: 0;
}
.pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
.container {
  padding-right: 15px;
   padding-left: 15px; 
  margin-right: auto;
  margin-left: auto;
  position:relative;
   padding-top: 15px; 
}
@media (min-width: 768px) {
  .container {
    width: 771px;
  }
}
@media (min-width: 992px) {
  .container {
    width: 970px;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 1170px;
  }
}

.container-fluid {
  margin-right: auto;
  margin-left: auto;
}
.row {
  margin-right: -15px;
  margin-left: -15px;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-right: 15px;
  padding-left: 15px;
   /* padding-top:40px;  */
}
.cinnamon{padding-bottom:40px;}


.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
  float: left;
  /* padding-left:104px; */
}
.col-xs-12 {
  width: 100%;
}
.col-xs-11 {
  width: 91.66666667%;
}
.col-xs-10 {
  width: 83.33333333%;
}
.col-xs-9 {
  width: 75%;
}
.col-xs-8 {
  width: 66.66666667%;
}
.col-xs-7 {
  width: 58.33333333%;
}
.col-xs-6 {
  width: 50%;
}
.col-xs-5 {
  width: 41.66666667%;
}
.col-xs-4 {
  width: 33.33333333%;
}
.col-xs-3 {
  width: 25%;
}
.col-xs-2 {
  width: 16.66666667%;
}
.col-xs-1 {
  width: 8.33333333%;
}
.col-xs-pull-12 {
  right: 100%;
}
.col-xs-pull-11 {
  right: 91.66666667%;
}
.col-xs-pull-10 {
  right: 83.33333333%;
}
.col-xs-pull-9 {
  right: 75%;
}
.col-xs-pull-8 {
  right: 66.66666667%;
}
.col-xs-pull-7 {
  right: 58.33333333%;
}
.col-xs-pull-6 {
  right: 50%;
}
.col-xs-pull-5 {
  right: 41.66666667%;
}
.col-xs-pull-4 {
  right: 33.33333333%;
}
.col-xs-pull-3 {
  right: 25%;
}
.col-xs-pull-2 {
  right: 16.66666667%;
}
.col-xs-pull-1 {
  right: 8.33333333%;
}
.col-xs-pull-0 {
  right: auto;
}
.col-xs-push-12 {
  left: 100%;
}
.col-xs-push-11 {
  left: 91.66666667%;
}
.col-xs-push-10 {
  left: 83.33333333%;
}
.col-xs-push-9 {
  left: 75%;
}
.col-xs-push-8 {
  left: 66.66666667%;
}
.col-xs-push-7 {
  left: 58.33333333%;
}
.col-xs-push-6 {
  left: 50%;
}
.col-xs-push-5 {
  left: 41.66666667%;
}
.col-xs-push-4 {
  left: 33.33333333%;
}
.col-xs-push-3 {
  left: 25%;
}
.col-xs-push-2 {
  left: 16.66666667%;
}
.col-xs-push-1 {
  left: 8.33333333%;
}
.col-xs-push-0 {
  left: auto;
}
.col-xs-offset-12 {
  margin-left: 100%;
}
.col-xs-offset-11 {
  margin-left: 91.66666667%;
}
.col-xs-offset-10 {
  margin-left: 83.33333333%;
}
.col-xs-offset-9 {
  margin-left: 75%;
}
.col-xs-offset-8 {
  margin-left: 66.66666667%;
}
.col-xs-offset-7 {
  margin-left: 58.33333333%;
}
.col-xs-offset-6 {
  margin-left: 50%;
}
.col-xs-offset-5 {
  margin-left: 41.66666667%;
}
.col-xs-offset-4 {
  margin-left: 33.33333333%;
}
.col-xs-offset-3 {
  margin-left: 25%;
}
.col-xs-offset-2 {
  margin-left: 16.66666667%;
}
.col-xs-offset-1 {
  margin-left: 8.33333333%;
}
.col-xs-offset-0 {
  margin-left: 0;
}
@media (min-width: 768px) {
  .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left;
  }
  .col-sm-12 {
    width: 100%;
  }
  .col-sm-11 {
    width: 91.66666667%;
  }
  .col-sm-10 {
    width: 83.33333333%;
  }
  .col-sm-9 {
    width: 75%;
  }
  .col-sm-8 {
    width: 66.66666667%;
  }
  .col-sm-7 {
    width: 58.33333333%;
  }
  .col-sm-6 {
    width: 50%;
  }
  .col-sm-5 {
    width: 41.66666667%;
  }
  .col-sm-4 {
    width: 33.33333333%;
  }
  .col-sm-3 {
    width: 25%; 
	/* padding-left:280px; */
	
  }
  .col-sm-2 {
    width: 16.66666667%;
  }
  .col-sm-1 {
    width: 8.33333333%;
  }
  .col-sm-pull-12 {
    right: 100%;
  }
  .col-sm-pull-11 {
    right: 91.66666667%;
  }
  .col-sm-pull-10 {
    right: 83.33333333%;
  }
  .col-sm-pull-9 {
    right: 75%;
  }
  .col-sm-pull-8 {
    right: 66.66666667%;
  }
  .col-sm-pull-7 {
    right: 58.33333333%;
  }
  .col-sm-pull-6 {
    right: 50%;
  }
  .col-sm-pull-5 {
    right: 41.66666667%;
  }
  .col-sm-pull-4 {
    right: 33.33333333%;
  }
  .col-sm-pull-3 {
    right: 25%;
  }
  .col-sm-pull-2 {
    right: 16.66666667%;
  }
  .col-sm-pull-1 {
    right: 8.33333333%;
  }
  .col-sm-pull-0 {
    right: auto;
  }
  .col-sm-push-12 {
    left: 100%;
  }
  .col-sm-push-11 {
    left: 91.66666667%;
  }
  .col-sm-push-10 {
    left: 83.33333333%;
  }
  .col-sm-push-9 {
    left: 75%;
  }
  .col-sm-push-8 {
    left: 66.66666667%;
  }
  .col-sm-push-7 {
    left: 58.33333333%;
  }
  .col-sm-push-6 {
    left: 50%;
  }
  .col-sm-push-5 {
    left: 41.66666667%;
  }
  .col-sm-push-4 {
    left: 33.33333333%;
  }
  .col-sm-push-3 {
    left: 25%;
  }
  .col-sm-push-2 {
    left: 16.66666667%;
  }
  .col-sm-push-1 {
    left: 8.33333333%;
  }
  .col-sm-push-0 {
    left: auto;
  }
  .col-sm-offset-12 {
    margin-left: 100%;
  }
  .col-sm-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-sm-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-sm-offset-9 {
    margin-left: 75%;
  }
  .col-sm-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-sm-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-sm-offset-6 {
    margin-left: 50%;
  }
  .col-sm-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-sm-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-sm-offset-3 {
    margin-left: 25%;
  }
  .col-sm-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-sm-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-sm-offset-0 {
    margin-left: 0;
  }
}
@media (min-width: 992px) {
  .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
  }
  .col-md-12 {
    width: 100%;
  }
  .col-md-11 {
    width: 91.66666667%;
  }
  .col-md-10 {
    width: 83.33333333%;
  }
  .col-md-9 {
    width: 100%;
  }
  .col-md-8 {
    width: 66.66666667%;
  }
  .col-md-7 {
    width: 58.33333333%;
  }
  .col-md-6 {
    width: 50%;
	
  }
  .col-md-5 {
    width: 41.66666667%;
  }
  .col-md-4 {
    width: 33.33333333%; 
	padding-left:35px;
  }
  .col-md-3 {
    width: 25%;
  }
  .col-md-2 {
    width: 16.66666667%;
  }
  .col-md-1 {
    width: 8.33333333%;
  }
  .col-md-pull-12 {
    right: 100%;
  }
  .col-md-pull-11 {
    right: 91.66666667%;
  }
  .col-md-pull-10 {
    right: 83.33333333%;
  }
  .col-md-pull-9 {
    right: 75%;
  }
  .col-md-pull-8 {
    right: 66.66666667%;
  }
  .col-md-pull-7 {
    right: 58.33333333%;
  }
  .col-md-pull-6 {
    right: 50%;
  }
  .col-md-pull-5 {
    right: 41.66666667%;
  }
  .col-md-pull-4 {
    right: 33.33333333%;
  }
  .col-md-pull-3 {
    right: 25%;
  }
  .col-md-pull-2 {
    right: 16.66666667%;
  }
  .col-md-pull-1 {
    right: 8.33333333%;
  }
  .col-md-pull-0 {
    right: auto;
  }
  .col-md-push-12 {
    left: 100%;
  }
  .col-md-push-11 {
    left: 91.66666667%;
  }
  .col-md-push-10 {
    left: 83.33333333%;
  }
  .col-md-push-9 {
    left: 75%;
  }
  .col-md-push-8 {
    left: 66.66666667%;
  }
  .col-md-push-7 {
    left: 58.33333333%;
  }
  .col-md-push-6 {
    left: 50%;
  }
  .col-md-push-5 {
    left: 41.66666667%;
  }
  .col-md-push-4 {
    left: 33.33333333%;
  }
  .col-md-push-3 {
    left: 25%;
  }
  .col-md-push-2 {
    left: 16.66666667%;
  }
  .col-md-push-1 {
    left: 8.33333333%;
  }
  .col-md-push-0 {
    left: auto;
  }
  .col-md-offset-12 {
    margin-left: 100%;
  }
  .col-md-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-md-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-md-offset-9 {
    margin-left: 75%;
  }
  .col-md-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-md-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-md-offset-6 {
    margin-left: 50%;
  }
  .col-md-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-md-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-md-offset-3 {
    margin-left: 25%;
  }
  .col-md-offset-2 {
     margin-left: 16.66666667%; 
  }
  .col-md-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-md-offset-0 {
    margin-left: 0;
  }
}
@media (min-width: 1200px) {
  .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
    float: left;
  }
  .col-lg-12 {
    width: 100%;
  }
  .col-lg-11 {
    width: 91.66666667%;
  }
  .col-lg-10 {
    width: 83.33333333%;
  }
  .col-lg-9 {
    width: 75%;
  }
  .col-lg-8 {
    width: 66.66666667%;
  }
  .col-lg-7 {
    width: 58.33333333%;
  }
  .col-lg-6 {
    width: 50%;
  }
  .col-lg-5 {
    width: 41.66666667%;
  }
  .col-lg-4 {
    width: 33.33333333%;
  }
  .col-lg-3 {
    width: 25%;
  }
  .col-lg-2 {
    width: 16.66666667%;
  }
  .col-lg-1 {
    width: 8.33333333%;
  }
  .col-lg-pull-12 {
    right: 100%;
  }
  .col-lg-pull-11 {
    right: 91.66666667%;
  }
  .col-lg-pull-10 {
    right: 83.33333333%;
  }
  .col-lg-pull-9 {
    right: 75%;
  }
  .col-lg-pull-8 {
    right: 66.66666667%;
  }
  .col-lg-pull-7 {
    right: 58.33333333%;
  }
  .col-lg-pull-6 {
    right: 50%;
  }
  .col-lg-pull-5 {
    right: 41.66666667%;
  }
  .col-lg-pull-4 {
    right: 33.33333333%;
  }
  .col-lg-pull-3 {
    right: 25%;
  }
  .col-lg-pull-2 {
    right: 16.66666667%;
  }
  .col-lg-pull-1 {
    right: 8.33333333%;
  }
  .col-lg-pull-0 {
    right: auto;
  }
  .col-lg-push-12 {
    left: 100%;
  }
  .col-lg-push-11 {
    left: 91.66666667%;
  }
  .col-lg-push-10 {
    left: 83.33333333%;
  }
  .col-lg-push-9 {
    left: 75%;
  }
  .col-lg-push-8 {
    left: 66.66666667%;
  }
  .col-lg-push-7 {
    left: 58.33333333%;
  }
  .col-lg-push-6 {
    left: 50%;
  }
  .col-lg-push-5 {
    left: 41.66666667%;
  }
  .col-lg-push-4 {
    left: 33.33333333%;
  }
  .col-lg-push-3 {
    left: 25%;
  }
  .col-lg-push-2 {
    left: 16.66666667%;
  }
  .col-lg-push-1 {
    left: 8.33333333%;
  }
  .col-lg-push-0 {
    left: auto;
  }
  .col-lg-offset-12 {
    margin-left: 100%;
  }
  .col-lg-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-lg-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-lg-offset-9 {
    margin-left: 75%;
  }
  .col-lg-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-lg-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-lg-offset-6 {
    margin-left: 50%;
  }
  .col-lg-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-lg-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-lg-offset-3 {
    margin-left: 25%;
  }
  .col-lg-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-lg-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-lg-offset-0 {
    margin-left: 0;
  }
}
table {
  background-color: transparent;
}
caption {
  padding-top: 8px;
  padding-bottom: 8px;
  color: #777;
  text-align: left;
}
th {
  text-align: left;
}
.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 20px;
}
.table > thead > tr > th,
.table > tbody > tr > th,
.table > tfoot > tr > th,
.table > thead > tr > td,
.table > tbody > tr > td,
.table > tfoot > tr > td {
  padding: 8px;
  line-height: 1.42857143;
  vertical-align: top;
  border-top: 1px solid #ddd;
}
.table > thead > tr > th {
  vertical-align: bottom;
  border-bottom: 2px solid #ddd;
}
.table > caption + thead > tr:first-child > th,
.table > colgroup + thead > tr:first-child > th,
.table > thead:first-child > tr:first-child > th,
.table > caption + thead > tr:first-child > td,
.table > colgroup + thead > tr:first-child > td,
.table > thead:first-child > tr:first-child > td {
  border-top: 0;
}
.table > tbody + tbody {
  border-top: 2px solid #ddd;
}
.table .table {
  background-color: #fff;
}
.table-condensed > thead > tr > th,
.table-condensed > tbody > tr > th,
.table-condensed > tfoot > tr > th,
.table-condensed > thead > tr > td,
.table-condensed > tbody > tr > td,
.table-condensed > tfoot > tr > td {
  padding: 5px;
}
.table-bordered {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > tbody > tr > th,
.table-bordered > tfoot > tr > th,
.table-bordered > thead > tr > td,
.table-bordered > tbody > tr > td,
.table-bordered > tfoot > tr > td {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > thead > tr > td {
  border-bottom-width: 2px;
}
.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f9f9f9;
}
.table-hover > tbody > tr:hover {
  background-color: #f5f5f5;
}
table col[class*="col-"] {
  position: static;
  display: table-column;
  float: none;
}
table td[class*="col-"],
table th[class*="col-"] {
  position: static;
  display: table-cell;
  float: none;
}
.table > thead > tr > td.active,
.table > tbody > tr > td.active,
.table > tfoot > tr > td.active,
.table > thead > tr > th.active,
.table > tbody > tr > th.active,
.table > tfoot > tr > th.active,
.table > thead > tr.active > td,
.table > tbody > tr.active > td,
.table > tfoot > tr.active > td,
.table > thead > tr.active > th,
.table > tbody > tr.active > th,
.table > tfoot > tr.active > th {
  background-color: #f5f5f5;
}
.table-hover > tbody > tr > td.active:hover,
.table-hover > tbody > tr > th.active:hover,
.table-hover > tbody > tr.active:hover > td,
.table-hover > tbody > tr:hover > .active,
.table-hover > tbody > tr.active:hover > th {
  background-color: #e8e8e8;
}
.table > thead > tr > td.success,
.table > tbody > tr > td.success,
.table > tfoot > tr > td.success,
.table > thead > tr > th.success,
.table > tbody > tr > th.success,
.table > tfoot > tr > th.success,
.table > thead > tr.success > td,
.table > tbody > tr.success > td,
.table > tfoot > tr.success > td,
.table > thead > tr.success > th,
.table > tbody > tr.success > th,
.table > tfoot > tr.success > th {
  background-color: #dff0d8;
}
.table-hover > tbody > tr > td.success:hover,
.table-hover > tbody > tr > th.success:hover,
.table-hover > tbody > tr.success:hover > td,
.table-hover > tbody > tr:hover > .success,
.table-hover > tbody > tr.success:hover > th {
  background-color: #d0e9c6;
}
.table > thead > tr > td.info,
.table > tbody > tr > td.info,
.table > tfoot > tr > td.info,
.table > thead > tr > th.info,
.table > tbody > tr > th.info,
.table > tfoot > tr > th.info,
.table > thead > tr.info > td,
.table > tbody > tr.info > td,
.table > tfoot > tr.info > td,
.table > thead > tr.info > th,
.table > tbody > tr.info > th,
.table > tfoot > tr.info > th {
  background-color: #d9edf7;
}
.table-hover > tbody > tr > td.info:hover,
.table-hover > tbody > tr > th.info:hover,
.table-hover > tbody > tr.info:hover > td,
.table-hover > tbody > tr:hover > .info,
.table-hover > tbody > tr.info:hover > th {
  background-color: #c4e3f3;
}
.table > thead > tr > td.warning,
.table > tbody > tr > td.warning,
.table > tfoot > tr > td.warning,
.table > thead > tr > th.warning,
.table > tbody > tr > th.warning,
.table > tfoot > tr > th.warning,
.table > thead > tr.warning > td,
.table > tbody > tr.warning > td,
.table > tfoot > tr.warning > td,
.table > thead > tr.warning > th,
.table > tbody > tr.warning > th,
.table > tfoot > tr.warning > th {
  background-color: #fcf8e3;
}
.table-hover > tbody > tr > td.warning:hover,
.table-hover > tbody > tr > th.warning:hover,
.table-hover > tbody > tr.warning:hover > td,
.table-hover > tbody > tr:hover > .warning,
.table-hover > tbody > tr.warning:hover > th {
  background-color: #faf2cc;
}
.table > thead > tr > td.danger,
.table > tbody > tr > td.danger,
.table > tfoot > tr > td.danger,
.table > thead > tr > th.danger,
.table > tbody > tr > th.danger,
.table > tfoot > tr > th.danger,
.table > thead > tr.danger > td,
.table > tbody > tr.danger > td,
.table > tfoot > tr.danger > td,
.table > thead > tr.danger > th,
.table > tbody > tr.danger > th,
.table > tfoot > tr.danger > th {
  background-color: #f2dede;
}
.table-hover > tbody > tr > td.danger:hover,
.table-hover > tbody > tr > th.danger:hover,
.table-hover > tbody > tr.danger:hover > td,
.table-hover > tbody > tr:hover > .danger,
.table-hover > tbody > tr.danger:hover > th {
  background-color: #ebcccc;
}
.table-responsive {
  min-height: .01%;
  overflow-x: auto;
}
@media screen and (max-width: 767px) {
  .table-responsive {
    width: 100%;
    margin-bottom: 15px;
    overflow-y: hidden;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 1px solid #ddd;
  }
  .table-responsive > .table {
    margin-bottom: 0;
  }
  .table-responsive > .table > thead > tr > th,
  .table-responsive > .table > tbody > tr > th,
  .table-responsive > .table > tfoot > tr > th,
  .table-responsive > .table > thead > tr > td,
  .table-responsive > .table > tbody > tr > td,
  .table-responsive > .table > tfoot > tr > td {
    white-space: nowrap;
  }
  .table-responsive > .table-bordered {
    border: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:first-child,
  .table-responsive > .table-bordered > tbody > tr > th:first-child,
  .table-responsive > .table-bordered > tfoot > tr > th:first-child,
  .table-responsive > .table-bordered > thead > tr > td:first-child,
  .table-responsive > .table-bordered > tbody > tr > td:first-child,
  .table-responsive > .table-bordered > tfoot > tr > td:first-child {
    border-left: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:last-child,
  .table-responsive > .table-bordered > tbody > tr > th:last-child,
  .table-responsive > .table-bordered > tfoot > tr > th:last-child,
  .table-responsive > .table-bordered > thead > tr > td:last-child,
  .table-responsive > .table-bordered > tbody > tr > td:last-child,
  .table-responsive > .table-bordered > tfoot > tr > td:last-child {
    border-right: 0;
  }
  .table-responsive > .table-bordered > tbody > tr:last-child > th,
  .table-responsive > .table-bordered > tfoot > tr:last-child > th,
  .table-responsive > .table-bordered > tbody > tr:last-child > td,
  .table-responsive > .table-bordered > tfoot > tr:last-child > td {
    border-bottom: 0;
  }
}
fieldset {
  min-width: 0;
  padding: 0;
  margin: 0;
  border: 0;
}
legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 20px;
  font-size: 21px;
  line-height: inherit;
  color: #333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: bold;
}
input[type="search"] {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal;
}
input[type="file"] {
  display: block;
}
input[type="range"] {
  display: block;
  width: 100%;
}
select[multiple],
select[size] {
  height: auto;
}
input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
output {
  display: block;
  padding-top: 7px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
}
.form-control {
  display: block;
  width: 100%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control:focus {
  outline: 0;
}
.form-control::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.form-control:-ms-input-placeholder {
  color: #999;
}
.form-control::-webkit-input-placeholder {
  color: #999;
}
.form-control::-ms-expand {
  background-color: transparent;
  border: 0;
}
.form-control[disabled],
.form-control[readonly],
fieldset[disabled] .form-control {
  background-color: #eee;
  opacity: 1;
}
.form-control[disabled],
fieldset[disabled] .form-control {
  cursor: not-allowed;
}
textarea.form-control {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: none;
}
@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 34px;
  }
  input[type="date"].input-sm,
  input[type="time"].input-sm,
  input[type="datetime-local"].input-sm,
  input[type="month"].input-sm,
  .input-group-sm input[type="date"],
  .input-group-sm input[type="time"],
  .input-group-sm input[type="datetime-local"],
  .input-group-sm input[type="month"] {
    line-height: 30px;
  }
  input[type="date"].input-lg,
  input[type="time"].input-lg,
  input[type="datetime-local"].input-lg,
  input[type="month"].input-lg,
  .input-group-lg input[type="date"],
  .input-group-lg input[type="time"],
  .input-group-lg input[type="datetime-local"],
  .input-group-lg input[type="month"] {
    line-height: 46px;
  }
}
.form-group {
  margin-bottom: 15px;
}
.radio,
.checkbox {
  position: relative;
  display: block;
  margin-top: 10px;
  margin-bottom: 10px;
}
.radio label,
.checkbox label {
  min-height: 20px;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  cursor: pointer;
}
.radio input[type="radio"],
.radio-inline input[type="radio"],
.checkbox input[type="checkbox"],
.checkbox-inline input[type="checkbox"] {
  position: absolute;
  margin-top: 4px \9;
  margin-left: -20px;
}
.radio + .radio,
.checkbox + .checkbox {
  margin-top: -5px;
}
.radio-inline,
.checkbox-inline {
  position: relative;
  display: inline-block;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  vertical-align: middle;
  cursor: pointer;
}
.radio-inline + .radio-inline,
.checkbox-inline + .checkbox-inline {
  margin-top: 0;
  margin-left: 10px;
}
input[type="radio"][disabled],
input[type="checkbox"][disabled],
input[type="radio"].disabled,
input[type="checkbox"].disabled,
fieldset[disabled] input[type="radio"],
fieldset[disabled] input[type="checkbox"] {
  cursor: not-allowed;
}
.radio-inline.disabled,
.checkbox-inline.disabled,
fieldset[disabled] .radio-inline,
fieldset[disabled] .checkbox-inline {
  cursor: not-allowed;
}
.radio.disabled label,
.checkbox.disabled label,
fieldset[disabled] .radio label,
fieldset[disabled] .checkbox label {
  cursor: not-allowed;
}
.form-control-static {
  min-height: 34px;
  padding-top: 7px;
  padding-bottom: 7px;
  margin-bottom: 0;
}
.form-control-static.input-lg,
.form-control-static.input-sm {
  padding-right: 0;
  padding-left: 0;
}
.input-sm {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
select.input-sm {
  height: 30px;
  line-height: 30px;
}
textarea.input-sm,
select[multiple].input-sm {
  height: auto;
}
.form-group-sm .form-control {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
.form-group-sm select.form-control {
  height: 30px;
  line-height: 30px;
}
.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto;
}
.form-group-sm .form-control-static {
  height: 30px;
  min-height: 32px;
  padding: 6px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.input-lg {
  height: 46px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
select.input-lg {
  height: 46px;
  line-height: 46px;
}
textarea.input-lg,
select[multiple].input-lg {
  height: auto;
}
.form-group-lg .form-control {
  height: 46px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
.form-group-lg select.form-control {
  height: 46px;
  line-height: 46px;
}
.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto;
}
.form-group-lg .form-control-static {
  height: 46px;
  min-height: 38px;
  padding: 11px 16px;
  font-size: 18px;
  line-height: 1.3333333;
}
.has-feedback {
  position: relative;
}
.has-feedback .form-control {
  padding-right: 42.5px;
}
.form-control-feedback {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  display: block;
  width: 34px;
  height: 34px;
  line-height: 34px;
  text-align: center;
  pointer-events: none;
}
.input-lg + .form-control-feedback,
.input-group-lg + .form-control-feedback,
.form-group-lg .form-control + .form-control-feedback {
  width: 46px;
  height: 46px;
  line-height: 46px;
}
.input-sm + .form-control-feedback,
.input-group-sm + .form-control-feedback,
.form-group-sm .form-control + .form-control-feedback {
  width: 30px;
  height: 30px;
  line-height: 30px;
}
.has-success .help-block,
.has-success .control-label,
.has-success .radio,
.has-success .checkbox,
.has-success .radio-inline,
.has-success .checkbox-inline,
.has-success.radio label,
.has-success.checkbox label,
.has-success.radio-inline label,
.has-success.checkbox-inline label {
  color: #3c763d;
}
.has-success .form-control {
  border-color: #3c763d;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}
.has-success .form-control:focus {
  border-color: #2b542c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
}
.has-success .input-group-addon {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #3c763d;
}
.has-success .form-control-feedback {
  color: #3c763d;
}
.has-warning .help-block,
.has-warning .control-label,
.has-warning .radio,
.has-warning .checkbox,
.has-warning .radio-inline,
.has-warning .checkbox-inline,
.has-warning.radio label,
.has-warning.checkbox label,
.has-warning.radio-inline label,
.has-warning.checkbox-inline label {
  color: #8a6d3b;
}
.has-warning .form-control {
  border-color: #8a6d3b;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}
.has-warning .form-control:focus {
  border-color: #66512c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
}
.has-warning .input-group-addon {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #8a6d3b;
}
.has-warning .form-control-feedback {
  color: #8a6d3b;
}
.has-error .help-block,
.has-error .control-label,
.has-error .radio,
.has-error .checkbox,
.has-error .radio-inline,
.has-error .checkbox-inline,
.has-error.radio label,
.has-error.checkbox label,
.has-error.radio-inline label,
.has-error.checkbox-inline label {
  color: #a94442;
}
.has-error .form-control {
  border-color: #a94442;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}
.has-error .form-control:focus {
  border-color: #843534;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
}
.has-error .input-group-addon {
  color: #a94442;
  background-color: #f2dede;
  border-color: #a94442;
}
.has-error .form-control-feedback {
  color: #a94442;
}
.has-feedback label ~ .form-control-feedback {
  top: 25px;
}
.has-feedback label.sr-only ~ .form-control-feedback {
  top: 0;
}
.help-block {
  display: block;
  margin-top: 5px;
  margin-bottom: 10px;
  color: #737373;
}
@media (min-width: 768px) {
  .form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .form-inline .form-control-static {
    display: inline-block;
  }
  .form-inline .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .form-inline .input-group .input-group-addon,
  .form-inline .input-group .input-group-btn,
  .form-inline .input-group .form-control {
    width: auto;
  }
  .form-inline .input-group > .form-control {
    width: 100%;
  }
  .form-inline .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio,
  .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio label,
  .form-inline .checkbox label {
    padding-left: 0;
  }
  .form-inline .radio input[type="radio"],
  .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .form-inline .has-feedback .form-control-feedback {
    top: 0;
  }
}
.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  padding-top: 7px;
  margin-top: 0;
  margin-bottom: 0;
}
.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 27px;
}
.form-horizontal .form-group {
  margin-right: -15px;
  margin-left: -15px;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    padding-top: 7px;
    margin-bottom: 0;
    text-align: right;
  }
}
.form-horizontal .has-feedback .form-control-feedback {
  right: 15px;
}
@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 11px;
    font-size: 18px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 6px;
    font-size: 12px;
  }
}
.btn {
  display: inline-block;
  padding: 6px 12px;
  margin-bottom: 0;
  font-size: 14px;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
      touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
}
.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.btn:hover,
.btn:focus,
.btn.focus {
  color: #333;
  text-decoration: none;
}
.btn:active,
.btn.active {
  background-image: none;
  outline: 0;
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
}
.btn.disabled,
.btn[disabled],
fieldset[disabled] .btn {
  cursor: not-allowed;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
          box-shadow: none;
  opacity: .65;
}
a.btn.disabled,
fieldset[disabled] a.btn {
  pointer-events: none;
}
.btn-default {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.btn-default:focus,
.btn-default.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.btn-default:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active:hover,
.btn-default.active:hover,
.open > .dropdown-toggle.btn-default:hover,
.btn-default:active:focus,
.btn-default.active:focus,
.open > .dropdown-toggle.btn-default:focus,
.btn-default:active.focus,
.btn-default.active.focus,
.open > .dropdown-toggle.btn-default.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  background-image: none;
}
.btn-default.disabled:hover,
.btn-default[disabled]:hover,
fieldset[disabled] .btn-default:hover,
.btn-default.disabled:focus,
.btn-default[disabled]:focus,
fieldset[disabled] .btn-default:focus,
.btn-default.disabled.focus,
.btn-default[disabled].focus,
fieldset[disabled] .btn-default.focus {
  background-color: #fff;
  border-color: #ccc;
}
.btn-default .badge {
  color: #fff;
  background-color: #333;
}
.btn-primary {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary:focus,
.btn-primary.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.btn-primary:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active:hover,
.btn-primary.active:hover,
.open > .dropdown-toggle.btn-primary:hover,
.btn-primary:active:focus,
.btn-primary.active:focus,
.open > .dropdown-toggle.btn-primary:focus,
.btn-primary:active.focus,
.btn-primary.active.focus,
.open > .dropdown-toggle.btn-primary.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  background-image: none;
}
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled.focus,
.btn-primary[disabled].focus,
fieldset[disabled] .btn-primary.focus {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary .badge {
  color: #337ab7;
  background-color: #fff;
}
.btn-success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success:focus,
.btn-success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.btn-success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active:hover,
.btn-success.active:hover,
.open > .dropdown-toggle.btn-success:hover,
.btn-success:active:focus,
.btn-success.active:focus,
.open > .dropdown-toggle.btn-success:focus,
.btn-success:active.focus,
.btn-success.active.focus,
.open > .dropdown-toggle.btn-success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  background-image: none;
}
.btn-success.disabled:hover,
.btn-success[disabled]:hover,
fieldset[disabled] .btn-success:hover,
.btn-success.disabled:focus,
.btn-success[disabled]:focus,
fieldset[disabled] .btn-success:focus,
.btn-success.disabled.focus,
.btn-success[disabled].focus,
fieldset[disabled] .btn-success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.btn-info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info:focus,
.btn-info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.btn-info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active:hover,
.btn-info.active:hover,
.open > .dropdown-toggle.btn-info:hover,
.btn-info:active:focus,
.btn-info.active:focus,
.open > .dropdown-toggle.btn-info:focus,
.btn-info:active.focus,
.btn-info.active.focus,
.open > .dropdown-toggle.btn-info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  background-image: none;
}
.btn-info.disabled:hover,
.btn-info[disabled]:hover,
fieldset[disabled] .btn-info:hover,
.btn-info.disabled:focus,
.btn-info[disabled]:focus,
fieldset[disabled] .btn-info:focus,
.btn-info.disabled.focus,
.btn-info[disabled].focus,
fieldset[disabled] .btn-info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.btn-warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning:focus,
.btn-warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.btn-warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active:hover,
.btn-warning.active:hover,
.open > .dropdown-toggle.btn-warning:hover,
.btn-warning:active:focus,
.btn-warning.active:focus,
.open > .dropdown-toggle.btn-warning:focus,
.btn-warning:active.focus,
.btn-warning.active.focus,
.open > .dropdown-toggle.btn-warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  background-image: none;
}
.btn-warning.disabled:hover,
.btn-warning[disabled]:hover,
fieldset[disabled] .btn-warning:hover,
.btn-warning.disabled:focus,
.btn-warning[disabled]:focus,
fieldset[disabled] .btn-warning:focus,
.btn-warning.disabled.focus,
.btn-warning[disabled].focus,
fieldset[disabled] .btn-warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.btn-danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger:focus,
.btn-danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.btn-danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active:hover,
.btn-danger.active:hover,
.open > .dropdown-toggle.btn-danger:hover,
.btn-danger:active:focus,
.btn-danger.active:focus,
.open > .dropdown-toggle.btn-danger:focus,
.btn-danger:active.focus,
.btn-danger.active.focus,
.open > .dropdown-toggle.btn-danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  background-image: none;
}
.btn-danger.disabled:hover,
.btn-danger[disabled]:hover,
fieldset[disabled] .btn-danger:hover,
.btn-danger.disabled:focus,
.btn-danger[disabled]:focus,
fieldset[disabled] .btn-danger:focus,
.btn-danger.disabled.focus,
.btn-danger[disabled].focus,
fieldset[disabled] .btn-danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger .badge {
  color: #d9534f;
  background-color: #fff;
}
.btn-link {
  font-weight: normal;
  color: #337ab7;
  border-radius: 0;
}
.btn-link,
.btn-link:active,
.btn-link.active,
.btn-link[disabled],
fieldset[disabled] .btn-link {
  background-color: transparent;
  -webkit-box-shadow: none;
          box-shadow: none;
}
.btn-link,
.btn-link:hover,
.btn-link:focus,
.btn-link:active {
  border-color: transparent;
}
.btn-link:hover,
.btn-link:focus {
  color: #23527c;
  text-decoration: underline;
  background-color: transparent;
}
.btn-link[disabled]:hover,
fieldset[disabled] .btn-link:hover,
.btn-link[disabled]:focus,
fieldset[disabled] .btn-link:focus {
  color: #777;
  text-decoration: none;
}
.btn-lg,
.btn-group-lg > .btn {
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
.btn-sm,
.btn-group-sm > .btn {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
.btn-xs,
.btn-group-xs > .btn {
  padding: 1px 5px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
.btn-block {
  display: block;
  width: 100%;
}
.btn-block + .btn-block {
  margin-top: 5px;
}
input[type="submit"].btn-block,
input[type="reset"].btn-block,
input[type="button"].btn-block {
  width: 100%;
}
.fade {
  opacity: 0;
  -webkit-transition: opacity .15s linear;
       -o-transition: opacity .15s linear;
          transition: opacity .15s linear;
}
.fade.in {
  opacity: 1;
}
.collapse {
  display: none;
}
.collapse.in {
  display: block;
}
tr.collapse.in {
  display: table-row;
}
tbody.collapse.in {
  display: table-row-group;
}
.collapsing {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition-timing-function: ease;
       -o-transition-timing-function: ease;
          transition-timing-function: ease;
  -webkit-transition-duration: .35s;
       -o-transition-duration: .35s;
          transition-duration: .35s;
  -webkit-transition-property: height, visibility;
       -o-transition-property: height, visibility;
          transition-property: height, visibility;
}
.caret {
  display: inline-block;
  width: 0;
  height: 0;
  margin-left: 2px;
  vertical-align: middle;
  border-top: 4px dashed;
  border-top: 4px solid \9;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
}
.dropup,
.dropdown {
  position: relative;
}
.dropdown-toggle:focus {
  outline: 0;
}
.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  font-size: 14px;
  text-align: left;
  list-style: none;
  background-color: #fff;
  -webkit-background-clip: padding-box;
          background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, .15);
  border-radius: 4px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
          box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333;
  white-space: nowrap;
}
.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  color: #262626;
  text-decoration: none;
  background-color: #f5f5f5;
}
.dropdown-menu > .active > a,
.dropdown-menu > .active > a:hover,
.dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  background-color: #337ab7;
  outline: 0;
}
.dropdown-menu > .disabled > a,
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  color: #777;
}
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  cursor: not-allowed;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
.open > .dropdown-menu {
  display: block;
}
.open > a {
  outline: 0;
}
.dropdown-menu-right {
  right: 0;
  left: auto;
}
.dropdown-menu-left {
  right: auto;
  left: 0;
}
.dropdown-header {
  display: block;
  padding: 3px 20px;
  font-size: 12px;
  line-height: 1.42857143;
  color: #777;
  white-space: nowrap;
}
.dropdown-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 990;
}
.pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
.dropup .caret,
.navbar-fixed-bottom .dropdown .caret {
  content: "";
  border-top: 0;
  border-bottom: 4px dashed;
  border-bottom: 4px solid \9;
}
.dropup .dropdown-menu,
.navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 2px;
}
@media (min-width: 768px) {
  .navbar-right .dropdown-menu {
    right: 0;
    left: auto;
  }
  .navbar-right .dropdown-menu-left {
    right: auto;
    left: 0;
  }
}
.btn-group,
.btn-group-vertical {
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.btn-group > .btn,
.btn-group-vertical > .btn {
  position: relative;
  float: left;
}
.btn-group > .btn:hover,
.btn-group-vertical > .btn:hover,
.btn-group > .btn:focus,
.btn-group-vertical > .btn:focus,
.btn-group > .btn:active,
.btn-group-vertical > .btn:active,
.btn-group > .btn.active,
.btn-group-vertical > .btn.active {
  z-index: 2;
}
.btn-group .btn + .btn,
.btn-group .btn + .btn-group,
.btn-group .btn-group + .btn,
.btn-group .btn-group + .btn-group {
  margin-left: -1px;
}
.btn-toolbar {
  margin-left: -5px;
}
.btn-toolbar .btn,
.btn-toolbar .btn-group,
.btn-toolbar .input-group {
  float: left;
}
.btn-toolbar > .btn,
.btn-toolbar > .btn-group,
.btn-toolbar > .input-group {
  margin-left: 5px;
}
.btn-group > .btn:not(:first-child):not(:last-child):not(.dropdown-toggle) {
  border-radius: 0;
}
.btn-group > .btn:first-child {
  margin-left: 0;
}
.btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.btn-group > .btn:last-child:not(:first-child),
.btn-group > .dropdown-toggle:not(:first-child) {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group > .btn-group {
  float: left;
}
.btn-group > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.btn-group > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group .dropdown-toggle:active,
.btn-group.open .dropdown-toggle {
  outline: 0;
}
.btn-group > .btn + .dropdown-toggle {
  padding-right: 8px;
  padding-left: 8px;
}
.btn-group > .btn-lg + .dropdown-toggle {
  padding-right: 12px;
  padding-left: 12px;
}
.btn-group.open .dropdown-toggle {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
}
.btn-group.open .dropdown-toggle.btn-link {
  -webkit-box-shadow: none;
          box-shadow: none;
}
.btn .caret {
  margin-left: 0;
}
.btn-lg .caret {
  border-width: 5px 5px 0;
  border-bottom-width: 0;
}
.dropup .btn-lg .caret {
  border-width: 0 5px 5px;
}
.btn-group-vertical > .btn,
.btn-group-vertical > .btn-group,
.btn-group-vertical > .btn-group > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
}
.btn-group-vertical > .btn-group > .btn {
  float: none;
}
.btn-group-vertical > .btn + .btn,
.btn-group-vertical > .btn + .btn-group,
.btn-group-vertical > .btn-group + .btn,
.btn-group-vertical > .btn-group + .btn-group {
  margin-top: -1px;
  margin-left: 0;
}
.btn-group-vertical > .btn:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.btn-group-vertical > .btn:first-child:not(:last-child) {
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn:last-child:not(:first-child) {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
}
.btn-group-vertical > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.btn-group-justified {
  display: table;
  width: 100%;
  table-layout: fixed;
  border-collapse: separate;
}
.btn-group-justified > .btn,
.btn-group-justified > .btn-group {
  display: table-cell;
  float: none;
  width: 1%;
}
.btn-group-justified > .btn-group .btn {
  width: 100%;
}
.btn-group-justified > .btn-group .dropdown-menu {
  left: auto;
}
[data-toggle="buttons"] > .btn input[type="radio"],
[data-toggle="buttons"] > .btn-group > .btn input[type="radio"],
[data-toggle="buttons"] > .btn input[type="checkbox"],
[data-toggle="buttons"] > .btn-group > .btn input[type="checkbox"] {
  position: absolute;
  clip: rect(0, 0, 0, 0);
  pointer-events: none;
}
.input-group {
  position: relative;
  display: table;
  border-collapse: separate;
}
.input-group[class*="col-"] {
  float: none;
  padding-right: 0;
  padding-left: 0;
}
.input-group .form-control {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
}
.input-group .form-control:focus {
  z-index: 3;
}
.input-group-lg > .form-control,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .btn {
  height: 46px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
select.input-group-lg > .form-control,
select.input-group-lg > .input-group-addon,
select.input-group-lg > .input-group-btn > .btn {
  height: 46px;
  line-height: 46px;
}
textarea.input-group-lg > .form-control,
textarea.input-group-lg > .input-group-addon,
textarea.input-group-lg > .input-group-btn > .btn,
select[multiple].input-group-lg > .form-control,
select[multiple].input-group-lg > .input-group-addon,
select[multiple].input-group-lg > .input-group-btn > .btn {
  height: auto;
}
.input-group-sm > .form-control,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
select.input-group-sm > .form-control,
select.input-group-sm > .input-group-addon,
select.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  line-height: 30px;
}
textarea.input-group-sm > .form-control,
textarea.input-group-sm > .input-group-addon,
textarea.input-group-sm > .input-group-btn > .btn,
select[multiple].input-group-sm > .form-control,
select[multiple].input-group-sm > .input-group-addon,
select[multiple].input-group-sm > .input-group-btn > .btn {
  height: auto;
}
.input-group-addon,
.input-group-btn,
.input-group .form-control {
  display: table-cell;
}
.input-group-addon:not(:first-child):not(:last-child),
.input-group-btn:not(:first-child):not(:last-child),
.input-group .form-control:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.input-group-addon,
.input-group-btn {
  width: 1%;
  white-space: nowrap;
  vertical-align: middle;
}
.input-group-addon {
  padding: 6px 12px;
  font-size: 14px;
  font-weight: normal;
  line-height: 1;
  color: #555;
  text-align: center;
  background-color: #eee;
  border: 1px solid #ccc;
  border-radius: 4px;
}
.input-group-addon.input-sm {
  padding: 5px 10px;
  font-size: 12px;
  border-radius: 3px;
}
.input-group-addon.input-lg {
  padding: 10px 16px;
  font-size: 18px;
  border-radius: 6px;
}
.input-group-addon input[type="radio"],
.input-group-addon input[type="checkbox"] {
  margin-top: 0;
}
.input-group .form-control:first-child,
.input-group-addon:first-child,
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group > .btn,
.input-group-btn:first-child > .dropdown-toggle,
.input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
.input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.input-group-addon:first-child {
  border-right: 0;
}
.input-group .form-control:last-child,
.input-group-addon:last-child,
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group > .btn,
.input-group-btn:last-child > .dropdown-toggle,
.input-group-btn:first-child > .btn:not(:first-child),
.input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}
.input-group-addon:last-child {
  border-left: 0;
}
.input-group-btn {
  position: relative;
  font-size: 0;
  white-space: nowrap;
}
.input-group-btn > .btn {
  position: relative;
}
.input-group-btn > .btn + .btn {
  margin-left: -1px;
}
.input-group-btn > .btn:hover,
.input-group-btn > .btn:focus,
.input-group-btn > .btn:active {
  z-index: 2;
}
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group {
  margin-right: -1px;
}
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group {
  z-index: 2;
  margin-left: -1px;
}
.nav {
  padding-left: 0;
  margin-bottom: 0;
  list-style: none;
}
.nav > li {
  position: relative;
  display: block;
}
.nav > li > a {
  position: relative;
  display: block;
}
.nav > li > a:hover,
.nav > li > a:focus {
  text-decoration: none;
}
.nav > li.disabled > a {
  color: #777;
}
.nav > li.disabled > a:hover,
.nav > li.disabled > a:focus {
  color: #777;
  text-decoration: none;
  cursor: not-allowed;
  background-color: transparent;
}
.nav .open > a,
.nav .open > a:hover,
.nav .open > a:focus {
  background-color: #eee;
  border-color: #337ab7;
}
.nav .nav-divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.nav > li > a > img {
  max-width: none;
}
.nav-tabs {
  border-bottom: 1px solid #ddd;
}
.nav-tabs > li {
  display:inline-block;
  margin-bottom: -1px;
}
.nav-tabs > li > a {
  line-height: 1.42857143;
  border: 1px solid transparent;
  border-radius: 4px 4px 0 0;
}
.nav-tabs > li > a:hover {
}
.nav-tabs.nav-justified {
  width: 100%;
  border-bottom: 0;
}
.nav-tabs.nav-justified > li {
  float: none;
}
.nav-tabs.nav-justified > li > a {
  margin-bottom: 5px;
  text-align: center;
}
.nav-tabs.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-tabs.nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs.nav-justified > li > a {
  margin-right: 0;
  border-radius: 4px;
}
.nav-tabs.nav-justified > .active > a,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 4px 4px 0 0;
  }
  .nav-tabs.nav-justified > .active > a,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.nav-pills > li {
  float: left;
}
.nav-pills > li > a {
  border-radius: 4px;
}
.nav-pills > li + li {
  margin-left: 2px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #fff;
  background-color: #337ab7;
}
.nav-stacked > li {
  float: none;
}
.nav-stacked > li + li {
  margin-top: 2px;
  margin-left: 0;
}
.nav-justified {
  width: 100%;
}
.nav-justified > li {
  float: none;
}
.nav-justified > li > a {
  margin-bottom: 5px;
  text-align: center;
}
.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs-justified {
  border-bottom: 0;
}
.nav-tabs-justified > li > a {
  margin-right: 0;
  border-radius: 4px;
}
.nav-tabs-justified > .active > a,
.nav-tabs-justified > .active > a:hover,
.nav-tabs-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 4px 4px 0 0;
  }
  .nav-tabs-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.tab-content > .tab-pane {
  display: none;
}
.tab-content > .active {
  display: block;
}
.nav-tabs .dropdown-menu {
  margin-top: -1px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.navbar {
  position: relative;
  min-height: 50px;
}
@media (min-width: 768px) {
  .navbar-header {
    float: left;
  }
}
.navbar-collapse {
  padding-right: 15px;
  padding-left: 15px;
  overflow-x: visible;
  -webkit-overflow-scrolling: touch;
  border-top: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1);
          box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1);
}
@media (min-width: 768px) {
  .navbar-collapse {
    width: auto;
    border-top: 0;
    -webkit-box-shadow: none;
            box-shadow: none;
  }
  .navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
  }
  .navbar-collapse.in {
    overflow-y: visible;
  }
  .navbar-fixed-top .navbar-collapse,
  .navbar-static-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    padding-right: 0;
    padding-left: 0;
  }
}
@media (min-width: 992px) {
.index-4 .navbar-collapse.collapse{
		display:block !important;
}
.navbar-collapse.in {
    overflow-y: visible !important;
}
}
.navbar-fixed-top .navbar-collapse,
.navbar-fixed-bottom .navbar-collapse {
  max-height: 340px;
}
@media (max-device-width: 480px) and (orientation: landscape) {
  .navbar-fixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 200px;
  }
}
.container > .navbar-header,
.container-fluid > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-collapse {
  margin-right: -15px;
  margin-left: -15px;
}
@media (min-width: 768px) {
  .container > .navbar-header,
  .container-fluid > .navbar-header,
  .container > .navbar-collapse,
  .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
  }
}
.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px;
}
@media (min-width: 768px) {
  .navbar-static-top {
    border-radius: 0;
  }
}
.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
}
@media (min-width: 768px) {
  .navbar-fixed-top,
  .navbar-fixed-bottom {
    border-radius: 0;
  }
}
.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px;
}
.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0;
}
.navbar-brand {
  float: left;
}
.navbar-brand:hover,
.navbar-brand:focus {
  text-decoration: none;
}
.navbar-brand > img {
  display: block;
}
@media (min-width: 768px) {
  .navbar > .container .navbar-brand,
  .navbar > .container-fluid .navbar-brand {
    margin-left: -15px;
  }
}
.navbar-toggle {
  position: relative;
  float: right;
  padding: 9px 10px;
  margin-top: 8px;
  margin-right: 15px;
  margin-bottom: 8px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
}
.navbar-toggle:focus {
  outline: 0;
}
.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
}
.navbar-toggle .icon-bar + .icon-bar {
  margin-top: 4px;
}
@media (min-width: 768px) {
  .navbar-toggle {
    display: none;
  }
}
.navbar-nav {
  margin: 7.5px -15px;
}
@media (max-width: 991px) {
.index-4  .navbar-toggle {
    display: inline-block !important;
	margin-top:6px;
}
.index-4 .navbar-header {
    float: none;
}
.index-4 .navbar-collapse.collapse{
		display:none !important;
}
.index-4 .navbar-collapse.in.collapse {
    overflow-y: visible !important;
	display:block !important;
}
.main-nav  .navbar-toggle {
    display: inline-block !important;
}
.main-nav .navbar-header {
    float: none;
}
.main-nav .navbar-collapse.collapse{
		display:none !important;
}
.main-nav .navbar-collapse.in.collapse {
    overflow-y: visible !important;
	display:block !important;
}
}
@media (min-width: 992px) {
.index-4  .navbar-toggle {
    display: none !important;
}
.main-nav  .navbar-toggle {
    display: none !important;
}
}
.navbar-nav > li > a {
  padding-top: 10px;
  padding-bottom: 10px;
  line-height: 20px;
}
@media (max-width: 767px) {
  .navbar-nav .open .dropdown-menu {
    position: static;
    float: none;
    width: auto;
    margin-top: 0;
    background-color: transparent;
    border: 0;
    -webkit-box-shadow: none;
            box-shadow: none;
  }
  .navbar-nav .open .dropdown-menu > li > a,
  .navbar-nav .open .dropdown-menu .dropdown-header {
    padding: 5px 15px 5px 25px;
  }
  .navbar-nav .open .dropdown-menu > li > a {
    line-height: 20px;
  }
  .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-nav .open .dropdown-menu > li > a:focus {
    background-image: none;
  }
}
@media (min-width: 768px) {
  .navbar-nav {
    float: left;
    margin: 0;
  }
  .navbar-nav > li {
    float: left;
  }
  .navbar-nav > li > a {
    padding-top: 15px;
    padding-bottom: 15px;
  }
}
.navbar-form {
  padding: 10px 15px;
  margin-top: 8px;
  margin-right: -15px;
  margin-bottom: 8px;
  margin-left: -15px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1), 0 1px 0 rgba(255, 255, 255, .1);
          box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1), 0 1px 0 rgba(255, 255, 255, .1);
}
@media (min-width: 768px) {
  .navbar-form .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .navbar-form .form-control-static {
    display: inline-block;
  }
  .navbar-form .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .navbar-form .input-group .input-group-addon,
  .navbar-form .input-group .input-group-btn,
  .navbar-form .input-group .form-control {
    width: auto;
  }
  .navbar-form .input-group > .form-control {
    width: 100%;
  }
  .navbar-form .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio,
  .navbar-form .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio label,
  .navbar-form .checkbox label {
    padding-left: 0;
  }
  .navbar-form .radio input[type="radio"],
  .navbar-form .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .navbar-form .has-feedback .form-control-feedback {
    top: 0;
  }
}
@media (max-width: 767px) {
  .navbar-form .form-group {
    margin-bottom: 5px;
  }
  .navbar-form .form-group:last-child {
    margin-bottom: 0;
  }
}
@media (min-width: 768px) {
  .navbar-form {
    width: auto;
    padding-top: 0;
    padding-bottom: 0;
    margin-right: 0;
    margin-left: 0;
    border: 0;
    -webkit-box-shadow: none;
            box-shadow: none;
  }
}
.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  margin-bottom: 0;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.navbar-btn {
  margin-top: 8px;
  margin-bottom: 8px;
}
.navbar-btn.btn-sm {
  margin-top: 10px;
  margin-bottom: 10px;
}
.navbar-btn.btn-xs {
  margin-top: 14px;
  margin-bottom: 14px;
}
.navbar-text {
  margin-top: 15px;
  margin-bottom: 15px;
}
@media (min-width: 768px) {
  .navbar-text {
    float: left;
    margin-right: 15px;
    margin-left: 15px;
  }
}
@media (min-width: 320px) and (max-width:991px) {
.index-4 .navbar-default .navbar-collapse .navbar-left,.index-4 .navbar-default .navbar-collapse .navbar-right{
		float:none !important;
}
.main-nav .navbar-default .navbar-collapse .navbar-left,.index-4 .navbar-default .navbar-collapse .navbar-right{
		float:none !important;
}
}
@media (min-width: 768px) {
  .navbar-left {
    float: left !important;
  }
  .navbar-right {
    float: right !important;
  }
  .navbar-right ~ .navbar-right {
    margin-right: 0;
  }
}
.navbar-default .navbar-brand {
  color: #777;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #5e5e5e;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777;
}
.navbar-default .navbar-nav > li > a {
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #333;
  background-color: transparent;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {
  color: #ccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
  background-color: #ddd;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #e7e7e7;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
@media (max-width: 767px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #777;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #333;
    background-color: transparent;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #555;
    background-color: #e7e7e7;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #ccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #777;
}
.navbar-default .navbar-link:hover {
  color: #333;
}
.navbar-default .btn-link {
  color: #777;
}
.navbar-default .btn-link:hover,
.navbar-default .btn-link:focus {
  color: #333;
}
.navbar-default .btn-link[disabled]:hover,
fieldset[disabled] .navbar-default .btn-link:hover,
.navbar-default .btn-link[disabled]:focus,
fieldset[disabled] .navbar-default .btn-link:focus {
  color: #ccc;
}
.navbar-inverse {
  background-color: #222;
  border-color: #080808;
}
.navbar-inverse .navbar-brand {
  color: #9d9d9d;
}
.navbar-inverse .navbar-brand:hover,
.navbar-inverse .navbar-brand:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-text {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a:hover,
.navbar-inverse .navbar-nav > li > a:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-nav > .active > a,
.navbar-inverse .navbar-nav > .active > a:hover,
.navbar-inverse .navbar-nav > .active > a:focus {
  color: #fff;
  background-color: #080808;
}
.navbar-inverse .navbar-nav > .disabled > a,
.navbar-inverse .navbar-nav > .disabled > a:hover,
.navbar-inverse .navbar-nav > .disabled > a:focus {
  color: #444;
  background-color: transparent;
}
.navbar-inverse .navbar-toggle {
  border-color: #333;
}
.navbar-inverse .navbar-toggle:hover,
.navbar-inverse .navbar-toggle:focus {
  background-color: #333;
}
.navbar-inverse .navbar-toggle .icon-bar {
  background-color: #fff;
}
.navbar-inverse .navbar-collapse,
.navbar-inverse .navbar-form {
  border-color: #101010;
}
.navbar-inverse .navbar-nav > .open > a,
.navbar-inverse .navbar-nav > .open > a:hover,
.navbar-inverse .navbar-nav > .open > a:focus {
  color: #fff;
  background-color: #080808;
}
@media (max-width: 767px) {
  .navbar-inverse .navbar-nav .open .dropdown-menu > .dropdown-header {
    border-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu .divider {
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
    color: #9d9d9d;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #fff;
    background-color: transparent;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #444;
    background-color: transparent;
  }
}
.navbar-inverse .navbar-link {
  color: #9d9d9d;
}
.navbar-inverse .navbar-link:hover {
  color: #fff;
}
.navbar-inverse .btn-link {
  color: #9d9d9d;
}
.navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link:focus {
  color: #fff;
}
.navbar-inverse .btn-link[disabled]:hover,
fieldset[disabled] .navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link[disabled]:focus,
fieldset[disabled] .navbar-inverse .btn-link:focus {
  color: #444;
}
.breadcrumb {
  padding: 8px 15px;
  margin-bottom: 20px;
  list-style: none;
  background-color: #f5f5f5;
  border-radius: 4px;
}
.breadcrumb > li {
  display: inline-block;
}
.breadcrumb > li + li:before {
  padding: 0 5px;
  color: #ccc;
  content: "/\00a0";
}
.breadcrumb > .active {
  color: #777;
}
.pagination {
  display: inline-block;
  padding-left: 0;
  margin: 20px 0;
  border-radius: 4px;
  /* margin-right:200px; */
}
.pagination > li {
  display: inline;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  margin-left: -1px;
  line-height: 1.42857143;
  color: #337ab7;
  text-decoration: none;
  background-color: #fff;
  border: 1px solid #ddd;
}
.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  z-index: 2;
  color: #23527c;
  background-color: #eee;
  border-color: #ddd;
}
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 3;
  color: #fff;
  cursor: default;
  background-color: #337ab7;
  border-color: #337ab7;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #777;
  cursor: not-allowed;
  background-color: #fff;
  border-color: #ddd;
}
.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
}
.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-top-left-radius: 6px;
  border-bottom-left-radius: 6px;
}
.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;
}
.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-top-left-radius: 3px;
  border-bottom-left-radius: 3px;
}
.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-top-right-radius: 3px;
  border-bottom-right-radius: 3px;
}
.pager {
  padding-left: 0;
  margin: 20px 0;
  text-align: center;
  list-style: none;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 15px;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  background-color: #eee;
}
.pager .next > a,
.pager .next > span {
  float: right;
}
.pager .previous > a,
.pager .previous > span {
  float: left;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777;
  cursor: not-allowed;
  background-color: #fff;
}
.label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em;
}
a.label:hover,
a.label:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.label:empty {
  display: none;
}
.btn .label {
  position: relative;
  top: -1px;
}
.label-default {
  background-color: #777;
}
.label-default[href]:hover,
.label-default[href]:focus {
  background-color: #5e5e5e;
}
.label-primary {
  background-color: #337ab7;
}
.label-primary[href]:hover,
.label-primary[href]:focus {
  background-color: #286090;
}
.label-success {
  background-color: #5cb85c;
}
.label-success[href]:hover,
.label-success[href]:focus {
  background-color: #449d44;
}
.label-info {
  background-color: #5bc0de;
}
.label-info[href]:hover,
.label-info[href]:focus {
  background-color: #31b0d5;
}
.label-warning {
  background-color: #f0ad4e;
}
.label-warning[href]:hover,
.label-warning[href]:focus {
  background-color: #ec971f;
}
.label-danger {
  background-color: #d9534f;
}
.label-danger[href]:hover,
.label-danger[href]:focus {
  background-color: #c9302c;
}
.badge {
  display: inline-block;
  min-width: 10px;
  padding: 3px 7px;
  font-size: 12px;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  background-color: #777;
  border-radius: 10px;
}
.badge:empty {
  display: none;
}
.btn .badge {
  position: relative;
  top: -1px;
}
.btn-xs .badge,
.btn-group-xs > .btn .badge {
  top: 0;
  padding: 1px 5px;
}
a.badge:hover,
a.badge:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.list-group-item.active > .badge,
.nav-pills > .active > a > .badge {
  color: #337ab7;
  background-color: #fff;
}
.list-group-item > .badge {
  float: right;
}
.list-group-item > .badge + .badge {
  margin-right: 5px;
}
.nav-pills > li > a > .badge {
  margin-left: 3px;
}
.jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #eee;
}
.jumbotron h1,
.jumbotron .h1 {
  color: inherit;
}
.jumbotron p {
  margin-bottom: 15px;
  font-size: 21px;
  font-weight: 200;
}
.jumbotron > hr {
  border-top-color: #d5d5d5;
}
.container .jumbotron,
.container-fluid .jumbotron {
  padding-right: 15px;
  padding-left: 15px;
  border-radius: 6px;
}
.jumbotron .container {
  max-width: 100%;
}
@media screen and (min-width: 768px) {
  .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .container .jumbotron,
  .container-fluid .jumbotron {
    padding-right: 60px;
    padding-left: 60px;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 63px;
  }
}
.thumbnail {
  display: block;
  padding: 4px;
  margin-bottom: 20px;
  line-height: 1.42857143;
  background-color: #fff;
  border-radius: 4px;
  -webkit-transition: border .2s ease-in-out;
       -o-transition: border .2s ease-in-out;
          transition: border .2s ease-in-out;
}
.thumbnail > img,
.thumbnail a > img {
  margin-right: auto;
  margin-left: auto;
}
a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
  border-color: #337ab7;
}
.thumbnail .caption {
  padding: 9px;
  color: #333;
}
.alert {
  padding: 15px;
  margin-bottom: 20px;
  border: 1px solid transparent;
  border-radius: 4px;
}
.alert h4 {
  margin-top: 0;
  color: inherit;
}
.alert .alert-link {
  font-weight: bold;
}
.alert > p,
.alert > ul {
  margin-bottom: 0;
}
.alert > p + p {
  margin-top: 5px;
}
.alert-dismissable,
.alert-dismissible {
  padding-right: 35px;
}
.alert-dismissable .close,
.alert-dismissible .close {
  position: relative;
  top: -2px;
  right: -21px;
  color: inherit;
}
.alert-success {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.alert-success hr {
  border-top-color: #c9e2b3;
}
.alert-success .alert-link {
  color: #2b542c;
}
.alert-info {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.alert-info hr {
  border-top-color: #a6e1ec;
}
.alert-info .alert-link {
  color: #245269;
}
.alert-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.alert-warning hr {
  border-top-color: #f7e1b5;
}
.alert-warning .alert-link {
  color: #66512c;
}
.alert-danger {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.alert-danger hr {
  border-top-color: #e4b9c0;
}
.alert-danger .alert-link {
  color: #843534;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-o-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.progress {
  height: 20px;
  margin-bottom: 20px;
  overflow: hidden;
  background-color: #f5f5f5;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
          box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
}
.progress-bar {
  float: left;
  width: 0;
  height: 100%;
  font-size: 12px;
  line-height: 20px;
  color: #fff;
  text-align: center;
  background-color: #337ab7;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
          box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
  -webkit-transition: width .6s ease;
       -o-transition: width .6s ease;
          transition: width .6s ease;
}
.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  -webkit-background-size: 40px 40px;
          background-size: 40px 40px;
}
.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
       -o-animation: progress-bar-stripes 2s linear infinite;
          animation: progress-bar-stripes 2s linear infinite;
}
.progress-bar-success {
  background-color: #5cb85c;
}
.progress-striped .progress-bar-success {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-info {
  background-color: #5bc0de;
}
.progress-striped .progress-bar-info {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-warning {
  background-color: #f0ad4e;
}
.progress-striped .progress-bar-warning {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-danger {
  background-color: #d9534f;
}
.progress-striped .progress-bar-danger {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.media {
  margin-top: 15px;
}
.media:first-child {
  margin-top: 0;
}
.media,
.media-body {
  overflow: hidden;
  zoom: 1;
}
.media-body {
  width: 10000px;
}
.media-object {
  display: block;
}
.media-object.img-thumbnail {
  max-width: none;
}
.media-right,
.media > .pull-right {
  padding-left: 10px;
}
.media-left,
.media > .pull-left {
  padding-right: 10px;
}
.media-left,
.media-right,
.media-body {
  display: table-cell;
  vertical-align: top;
}
.media-middle {
  vertical-align: middle;
}
.media-bottom {
  vertical-align: bottom;
}
.media-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.media-list {
  padding-left: 0;
  list-style: none;
}
.list-group {
  padding-left: 0;
  margin-bottom: 20px;
}
.list-group-item {
  position: relative;
  display: block;
  padding: 10px 15px;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid #ddd;
}
.list-group-item:first-child {
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
}
.list-group-item:last-child {
  margin-bottom: 0;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
}
a.list-group-item,
button.list-group-item {
  color: #555;
}
a.list-group-item .list-group-item-heading,
button.list-group-item .list-group-item-heading {
  color: #333;
}
a.list-group-item:hover,
button.list-group-item:hover,
a.list-group-item:focus,
button.list-group-item:focus {
  color: #555;
  text-decoration: none;
  background-color: #f5f5f5;
}
button.list-group-item {
  width: 100%;
  text-align: left;
}
.list-group-item.disabled,
.list-group-item.disabled:hover,
.list-group-item.disabled:focus {
  color: #777;
  cursor: not-allowed;
  background-color: #eee;
}
.list-group-item.disabled .list-group-item-heading,
.list-group-item.disabled:hover .list-group-item-heading,
.list-group-item.disabled:focus .list-group-item-heading {
  color: inherit;
}
.list-group-item.disabled .list-group-item-text,
.list-group-item.disabled:hover .list-group-item-text,
.list-group-item.disabled:focus .list-group-item-text {
  color: #777;
}
.list-group-item.active,
.list-group-item.active:hover,
.list-group-item.active:focus {
  z-index: 2;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.list-group-item.active .list-group-item-heading,
.list-group-item.active:hover .list-group-item-heading,
.list-group-item.active:focus .list-group-item-heading,
.list-group-item.active .list-group-item-heading > small,
.list-group-item.active:hover .list-group-item-heading > small,
.list-group-item.active:focus .list-group-item-heading > small,
.list-group-item.active .list-group-item-heading > .small,
.list-group-item.active:hover .list-group-item-heading > .small,
.list-group-item.active:focus .list-group-item-heading > .small {
  color: inherit;
}
.list-group-item.active .list-group-item-text,
.list-group-item.active:hover .list-group-item-text,
.list-group-item.active:focus .list-group-item-text {
  color: #c7ddef;
}
.list-group-item-success {
  color: #3c763d;
  background-color: #dff0d8;
}
a.list-group-item-success,
button.list-group-item-success {
  color: #3c763d;
}
a.list-group-item-success .list-group-item-heading,
button.list-group-item-success .list-group-item-heading {
  color: inherit;
}
a.list-group-item-success:hover,
button.list-group-item-success:hover,
a.list-group-item-success:focus,
button.list-group-item-success:focus {
  color: #3c763d;
  background-color: #d0e9c6;
}
a.list-group-item-success.active,
button.list-group-item-success.active,
a.list-group-item-success.active:hover,
button.list-group-item-success.active:hover,
a.list-group-item-success.active:focus,
button.list-group-item-success.active:focus {
  color: #fff;
  background-color: #3c763d;
  border-color: #3c763d;
}
.list-group-item-info {
  color: #31708f;
  background-color: #d9edf7;
}
a.list-group-item-info,
button.list-group-item-info {
  color: #31708f;
}
a.list-group-item-info .list-group-item-heading,
button.list-group-item-info .list-group-item-heading {
  color: inherit;
}
a.list-group-item-info:hover,
button.list-group-item-info:hover,
a.list-group-item-info:focus,
button.list-group-item-info:focus {
  color: #31708f;
  background-color: #c4e3f3;
}
a.list-group-item-info.active,
button.list-group-item-info.active,
a.list-group-item-info.active:hover,
button.list-group-item-info.active:hover,
a.list-group-item-info.active:focus,
button.list-group-item-info.active:focus {
  color: #fff;
  background-color: #31708f;
  border-color: #31708f;
}
.list-group-item-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
}
a.list-group-item-warning,
button.list-group-item-warning {
  color: #8a6d3b;
}
a.list-group-item-warning .list-group-item-heading,
button.list-group-item-warning .list-group-item-heading {
  color: inherit;
}
a.list-group-item-warning:hover,
button.list-group-item-warning:hover,
a.list-group-item-warning:focus,
button.list-group-item-warning:focus {
  color: #8a6d3b;
  background-color: #faf2cc;
}
a.list-group-item-warning.active,
button.list-group-item-warning.active,
a.list-group-item-warning.active:hover,
button.list-group-item-warning.active:hover,
a.list-group-item-warning.active:focus,
button.list-group-item-warning.active:focus {
  color: #fff;
  background-color: #8a6d3b;
  border-color: #8a6d3b;
}
.list-group-item-danger {
  color: #a94442;
  background-color: #f2dede;
}
a.list-group-item-danger,
button.list-group-item-danger {
  color: #a94442;
}
a.list-group-item-danger .list-group-item-heading,
button.list-group-item-danger .list-group-item-heading {
  color: inherit;
}
a.list-group-item-danger:hover,
button.list-group-item-danger:hover,
a.list-group-item-danger:focus,
button.list-group-item-danger:focus {
  color: #a94442;
  background-color: #ebcccc;
}
a.list-group-item-danger.active,
button.list-group-item-danger.active,
a.list-group-item-danger.active:hover,
button.list-group-item-danger.active:hover,
a.list-group-item-danger.active:focus,
button.list-group-item-danger.active:focus {
  color: #fff;
  background-color: #a94442;
  border-color: #a94442;
}
.list-group-item-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.list-group-item-text {
  margin-bottom: 0;
  line-height: 1.3;
}
.panel {
  margin-bottom: 20px;
  background-color: #fff;
  border: 1px solid transparent;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
          box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}
.panel-body {
  padding: 15px;
}
.panel-heading {
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel-heading > .dropdown .dropdown-toggle {
  color: inherit;
}
.panel-title {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 16px;
  color: inherit;
}
.panel-title > a,
.panel-title > small,
.panel-title > .small,
.panel-title > small > a,
.panel-title > .small > a {
  color: inherit;
}
.panel-footer {
  padding: 10px 15px;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .list-group,
.panel > .panel-collapse > .list-group {
  margin-bottom: 0;
}
.panel > .list-group .list-group-item,
.panel > .panel-collapse > .list-group .list-group-item {
  border-width: 1px 0;
  border-radius: 0;
}
.panel > .list-group:first-child .list-group-item:first-child,
.panel > .panel-collapse > .list-group:first-child .list-group-item:first-child {
  border-top: 0;
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel > .list-group:last-child .list-group-item:last-child,
.panel > .panel-collapse > .list-group:last-child .list-group-item:last-child {
  border-bottom: 0;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .panel-heading + .panel-collapse > .list-group .list-group-item:first-child {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.panel-heading + .list-group .list-group-item:first-child {
  border-top-width: 0;
}
.list-group + .panel-footer {
  border-top-width: 0;
}
.panel > .table,
.panel > .table-responsive > .table,
.panel > .panel-collapse > .table {
  margin-bottom: 0;
}
.panel > .table caption,
.panel > .table-responsive > .table caption,
.panel > .panel-collapse > .table caption {
  padding-right: 15px;
  padding-left: 15px;
}
.panel > .table:first-child,
.panel > .table-responsive:first-child > .table:first-child {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:first-child {
  border-top-left-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:last-child {
  border-top-right-radius: 3px;
}
.panel > .table:last-child,
.panel > .table-responsive:last-child > .table:last-child {
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child {
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:first-child {
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:last-child {
  border-bottom-right-radius: 3px;
}
.panel > .panel-body + .table,
.panel > .panel-body + .table-responsive,
.panel > .table + .panel-body,
.panel > .table-responsive + .panel-body {
  border-top: 1px solid #ddd;
}
.panel > .table > tbody:first-child > tr:first-child th,
.panel > .table > tbody:first-child > tr:first-child td {
  border-top: 0;
}
.panel > .table-bordered,
.panel > .table-responsive > .table-bordered {
  border: 0;
}
.panel > .table-bordered > thead > tr > th:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:first-child,
.panel > .table-bordered > tbody > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:first-child,
.panel > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-bordered > thead > tr > td:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:first-child,
.panel > .table-bordered > tbody > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:first-child,
.panel > .table-bordered > tfoot > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:first-child {
  border-left: 0;
}
.panel > .table-bordered > thead > tr > th:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:last-child,
.panel > .table-bordered > tbody > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:last-child,
.panel > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-bordered > thead > tr > td:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:last-child,
.panel > .table-bordered > tbody > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:last-child,
.panel > .table-bordered > tfoot > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:last-child {
  border-right: 0;
}
.panel > .table-bordered > thead > tr:first-child > td,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > td,
.panel > .table-bordered > tbody > tr:first-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > td,
.panel > .table-bordered > thead > tr:first-child > th,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > th,
.panel > .table-bordered > tbody > tr:first-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > th {
  border-bottom: 0;
}
.panel > .table-bordered > tbody > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > td,
.panel > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-bordered > tbody > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > th,
.panel > .table-bordered > tfoot > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > th {
  border-bottom: 0;
}
.panel > .table-responsive {
  margin-bottom: 0;
  border: 0;
}
.panel-group {
  margin-bottom: 20px;
}
.panel-group .panel {
  margin-bottom: 0;
  border-radius: 4px;
}
.panel-group .panel + .panel {
  margin-top: 5px;
}
.panel-group .panel-heading {
  border-bottom: 0;
}
.panel-group .panel-heading + .panel-collapse > .panel-body,
.panel-group .panel-heading + .panel-collapse > .list-group {
  border-top: 1px solid #ddd;
}
.panel-group .panel-footer {
  border-top: 0;
}
.panel-group .panel-footer + .panel-collapse .panel-body {
  border-bottom: 1px solid #ddd;
}
.panel-default {
  border-color: #ddd;
}
.panel-default > .panel-heading {
  color: #333;
  background-color: #f5f5f5;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}
.panel-primary {
  border-color: #337ab7;
}
.panel-primary > .panel-heading {
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.panel-primary > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #337ab7;
}
.panel-primary > .panel-heading .badge {
  color: #337ab7;
  background-color: #fff;
}
.panel-primary > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #337ab7;
}
.panel-success {
  border-color: #d6e9c6;
}
.panel-success > .panel-heading {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.panel-success > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #d6e9c6;
}
.panel-success > .panel-heading .badge {
  color: #dff0d8;
  background-color: #3c763d;
}
.panel-success > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #d6e9c6;
}
.panel-info {
  border-color: #bce8f1;
}
.panel-info > .panel-heading {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.panel-info > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #bce8f1;
}
.panel-info > .panel-heading .badge {
  color: #d9edf7;
  background-color: #31708f;
}
.panel-info > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #bce8f1;
}
.panel-warning {
  border-color: #faebcc;
}
.panel-warning > .panel-heading {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.panel-warning > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #faebcc;
}
.panel-warning > .panel-heading .badge {
  color: #fcf8e3;
  background-color: #8a6d3b;
}
.panel-warning > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #faebcc;
}
.panel-danger {
  border-color: #ebccd1;
}
.panel-danger > .panel-heading {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.panel-danger > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ebccd1;
}
.panel-danger > .panel-heading .badge {
  color: #f2dede;
  background-color: #a94442;
}
.panel-danger > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ebccd1;
}
.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive .embed-responsive-item,
.embed-responsive iframe,
.embed-responsive embed,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border: 0;
}
.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}
.embed-responsive-4by3 {
  padding-bottom: 75%;
}
.well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
}
.well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, .15);
}
.well-lg {
  padding: 24px;
  border-radius: 6px;
}
.well-sm {
  padding: 9px;
  border-radius: 3px;
}
.close {
  float: right;
  font-size: 21px;
  font-weight: bold;
  line-height: 1;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  filter: alpha(opacity=20);
  opacity: .2;
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  filter: alpha(opacity=50);
  opacity: .5;
}
button.close {
  -webkit-appearance: none;
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
}
.modal-open {
  overflow: hidden;
}
.modal {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1050;
  display: none;
  overflow: hidden;
  -webkit-overflow-scrolling: touch;
  outline: 0;
}
.modal.fade .modal-dialog {
  -webkit-transition: -webkit-transform .3s ease-out;
       -o-transition:      -o-transform .3s ease-out;
          transition:         transform .3s ease-out;
  -webkit-transform: translate(0, -25%);
      -ms-transform: translate(0, -25%);
       -o-transform: translate(0, -25%);
          transform: translate(0, -25%);
}
.modal.in .modal-dialog {
  -webkit-transform: translate(0, 0);
      -ms-transform: translate(0, 0);
       -o-transform: translate(0, 0);
          transform: translate(0, 0);
}
.modal-open .modal {
  overflow-x: hidden;
  overflow-y: auto;
}
.modal-dialog {
  position: relative;
  width: auto;
  margin: 10px;
}
.modal-content {
  position: relative;
  background-color: #fff;
  -webkit-background-clip: padding-box;
          background-clip: padding-box;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, .2);
  border-radius: 6px;
  outline: 0;
  -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
          box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000;
}
.modal-backdrop.fade {
  filter: alpha(opacity=0);
  opacity: 0;
}
.modal-backdrop.in {
  filter: alpha(opacity=50);
  opacity: .5;
}
.modal-header {
  padding: 15px;
  border-bottom: 1px solid #e5e5e5;
}
.modal-header .close {
  margin-top: -2px;
}
.modal-title {
  margin: 0;
  line-height: 1.42857143;
}
.modal-body {
  position: relative;
  padding: 15px;
}
.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 1px solid #e5e5e5;
}
.modal-footer .btn + .btn {
  margin-bottom: 0;
  margin-left: 5px;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.modal-scrollbar-measure {
  position: absolute;
  top: -9999px;
  width: 50px;
  height: 50px;
  overflow: scroll;
}
@media (min-width: 768px) {
  .modal-dialog {
    width: 600px;
    margin: 30px auto;
  }
  .modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
            box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
  }
  .modal-sm {
    width: 300px;
  }
}
@media (min-width: 992px) {
  .modal-lg {
    width: 900px;
  }
}
.tooltip {
  position: absolute;
  z-index: 1070;
  display: block;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 12px;
  font-style: normal;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  letter-spacing: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  white-space: normal;
  filter: alpha(opacity=0);
  opacity: 0;

  line-break: auto;
}
.tooltip.in {
  filter: alpha(opacity=90);
  opacity: .9;
}
.tooltip.top {
  padding: 5px 0;
  margin-top: -3px;
}
.tooltip.right {
  padding: 0 5px;
  margin-left: 3px;
}
.tooltip.bottom {
  padding: 5px 0;
  margin-top: 3px;
}
.tooltip.left {
  padding: 0 5px;
  margin-left: -3px;
}
.tooltip-inner {
  max-width: 200px;
  padding: 3px 8px;
  color: #fff;
  text-align: center;
  background-color: #000;
  border-radius: 4px;
}
.tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
  display:none;
}
.tooltip.top-left .tooltip-arrow {
  right: 5px;
  bottom: 0;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-right .tooltip-arrow {
  bottom: 0;
  left: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000;
}
.tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000;
}
.tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-left .tooltip-arrow {
  top: 0;
  right: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-right .tooltip-arrow {
  top: 0;
  left: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1060;
  display: none;
  max-width: 276px;
  padding: 1px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 14px;
  font-style: normal;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  letter-spacing: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  white-space: normal;
  background-color: #fff;
  -webkit-background-clip: padding-box;
          background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, .2);
  border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
          box-shadow: 0 5px 10px rgba(0, 0, 0, .2);

  line-break: auto;
}
.popover.top {
  margin-top: -10px;
}
.popover.right {
  margin-left: 10px;
}
.popover.bottom {
  margin-top: 10px;
}
.popover.left {
  margin-left: -10px;
}
.popover-title {
  padding: 8px 14px;
  margin: 0;
  font-size: 14px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  border-radius: 5px 5px 0 0;
}
.popover-content {
  padding: 9px 14px;
}
.popover > .arrow,
.popover > .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.popover > .arrow {
  border-width: 11px;
}
.popover > .arrow:after {
  content: "";
  border-width: 10px;
}
.popover.top > .arrow {
  bottom: -11px;
  left: 50%;
  margin-left: -11px;
  border-top-color: #999;
  border-top-color: rgba(0, 0, 0, .25);
  border-bottom-width: 0;
}
.popover.top > .arrow:after {
  bottom: 1px;
  margin-left: -10px;
  content: " ";
  border-top-color: #fff;
  border-bottom-width: 0;
}
.popover.right > .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-right-color: #999;
  border-right-color: rgba(0, 0, 0, .25);
  border-left-width: 0;
}
.popover.right > .arrow:after {
  bottom: -10px;
  left: 1px;
  content: " ";
  border-right-color: #fff;
  border-left-width: 0;
}
.popover.bottom > .arrow {
  top: -11px;
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999;
  border-bottom-color: rgba(0, 0, 0, .25);
}
.popover.bottom > .arrow:after {
  top: 1px;
  margin-left: -10px;
  content: " ";
  border-top-width: 0;
  border-bottom-color: #fff;
}
.popover.left > .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999;
  border-left-color: rgba(0, 0, 0, .25);
}
.popover.left > .arrow:after {
  right: 1px;
  bottom: -10px;
  content: " ";
  border-right-width: 0;
  border-left-color: #fff;
}
.carousel {
  position: relative;
}
.carousel-inner {
  position: relative;
  width: 100%;
  overflow: hidden;
}
.carousel-inner > .item {
  position: relative;
  display: none;
  -webkit-transition: .6s ease-in-out left;
       -o-transition: .6s ease-in-out left;
          transition: .6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .carousel-inner > .item {
    -webkit-transition: -webkit-transform .6s ease-in-out;
         -o-transition:      -o-transform .6s ease-in-out;
            transition:         transform .6s ease-in-out;

    -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
    -webkit-perspective: 1000px;
            perspective: 1000px;
  }
  .carousel-inner > .item.next,
  .carousel-inner > .item.active.right {
    left: 0;
    -webkit-transform: translate3d(100%, 0, 0);
            transform: translate3d(100%, 0, 0);
  }
  .carousel-inner > .item.prev,
  .carousel-inner > .item.active.left {
    left: 0;
    -webkit-transform: translate3d(-100%, 0, 0);
            transform: translate3d(-100%, 0, 0);
  }
  .carousel-inner > .item.next.left,
  .carousel-inner > .item.prev.right,
  .carousel-inner > .item.active {
    left: 0;
    -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  width: 15%;
  font-size: 20px;
  color: #fff;
  text-align: center;
  background-color: rgba(0, 0, 0, 0);
  filter: alpha(opacity=50);
  opacity: .5;
}
.carousel-control.left {
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
  background-repeat: repeat-x;
}
.carousel-control.right {
  right: 0;
  left: auto;
}
.carousel-control:hover,
.carousel-control:focus {
  color: #fff;
  text-decoration: none;
  filter: alpha(opacity=90);
  outline: 0;
  opacity: .9;
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  z-index: 5;
  display: inline-block;
  margin-top: -10px;
}
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
  margin-left: -10px;
}
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
  margin-right: -10px;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  font-family: serif;
  line-height: 1;
}
.carousel-control .icon-prev:before {
  content: '\2039';
}
.carousel-control .icon-next:before {
  content: '\203a';
}
.carousel-indicators {
  position: absolute;
  bottom: 10px;
  left: 50%;
  z-index: 15;
  width: 60%;
  padding-left: 0;
  margin-left: -30%;
  text-align: center;
  list-style: none;
}
.carousel-indicators li {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 1px;
  text-indent: -999px;
  cursor: pointer;
  background-color: #000 \9;
  background-color: rgba(0, 0, 0, 0);
  border: 1px solid #fff;
  border-radius: 10px;
}
.carousel-indicators .active {
  width: 12px;
  height: 12px;
  margin: 0;
  background-color: #fff;
}
.carousel-caption {
  position: absolute;
  right: 15%;
  bottom: 20px;
  left: 15%;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    margin-right: -10px;
  }
  .carousel-caption {
    right: 20%;
    left: 20%;
    padding-bottom: 30px;
  }
  .carousel-indicators {
    bottom: 20px;
  }
}
.clearfix:before,
.clearfix:after,
.dl-horizontal dd:before,
.dl-horizontal dd:after,
.container:before,
.container:after,
.container-fluid:before,
.container-fluid:after,
.row:before,
.row:after,
.form-horizontal .form-group:before,
.form-horizontal .form-group:after,
.btn-toolbar:before,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:before,
.btn-group-vertical > .btn-group:after,
.nav:before,
.nav:after,
.navbar:before,
.navbar:after,
.navbar-header:before,
.navbar-header:after,
.navbar-collapse:before,
.navbar-collapse:after,
.pager:before,
.pager:after,
.panel-body:before,
.panel-body:after,
.modal-header:before,
.modal-header:after,
.modal-footer:before,
.modal-footer:after {
  display: table;
  content: " ";
}
.clearfix:after,
.dl-horizontal dd:after,
.container:after,
.container-fluid:after,
.row:after,
.form-horizontal .form-group:after,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:after,
.nav:after,
.navbar:after,
.navbar-header:after,
.navbar-collapse:after,
.pager:after,
.panel-body:after,
.modal-header:after,
.modal-footer:after {
  clear: both;
}
.center-block {
  display: block;
  margin-right: auto;
  margin-left: auto;
}
.pull-right {
  float: right;
  padding-left:70px;
}
.pull-left {
  float: left !important;
}
.hide {
  display: none !important;
}
.show {
  display: block !important;
}
.invisible {
  visibility: hidden;
}
.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.hidden {
  display: none !important;
}
.affix {
  position: fixed;
}
@-ms-viewport {
  width: device-width;
}
.visible-xs,
.visible-sm,
.visible-md,
.visible-lg {
  display: none !important;
}
.visible-xs-block,
.visible-xs-inline,
.visible-xs-inline-block,
.visible-sm-block,
.visible-sm-inline,
.visible-sm-inline-block,
.visible-md-block,
.visible-md-inline,
.visible-md-inline-block,
.visible-lg-block,
.visible-lg-inline,
.visible-lg-inline-block {
  display: none !important;
}
@media (max-width: 767px) {
  .visible-xs {
    display: block !important;
  }
  table.visible-xs {
    display: table !important;
  }
  tr.visible-xs {
    display: table-row !important;
  }
  th.visible-xs,
  td.visible-xs {
    display: table-cell !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-block {
    display: block !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline {
    display: inline !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm {
    display: block !important;
  }
  table.visible-sm {
    display: table !important;
  }
  tr.visible-sm {
    display: table-row !important;
  }
  th.visible-sm,
  td.visible-sm {
    display: table-cell !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-block {
    display: block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline {
    display: inline !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md {
    display: block !important;
  }
  table.visible-md {
    display: table !important;
  }
  tr.visible-md {
    display: table-row !important;
  }
  th.visible-md,
  td.visible-md {
    display: table-cell !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-block {
    display: block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline {
    display: inline !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg {
    display: block !important;
  }
  table.visible-lg {
    display: table !important;
  }
  tr.visible-lg {
    display: table-row !important;
  }
  th.visible-lg,
  td.visible-lg {
    display: table-cell !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-block {
    display: block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline {
    display: inline !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline-block {
    display: inline-block !important;
  }
}
@media (max-width: 767px) {
  .hidden-xs {
    display: none !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .hidden-sm {
    display: none !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .hidden-md {
    display: none !important;
  }
}
@media (min-width: 1200px) {
  .hidden-lg {
    display: none !important;
  }
}
.visible-print {
  display: none !important;
}
@media print {
  .visible-print {
    display: block !important;
  }
  table.visible-print {
    display: table !important;
  }
  tr.visible-print {
    display: table-row !important;
  }
  th.visible-print,
  td.visible-print {
    display: table-cell !important;
  }
}
.visible-print-block {
  display: none !important;
}
@media print {
  .visible-print-block {
    display: block !important;
  }
}
.visible-print-inline {
  display: none !important;
}
@media print {
  .visible-print-inline {
    display: inline !important;
  }
}
.visible-print-inline-block {
  display: none !important;
}
@media print {
  .visible-print-inline-block {
    display: inline-block !important;
  }
}
@media print {
  .hidden-print {
    display: none !important;
  }
}
/*# sourceMappingURL=bootstrap.css.map */

	
	</style>
    <!--fonts-->
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700" rel="stylesheet">
    <style>
	/*!
 *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome
 *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)
 */@font-face{font-family:'FontAwesome';src:url('../fonts/fontawesome-webfont3e6e.eot?v=4.7.0');src:url('../fonts/fontawesome-webfontd41d.eot?#iefix&v=4.7.0') format('embedded-opentype'),url('../fonts/fontawesome-webfont3e6e.woff2?v=4.7.0') format('woff2'),url('../fonts/fontawesome-webfont3e6e.woff?v=4.7.0') format('woff'),url('../fonts/fontawesome-webfont3e6e.ttf?v=4.7.0') format('truetype'),url('../fonts/fontawesome-webfont3e6e.svg?v=4.7.0#fontawesomeregular') format('svg');font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left{margin-right:.3em}.fa.fa-pull-right{margin-left:.3em}.pull-right{float:right}.pull-left{float:left}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";-webkit-transform:scale(-1, 1);-ms-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";-webkit-transform:scale(1, -1);-ms-transform:scale(1, -1);transform:scale(1, -1)}:root .fa-rotate-90,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-flip-horizontal,:root .fa-flip-vertical{filter:none}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:"\f000"}.fa-music:before{content:"\f001"}.fa-search:before{content:"\f002"}.fa-envelope-o:before{content:"\f003"}.fa-heart:before{content:"\f004"}.fa-star:before{content:"\f005"}.fa-star-o:before{content:"\f006"}.fa-user:before{content:"\f007"}.fa-film:before{content:"\f008"}.fa-th-large:before{content:"\f009"}.fa-th:before{content:"\f00a"}.fa-th-list:before{content:"\f00b"}.fa-check:before{content:"\f00c"}.fa-remove:before,.fa-close:before,.fa-times:before{content:"\f00d"}.fa-search-plus:before{content:"\f00e"}.fa-search-minus:before{content:"\f010"}.fa-power-off:before{content:"\f011"}.fa-signal:before{content:"\f012"}.fa-gear:before,.fa-cog:before{content:"\f013"}.fa-trash-o:before{content:"\f014"}.fa-home:before{content:"\f015"}.fa-file-o:before{content:"\f016"}.fa-clock-o:before{content:"\f017"}.fa-road:before{content:"\f018"}.fa-download:before{content:"\f019"}.fa-arrow-circle-o-down:before{content:"\f01a"}.fa-arrow-circle-o-up:before{content:"\f01b"}.fa-inbox:before{content:"\f01c"}.fa-play-circle-o:before{content:"\f01d"}.fa-rotate-right:before,.fa-repeat:before{content:"\f01e"}.fa-refresh:before{content:"\f021"}.fa-list-alt:before{content:"\f022"}.fa-lock:before{content:"\f023"}.fa-flag:before{content:"\f024"}.fa-headphones:before{content:"\f025"}.fa-volume-off:before{content:"\f026"}.fa-volume-down:before{content:"\f027"}.fa-volume-up:before{content:"\f028"}.fa-qrcode:before{content:"\f029"}.fa-barcode:before{content:"\f02a"}.fa-tag:before{content:"\f02b"}.fa-tags:before{content:"\f02c"}.fa-book:before{content:"\f02d"}.fa-bookmark:before{content:"\f02e"}.fa-print:before{content:"\f02f"}.fa-camera:before{content:"\f030"}.fa-font:before{content:"\f031"}.fa-bold:before{content:"\f032"}.fa-italic:before{content:"\f033"}.fa-text-height:before{content:"\f034"}.fa-text-width:before{content:"\f035"}.fa-align-left:before{content:"\f036"}.fa-align-center:before{content:"\f037"}.fa-align-right:before{content:"\f038"}.fa-align-justify:before{content:"\f039"}.fa-list:before{content:"\f03a"}.fa-dedent:before,.fa-outdent:before{content:"\f03b"}.fa-indent:before{content:"\f03c"}.fa-video-camera:before{content:"\f03d"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:"\f03e"}.fa-pencil:before{content:"\f040"}.fa-map-marker:before{content:"\f041"}.fa-adjust:before{content:"\f042"}.fa-tint:before{content:"\f043"}.fa-edit:before,.fa-pencil-square-o:before{content:"\f044"}.fa-share-square-o:before{content:"\f045"}.fa-check-square-o:before{content:"\f046"}.fa-arrows:before{content:"\f047"}.fa-step-backward:before{content:"\f048"}.fa-fast-backward:before{content:"\f049"}.fa-backward:before{content:"\f04a"}.fa-play:before{content:"\f04b"}.fa-pause:before{content:"\f04c"}.fa-stop:before{content:"\f04d"}.fa-forward:before{content:"\f04e"}.fa-fast-forward:before{content:"\f050"}.fa-step-forward:before{content:"\f051"}.fa-eject:before{content:"\f052"}.fa-chevron-left:before{content:"\f053"}.fa-chevron-right:before{content:"\f054"}.fa-plus-circle:before{content:"\f055"}.fa-minus-circle:before{content:"\f056"}.fa-times-circle:before{content:"\f057"}.fa-check-circle:before{content:"\f058"}.fa-question-circle:before{content:"\f059"}.fa-info-circle:before{content:"\f05a"}.fa-crosshairs:before{content:"\f05b"}.fa-times-circle-o:before{content:"\f05c"}.fa-check-circle-o:before{content:"\f05d"}.fa-ban:before{content:"\f05e"}.fa-arrow-left:before{content:"\f060"}.fa-arrow-right:before{content:"\f061"}.fa-arrow-up:before{content:"\f062"}.fa-arrow-down:before{content:"\f063"}.fa-mail-forward:before,.fa-share:before{content:"\f064"}.fa-expand:before{content:"\f065"}.fa-compress:before{content:"\f066"}.fa-plus:before{content:"\f067"}.fa-minus:before{content:"\f068"}.fa-asterisk:before{content:"\f069"}.fa-exclamation-circle:before{content:"\f06a"}.fa-gift:before{content:"\f06b"}.fa-leaf:before{content:"\f06c"}.fa-fire:before{content:"\f06d"}.fa-eye:before{content:"\f06e"}.fa-eye-slash:before{content:"\f070"}.fa-warning:before,.fa-exclamation-triangle:before{content:"\f071"}.fa-plane:before{content:"\f072"}.fa-calendar:before{content:"\f073"}.fa-random:before{content:"\f074"}.fa-comment:before{content:"\f075"}.fa-magnet:before{content:"\f076"}.fa-chevron-up:before{content:"\f077"}.fa-chevron-down:before{content:"\f078"}.fa-retweet:before{content:"\f079"}.fa-shopping-cart:before{content:"\f07a"}.fa-folder:before{content:"\f07b"}.fa-folder-open:before{content:"\f07c"}.fa-arrows-v:before{content:"\f07d"}.fa-arrows-h:before{content:"\f07e"}.fa-bar-chart-o:before,.fa-bar-chart:before{content:"\f080"}.fa-twitter-square:before{content:"\f081"}.fa-facebook-square:before{content:"\f082"}.fa-camera-retro:before{content:"\f083"}.fa-key:before{content:"\f084"}.fa-gears:before,.fa-cogs:before{content:"\f085"}.fa-comments:before{content:"\f086"}.fa-thumbs-o-up:before{content:"\f087"}.fa-thumbs-o-down:before{content:"\f088"}.fa-star-half:before{content:"\f089"}.fa-heart-o:before{content:"\f08a"}.fa-sign-out:before{content:"\f08b"}.fa-linkedin-square:before{content:"\f08c"}.fa-thumb-tack:before{content:"\f08d"}.fa-external-link:before{content:"\f08e"}.fa-sign-in:before{content:"\f090"}.fa-trophy:before{content:"\f091"}.fa-github-square:before{content:"\f092"}.fa-upload:before{content:"\f093"}.fa-lemon-o:before{content:"\f094"}.fa-phone:before{content:"\f095"}.fa-square-o:before{content:"\f096"}.fa-bookmark-o:before{content:"\f097"}.fa-phone-square:before{content:"\f098"}.fa-twitter:before{content:"\f099"}.fa-facebook-f:before,.fa-facebook:before{content:"\f09a"}.fa-github:before{content:"\f09b"}.fa-unlock:before{content:"\f09c"}.fa-credit-card:before{content:"\f09d"}.fa-feed:before,.fa-rss:before{content:"\f09e"}.fa-hdd-o:before{content:"\f0a0"}.fa-bullhorn:before{content:"\f0a1"}.fa-bell:before{content:"\f0f3"}.fa-certificate:before{content:"\f0a3"}.fa-hand-o-right:before{content:"\f0a4"}.fa-hand-o-left:before{content:"\f0a5"}.fa-hand-o-up:before{content:"\f0a6"}.fa-hand-o-down:before{content:"\f0a7"}.fa-arrow-circle-left:before{content:"\f0a8"}.fa-arrow-circle-right:before{content:"\f0a9"}.fa-arrow-circle-up:before{content:"\f0aa"}.fa-arrow-circle-down:before{content:"\f0ab"}.fa-globe:before{content:"\f0ac"}.fa-wrench:before{content:"\f0ad"}.fa-tasks:before{content:"\f0ae"}.fa-filter:before{content:"\f0b0"}.fa-briefcase:before{content:"\f0b1"}.fa-arrows-alt:before{content:"\f0b2"}.fa-group:before,.fa-users:before{content:"\f0c0"}.fa-chain:before,.fa-link:before{content:"\f0c1"}.fa-cloud:before{content:"\f0c2"}.fa-flask:before{content:"\f0c3"}.fa-cut:before,.fa-scissors:before{content:"\f0c4"}.fa-copy:before,.fa-files-o:before{content:"\f0c5"}.fa-paperclip:before{content:"\f0c6"}.fa-save:before,.fa-floppy-o:before{content:"\f0c7"}.fa-square:before{content:"\f0c8"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:"\f0c9"}.fa-list-ul:before{content:"\f0ca"}.fa-list-ol:before{content:"\f0cb"}.fa-strikethrough:before{content:"\f0cc"}.fa-underline:before{content:"\f0cd"}.fa-table:before{content:"\f0ce"}.fa-magic:before{content:"\f0d0"}.fa-truck:before{content:"\f0d1"}.fa-pinterest:before{content:"\f0d2"}.fa-pinterest-square:before{content:"\f0d3"}.fa-google-plus-square:before{content:"\f0d4"}.fa-google-plus:before{content:"\f0d5"}.fa-money:before{content:"\f0d6"}.fa-caret-down:before{content:"\f0d7"}.fa-caret-up:before{content:"\f0d8"}.fa-caret-left:before{content:"\f0d9"}.fa-caret-right:before{content:"\f0da"}.fa-columns:before{content:"\f0db"}.fa-unsorted:before,.fa-sort:before{content:"\f0dc"}.fa-sort-down:before,.fa-sort-desc:before{content:"\f0dd"}.fa-sort-up:before,.fa-sort-asc:before{content:"\f0de"}.fa-envelope:before{content:"\f0e0"}.fa-linkedin:before{content:"\f0e1"}.fa-rotate-left:before,.fa-undo:before{content:"\f0e2"}.fa-legal:before,.fa-gavel:before{content:"\f0e3"}.fa-dashboard:before,.fa-tachometer:before{content:"\f0e4"}.fa-comment-o:before{content:"\f0e5"}.fa-comments-o:before{content:"\f0e6"}.fa-flash:before,.fa-bolt:before{content:"\f0e7"}.fa-sitemap:before{content:"\f0e8"}.fa-umbrella:before{content:"\f0e9"}.fa-paste:before,.fa-clipboard:before{content:"\f0ea"}.fa-lightbulb-o:before{content:"\f0eb"}.fa-exchange:before{content:"\f0ec"}.fa-cloud-download:before{content:"\f0ed"}.fa-cloud-upload:before{content:"\f0ee"}.fa-user-md:before{content:"\f0f0"}.fa-stethoscope:before{content:"\f0f1"}.fa-suitcase:before{content:"\f0f2"}.fa-bell-o:before{content:"\f0a2"}.fa-coffee:before{content:"\f0f4"}.fa-cutlery:before{content:"\f0f5"}.fa-file-text-o:before{content:"\f0f6"}.fa-building-o:before{content:"\f0f7"}.fa-hospital-o:before{content:"\f0f8"}.fa-ambulance:before{content:"\f0f9"}.fa-medkit:before{content:"\f0fa"}.fa-fighter-jet:before{content:"\f0fb"}.fa-beer:before{content:"\f0fc"}.fa-h-square:before{content:"\f0fd"}.fa-plus-square:before{content:"\f0fe"}.fa-angle-double-left:before{content:"\f100"}.fa-angle-double-right:before{content:"\f101"}.fa-angle-double-up:before{content:"\f102"}.fa-angle-double-down:before{content:"\f103"}.fa-angle-left:before{content:"\f104"}.fa-angle-right:before{content:"\f105"}.fa-angle-up:before{content:"\f106"}.fa-angle-down:before{content:"\f107"}.fa-desktop:before{content:"\f108"}.fa-laptop:before{content:"\f109"}.fa-tablet:before{content:"\f10a"}.fa-mobile-phone:before,.fa-mobile:before{content:"\f10b"}.fa-circle-o:before{content:"\f10c"}.fa-quote-left:before{content:"\f10d"}.fa-quote-right:before{content:"\f10e"}.fa-spinner:before{content:"\f110"}.fa-circle:before{content:"\f111"}.fa-mail-reply:before,.fa-reply:before{content:"\f112"}.fa-github-alt:before{content:"\f113"}.fa-folder-o:before{content:"\f114"}.fa-folder-open-o:before{content:"\f115"}.fa-smile-o:before{content:"\f118"}.fa-frown-o:before{content:"\f119"}.fa-meh-o:before{content:"\f11a"}.fa-gamepad:before{content:"\f11b"}.fa-keyboard-o:before{content:"\f11c"}.fa-flag-o:before{content:"\f11d"}.fa-flag-checkered:before{content:"\f11e"}.fa-terminal:before{content:"\f120"}.fa-code:before{content:"\f121"}.fa-mail-reply-all:before,.fa-reply-all:before{content:"\f122"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:"\f123"}.fa-location-arrow:before{content:"\f124"}.fa-crop:before{content:"\f125"}.fa-code-fork:before{content:"\f126"}.fa-unlink:before,.fa-chain-broken:before{content:"\f127"}.fa-question:before{content:"\f128"}.fa-info:before{content:"\f129"}.fa-exclamation:before{content:"\f12a"}.fa-superscript:before{content:"\f12b"}.fa-subscript:before{content:"\f12c"}.fa-eraser:before{content:"\f12d"}.fa-puzzle-piece:before{content:"\f12e"}.fa-microphone:before{content:"\f130"}.fa-microphone-slash:before{content:"\f131"}.fa-shield:before{content:"\f132"}.fa-calendar-o:before{content:"\f133"}.fa-fire-extinguisher:before{content:"\f134"}.fa-rocket:before{content:"\f135"}.fa-maxcdn:before{content:"\f136"}.fa-chevron-circle-left:before{content:"\f137"}.fa-chevron-circle-right:before{content:"\f138"}.fa-chevron-circle-up:before{content:"\f139"}.fa-chevron-circle-down:before{content:"\f13a"}.fa-html5:before{content:"\f13b"}.fa-css3:before{content:"\f13c"}.fa-anchor:before{content:"\f13d"}.fa-unlock-alt:before{content:"\f13e"}.fa-bullseye:before{content:"\f140"}.fa-ellipsis-h:before{content:"\f141"}.fa-ellipsis-v:before{content:"\f142"}.fa-rss-square:before{content:"\f143"}.fa-play-circle:before{content:"\f144"}.fa-ticket:before{content:"\f145"}.fa-minus-square:before{content:"\f146"}.fa-minus-square-o:before{content:"\f147"}.fa-level-up:before{content:"\f148"}.fa-level-down:before{content:"\f149"}.fa-check-square:before{content:"\f14a"}.fa-pencil-square:before{content:"\f14b"}.fa-external-link-square:before{content:"\f14c"}.fa-share-square:before{content:"\f14d"}.fa-compass:before{content:"\f14e"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:"\f150"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:"\f151"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:"\f152"}.fa-euro:before,.fa-eur:before{content:"\f153"}.fa-gbp:before{content:"\f154"}.fa-dollar:before,.fa-usd:before{content:"\f155"}.fa-rupee:before,.fa-inr:before{content:"\f156"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:"\f157"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:"\f158"}.fa-won:before,.fa-krw:before{content:"\f159"}.fa-bitcoin:before,.fa-btc:before{content:"\f15a"}.fa-file:before{content:"\f15b"}.fa-file-text:before{content:"\f15c"}.fa-sort-alpha-asc:before{content:"\f15d"}.fa-sort-alpha-desc:before{content:"\f15e"}.fa-sort-amount-asc:before{content:"\f160"}.fa-sort-amount-desc:before{content:"\f161"}.fa-sort-numeric-asc:before{content:"\f162"}.fa-sort-numeric-desc:before{content:"\f163"}.fa-thumbs-up:before{content:"\f164"}.fa-thumbs-down:before{content:"\f165"}.fa-youtube-square:before{content:"\f166"}.fa-youtube:before{content:"\f167"}.fa-xing:before{content:"\f168"}.fa-xing-square:before{content:"\f169"}.fa-youtube-play:before{content:"\f16a"}.fa-dropbox:before{content:"\f16b"}.fa-stack-overflow:before{content:"\f16c"}.fa-instagram:before{content:"\f16d"}.fa-flickr:before{content:"\f16e"}.fa-adn:before{content:"\f170"}.fa-bitbucket:before{content:"\f171"}.fa-bitbucket-square:before{content:"\f172"}.fa-tumblr:before{content:"\f173"}.fa-tumblr-square:before{content:"\f174"}.fa-long-arrow-down:before{content:"\f175"}.fa-long-arrow-up:before{content:"\f176"}.fa-long-arrow-left:before{content:"\f177"}.fa-long-arrow-right:before{content:"\f178"}.fa-apple:before{content:"\f179"}.fa-windows:before{content:"\f17a"}.fa-android:before{content:"\f17b"}.fa-linux:before{content:"\f17c"}.fa-dribbble:before{content:"\f17d"}.fa-skype:before{content:"\f17e"}.fa-foursquare:before{content:"\f180"}.fa-trello:before{content:"\f181"}.fa-female:before{content:"\f182"}.fa-male:before{content:"\f183"}.fa-gittip:before,.fa-gratipay:before{content:"\f184"}.fa-sun-o:before{content:"\f185"}.fa-moon-o:before{content:"\f186"}.fa-archive:before{content:"\f187"}.fa-bug:before{content:"\f188"}.fa-vk:before{content:"\f189"}.fa-weibo:before{content:"\f18a"}.fa-renren:before{content:"\f18b"}.fa-pagelines:before{content:"\f18c"}.fa-stack-exchange:before{content:"\f18d"}.fa-arrow-circle-o-right:before{content:"\f18e"}.fa-arrow-circle-o-left:before{content:"\f190"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:"\f191"}.fa-dot-circle-o:before{content:"\f192"}.fa-wheelchair:before{content:"\f193"}.fa-vimeo-square:before{content:"\f194"}.fa-turkish-lira:before,.fa-try:before{content:"\f195"}.fa-plus-square-o:before{content:"\f196"}.fa-space-shuttle:before{content:"\f197"}.fa-slack:before{content:"\f198"}.fa-envelope-square:before{content:"\f199"}.fa-wordpress:before{content:"\f19a"}.fa-openid:before{content:"\f19b"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:"\f19c"}.fa-mortar-board:before,.fa-graduation-cap:before{content:"\f19d"}.fa-yahoo:before{content:"\f19e"}.fa-google:before{content:"\f1a0"}.fa-reddit:before{content:"\f1a1"}.fa-reddit-square:before{content:"\f1a2"}.fa-stumbleupon-circle:before{content:"\f1a3"}.fa-stumbleupon:before{content:"\f1a4"}.fa-delicious:before{content:"\f1a5"}.fa-digg:before{content:"\f1a6"}.fa-pied-piper-pp:before{content:"\f1a7"}.fa-pied-piper-alt:before{content:"\f1a8"}.fa-drupal:before{content:"\f1a9"}.fa-joomla:before{content:"\f1aa"}.fa-language:before{content:"\f1ab"}.fa-fax:before{content:"\f1ac"}.fa-building:before{content:"\f1ad"}.fa-child:before{content:"\f1ae"}.fa-paw:before{content:"\f1b0"}.fa-spoon:before{content:"\f1b1"}.fa-cube:before{content:"\f1b2"}.fa-cubes:before{content:"\f1b3"}.fa-behance:before{content:"\f1b4"}.fa-behance-square:before{content:"\f1b5"}.fa-steam:before{content:"\f1b6"}.fa-steam-square:before{content:"\f1b7"}.fa-recycle:before{content:"\f1b8"}.fa-automobile:before,.fa-car:before{content:"\f1b9"}.fa-cab:before,.fa-taxi:before{content:"\f1ba"}.fa-tree:before{content:"\f1bb"}.fa-spotify:before{content:"\f1bc"}.fa-deviantart:before{content:"\f1bd"}.fa-soundcloud:before{content:"\f1be"}.fa-database:before{content:"\f1c0"}.fa-file-pdf-o:before{content:"\f1c1"}.fa-file-word-o:before{content:"\f1c2"}.fa-file-excel-o:before{content:"\f1c3"}.fa-file-powerpoint-o:before{content:"\f1c4"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:"\f1c5"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:"\f1c6"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:"\f1c7"}.fa-file-movie-o:before,.fa-file-video-o:before{content:"\f1c8"}.fa-file-code-o:before{content:"\f1c9"}.fa-vine:before{content:"\f1ca"}.fa-codepen:before{content:"\f1cb"}.fa-jsfiddle:before{content:"\f1cc"}.fa-life-bouy:before,.fa-life-buoy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:"\f1cd"}.fa-circle-o-notch:before{content:"\f1ce"}.fa-ra:before,.fa-resistance:before,.fa-rebel:before{content:"\f1d0"}.fa-ge:before,.fa-empire:before{content:"\f1d1"}.fa-git-square:before{content:"\f1d2"}.fa-git:before{content:"\f1d3"}.fa-y-combinator-square:before,.fa-yc-square:before,.fa-hacker-news:before{content:"\f1d4"}.fa-tencent-weibo:before{content:"\f1d5"}.fa-qq:before{content:"\f1d6"}.fa-wechat:before,.fa-weixin:before{content:"\f1d7"}.fa-send:before,.fa-paper-plane:before{content:"\f1d8"}.fa-send-o:before,.fa-paper-plane-o:before{content:"\f1d9"}.fa-history:before{content:"\f1da"}.fa-circle-thin:before{content:"\f1db"}.fa-header:before{content:"\f1dc"}.fa-paragraph:before{content:"\f1dd"}.fa-sliders:before{content:"\f1de"}.fa-share-alt:before{content:"\f1e0"}.fa-share-alt-square:before{content:"\f1e1"}.fa-bomb:before{content:"\f1e2"}.fa-soccer-ball-o:before,.fa-futbol-o:before{content:"\f1e3"}.fa-tty:before{content:"\f1e4"}.fa-binoculars:before{content:"\f1e5"}.fa-plug:before{content:"\f1e6"}.fa-slideshare:before{content:"\f1e7"}.fa-twitch:before{content:"\f1e8"}.fa-yelp:before{content:"\f1e9"}.fa-newspaper-o:before{content:"\f1ea"}.fa-wifi:before{content:"\f1eb"}.fa-calculator:before{content:"\f1ec"}.fa-paypal:before{content:"\f1ed"}.fa-google-wallet:before{content:"\f1ee"}.fa-cc-visa:before{content:"\f1f0"}.fa-cc-mastercard:before{content:"\f1f1"}.fa-cc-discover:before{content:"\f1f2"}.fa-cc-amex:before{content:"\f1f3"}.fa-cc-paypal:before{content:"\f1f4"}.fa-cc-stripe:before{content:"\f1f5"}.fa-bell-slash:before{content:"\f1f6"}.fa-bell-slash-o:before{content:"\f1f7"}.fa-trash:before{content:"\f1f8"}.fa-copyright:before{content:"\f1f9"}.fa-at:before{content:"\f1fa"}.fa-eyedropper:before{content:"\f1fb"}.fa-paint-brush:before{content:"\f1fc"}.fa-birthday-cake:before{content:"\f1fd"}.fa-area-chart:before{content:"\f1fe"}.fa-pie-chart:before{content:"\f200"}.fa-line-chart:before{content:"\f201"}.fa-lastfm:before{content:"\f202"}.fa-lastfm-square:before{content:"\f203"}.fa-toggle-off:before{content:"\f204"}.fa-toggle-on:before{content:"\f205"}.fa-bicycle:before{content:"\f206"}.fa-bus:before{content:"\f207"}.fa-ioxhost:before{content:"\f208"}.fa-angellist:before{content:"\f209"}.fa-cc:before{content:"\f20a"}.fa-shekel:before,.fa-sheqel:before,.fa-ils:before{content:"\f20b"}.fa-meanpath:before{content:"\f20c"}.fa-buysellads:before{content:"\f20d"}.fa-connectdevelop:before{content:"\f20e"}.fa-dashcube:before{content:"\f210"}.fa-forumbee:before{content:"\f211"}.fa-leanpub:before{content:"\f212"}.fa-sellsy:before{content:"\f213"}.fa-shirtsinbulk:before{content:"\f214"}.fa-simplybuilt:before{content:"\f215"}.fa-skyatlas:before{content:"\f216"}.fa-cart-plus:before{content:"\f217"}.fa-cart-arrow-down:before{content:"\f218"}.fa-diamond:before{content:"\f219"}.fa-ship:before{content:"\f21a"}.fa-user-secret:before{content:"\f21b"}.fa-motorcycle:before{content:"\f21c"}.fa-street-view:before{content:"\f21d"}.fa-heartbeat:before{content:"\f21e"}.fa-venus:before{content:"\f221"}.fa-mars:before{content:"\f222"}.fa-mercury:before{content:"\f223"}.fa-intersex:before,.fa-transgender:before{content:"\f224"}.fa-transgender-alt:before{content:"\f225"}.fa-venus-double:before{content:"\f226"}.fa-mars-double:before{content:"\f227"}.fa-venus-mars:before{content:"\f228"}.fa-mars-stroke:before{content:"\f229"}.fa-mars-stroke-v:before{content:"\f22a"}.fa-mars-stroke-h:before{content:"\f22b"}.fa-neuter:before{content:"\f22c"}.fa-genderless:before{content:"\f22d"}.fa-facebook-official:before{content:"\f230"}.fa-pinterest-p:before{content:"\f231"}.fa-whatsapp:before{content:"\f232"}.fa-server:before{content:"\f233"}.fa-user-plus:before{content:"\f234"}.fa-user-times:before{content:"\f235"}.fa-hotel:before,.fa-bed:before{content:"\f236"}.fa-viacoin:before{content:"\f237"}.fa-train:before{content:"\f238"}.fa-subway:before{content:"\f239"}.fa-medium:before{content:"\f23a"}.fa-yc:before,.fa-y-combinator:before{content:"\f23b"}.fa-optin-monster:before{content:"\f23c"}.fa-opencart:before{content:"\f23d"}.fa-expeditedssl:before{content:"\f23e"}.fa-battery-4:before,.fa-battery:before,.fa-battery-full:before{content:"\f240"}.fa-battery-3:before,.fa-battery-three-quarters:before{content:"\f241"}.fa-battery-2:before,.fa-battery-half:before{content:"\f242"}.fa-battery-1:before,.fa-battery-quarter:before{content:"\f243"}.fa-battery-0:before,.fa-battery-empty:before{content:"\f244"}.fa-mouse-pointer:before{content:"\f245"}.fa-i-cursor:before{content:"\f246"}.fa-object-group:before{content:"\f247"}.fa-object-ungroup:before{content:"\f248"}.fa-sticky-note:before{content:"\f249"}.fa-sticky-note-o:before{content:"\f24a"}.fa-cc-jcb:before{content:"\f24b"}.fa-cc-diners-club:before{content:"\f24c"}.fa-clone:before{content:"\f24d"}.fa-balance-scale:before{content:"\f24e"}.fa-hourglass-o:before{content:"\f250"}.fa-hourglass-1:before,.fa-hourglass-start:before{content:"\f251"}.fa-hourglass-2:before,.fa-hourglass-half:before{content:"\f252"}.fa-hourglass-3:before,.fa-hourglass-end:before{content:"\f253"}.fa-hourglass:before{content:"\f254"}.fa-hand-grab-o:before,.fa-hand-rock-o:before{content:"\f255"}.fa-hand-stop-o:before,.fa-hand-paper-o:before{content:"\f256"}.fa-hand-scissors-o:before{content:"\f257"}.fa-hand-lizard-o:before{content:"\f258"}.fa-hand-spock-o:before{content:"\f259"}.fa-hand-pointer-o:before{content:"\f25a"}.fa-hand-peace-o:before{content:"\f25b"}.fa-trademark:before{content:"\f25c"}.fa-registered:before{content:"\f25d"}.fa-creative-commons:before{content:"\f25e"}.fa-gg:before{content:"\f260"}.fa-gg-circle:before{content:"\f261"}.fa-tripadvisor:before{content:"\f262"}.fa-odnoklassniki:before{content:"\f263"}.fa-odnoklassniki-square:before{content:"\f264"}.fa-get-pocket:before{content:"\f265"}.fa-wikipedia-w:before{content:"\f266"}.fa-safari:before{content:"\f267"}.fa-chrome:before{content:"\f268"}.fa-firefox:before{content:"\f269"}.fa-opera:before{content:"\f26a"}.fa-internet-explorer:before{content:"\f26b"}.fa-tv:before,.fa-television:before{content:"\f26c"}.fa-contao:before{content:"\f26d"}.fa-500px:before{content:"\f26e"}.fa-amazon:before{content:"\f270"}.fa-calendar-plus-o:before{content:"\f271"}.fa-calendar-minus-o:before{content:"\f272"}.fa-calendar-times-o:before{content:"\f273"}.fa-calendar-check-o:before{content:"\f274"}.fa-industry:before{content:"\f275"}.fa-map-pin:before{content:"\f276"}.fa-map-signs:before{content:"\f277"}.fa-map-o:before{content:"\f278"}.fa-map:before{content:"\f279"}.fa-commenting:before{content:"\f27a"}.fa-commenting-o:before{content:"\f27b"}.fa-houzz:before{content:"\f27c"}.fa-vimeo:before{content:"\f27d"}.fa-black-tie:before{content:"\f27e"}.fa-fonticons:before{content:"\f280"}.fa-reddit-alien:before{content:"\f281"}.fa-edge:before{content:"\f282"}.fa-credit-card-alt:before{content:"\f283"}.fa-codiepie:before{content:"\f284"}.fa-modx:before{content:"\f285"}.fa-fort-awesome:before{content:"\f286"}.fa-usb:before{content:"\f287"}.fa-product-hunt:before{content:"\f288"}.fa-mixcloud:before{content:"\f289"}.fa-scribd:before{content:"\f28a"}.fa-pause-circle:before{content:"\f28b"}.fa-pause-circle-o:before{content:"\f28c"}.fa-stop-circle:before{content:"\f28d"}.fa-stop-circle-o:before{content:"\f28e"}.fa-shopping-bag:before{content:"\f290"}.fa-shopping-basket:before{content:"\f291"}.fa-hashtag:before{content:"\f292"}.fa-bluetooth:before{content:"\f293"}.fa-bluetooth-b:before{content:"\f294"}.fa-percent:before{content:"\f295"}.fa-gitlab:before{content:"\f296"}.fa-wpbeginner:before{content:"\f297"}.fa-wpforms:before{content:"\f298"}.fa-envira:before{content:"\f299"}.fa-universal-access:before{content:"\f29a"}.fa-wheelchair-alt:before{content:"\f29b"}.fa-question-circle-o:before{content:"\f29c"}.fa-blind:before{content:"\f29d"}.fa-audio-description:before{content:"\f29e"}.fa-volume-control-phone:before{content:"\f2a0"}.fa-braille:before{content:"\f2a1"}.fa-assistive-listening-systems:before{content:"\f2a2"}.fa-asl-interpreting:before,.fa-american-sign-language-interpreting:before{content:"\f2a3"}.fa-deafness:before,.fa-hard-of-hearing:before,.fa-deaf:before{content:"\f2a4"}.fa-glide:before{content:"\f2a5"}.fa-glide-g:before{content:"\f2a6"}.fa-signing:before,.fa-sign-language:before{content:"\f2a7"}.fa-low-vision:before{content:"\f2a8"}.fa-viadeo:before{content:"\f2a9"}.fa-viadeo-square:before{content:"\f2aa"}.fa-snapchat:before{content:"\f2ab"}.fa-snapchat-ghost:before{content:"\f2ac"}.fa-snapchat-square:before{content:"\f2ad"}.fa-pied-piper:before{content:"\f2ae"}.fa-first-order:before{content:"\f2b0"}.fa-yoast:before{content:"\f2b1"}.fa-themeisle:before{content:"\f2b2"}.fa-google-plus-circle:before,.fa-google-plus-official:before{content:"\f2b3"}.fa-fa:before,.fa-font-awesome:before{content:"\f2b4"}.fa-handshake-o:before{content:"\f2b5"}.fa-envelope-open:before{content:"\f2b6"}.fa-envelope-open-o:before{content:"\f2b7"}.fa-linode:before{content:"\f2b8"}.fa-address-book:before{content:"\f2b9"}.fa-address-book-o:before{content:"\f2ba"}.fa-vcard:before,.fa-address-card:before{content:"\f2bb"}.fa-vcard-o:before,.fa-address-card-o:before{content:"\f2bc"}.fa-user-circle:before{content:"\f2bd"}.fa-user-circle-o:before{content:"\f2be"}.fa-user-o:before{content:"\f2c0"}.fa-id-badge:before{content:"\f2c1"}.fa-drivers-license:before,.fa-id-card:before{content:"\f2c2"}.fa-drivers-license-o:before,.fa-id-card-o:before{content:"\f2c3"}.fa-quora:before{content:"\f2c4"}.fa-free-code-camp:before{content:"\f2c5"}.fa-telegram:before{content:"\f2c6"}.fa-thermometer-4:before,.fa-thermometer:before,.fa-thermometer-full:before{content:"\f2c7"}.fa-thermometer-3:before,.fa-thermometer-three-quarters:before{content:"\f2c8"}.fa-thermometer-2:before,.fa-thermometer-half:before{content:"\f2c9"}.fa-thermometer-1:before,.fa-thermometer-quarter:before{content:"\f2ca"}.fa-thermometer-0:before,.fa-thermometer-empty:before{content:"\f2cb"}.fa-shower:before{content:"\f2cc"}.fa-bathtub:before,.fa-s15:before,.fa-bath:before{content:"\f2cd"}.fa-podcast:before{content:"\f2ce"}.fa-window-maximize:before{content:"\f2d0"}.fa-window-minimize:before{content:"\f2d1"}.fa-window-restore:before{content:"\f2d2"}.fa-times-rectangle:before,.fa-window-close:before{content:"\f2d3"}.fa-times-rectangle-o:before,.fa-window-close-o:before{content:"\f2d4"}.fa-bandcamp:before{content:"\f2d5"}.fa-grav:before{content:"\f2d6"}.fa-etsy:before{content:"\f2d7"}.fa-imdb:before{content:"\f2d8"}.fa-ravelry:before{content:"\f2d9"}.fa-eercast:before{content:"\f2da"}.fa-microchip:before{content:"\f2db"}.fa-snowflake-o:before{content:"\f2dc"}.fa-superpowers:before{content:"\f2dd"}.fa-wpexplorer:before{content:"\f2de"}.fa-meetup:before{content:"\f2e0"}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}

	
	
</style>
 
 <style>
 
 	/*
  	Flaticon icon font: Flaticon
  	Creation date: 04/09/2017 15:07
  	*/

@font-face {
  font-family: "Flaticon";
  src: url("Flaticon.eot");
  src: url("Flaticond41d.eot?#iefix") format("embedded-opentype"),
       url("Flaticon.woff") format("woff"),
       url("Flaticon.ttf") format("truetype"),
       url("Flaticon.svg#Flaticon") format("svg");
  font-weight: normal;
  font-style: normal;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: "Flaticon";
    src: url("Flaticon.svg#Flaticon") format("svg");
  }
}

[class^="flaticon-"]:before, [class*=" flaticon-"]:before,
[class^="flaticon-"]:after, [class*=" flaticon-"]:after {   
  font-family: Flaticon;
font-style: normal;
}

.flaticon-bars:before { content: "\f100"; }
.flaticon-headphones:before { content: "\f101"; }
.flaticon-new:before { content: "\f102"; }
.flaticon-percentage:before { content: "\f103"; }
.flaticon-coupon:before { content: "\f104"; }
.flaticon-photo-camera:before { content: "\f105"; }
.flaticon-smartphone:before { content: "\f106"; }
.flaticon-clock-with-white-face:before { content: "\f107"; }
.flaticon-laptop:before { content: "\f108"; }
.flaticon-music-player:before { content: "\f109"; }
.flaticon-monitor:before { content: "\f10a"; }
.flaticon-glasses:before { content: "\f10b"; }
.flaticon-car:before { content: "\f10c"; }
.flaticon-video-camera:before { content: "\f10d"; }
.flaticon-shopping-bag:before { content: "\f10e"; }
.flaticon-delivery:before { content: "\f10f"; }
.flaticon-placeholder-1:before { content: "\f110"; }
.flaticon-placeholder:before { content: "\f111"; }
.flaticon-message:before { content: "\f112"; }
.flaticon-youtube:before { content: "\f113"; }
.flaticon-google-plus:before { content: "\f114"; }
.flaticon-facebook-letter-logo:before { content: "\f115"; }
.flaticon-instagram-symbol:before { content: "\f116"; }
.flaticon-twitter:before { content: "\f117"; }
.flaticon-search:before { content: "\f118"; }
.flaticon-paper-plane:before { content: "\f119"; }
.flaticon-newsletter:before { content: "\f11a"; }
.flaticon-shopping-cart:before { content: "\f11b"; }
.flaticon-heart:before { content: "\f11c"; }
.flaticon-refresh:before { content: "\f11d"; }
.flaticon-phone-call:before { content: "\f11e"; }
.flaticon-login:before { content: "\f11f"; }
.flaticon-e-mail-envelope:before { content: "\f120"; }



	/*
  	Flaticon icon font: Flaticon
  	Creation date: 25/09/2017 06:27
  	*/

@font-face {
  font-family: "Flaticon-1";
  src: url("Flaticon-1.eot");
  src: url("Flaticon-1d41d.eot?#iefix") format("embedded-opentype"),
       url("Flaticon-1.woff") format("woff"),
       url("Flaticon-1.ttf") format("truetype"),
       url("Flaticon-1.svg#Flaticon") format("svg");
  font-weight: normal;
  font-style: normal;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: "Flaticon-1";
    src: url("Flaticon-1.svg#Flaticon") format("svg");
  }
}

[class^="flaticon-1-"]:before, [class*=" flaticon-1-"]:before,
[class^="flaticon-1-"]:after, [class*=" flaticon-1-"]:after {   
  font-family: Flaticon-1;
font-style: normal;
}

.flaticon-1-facial-cream:before { content: "\f100"; }
.flaticon-1-razor:before { content: "\f101"; }
.flaticon-1-soap:before { content: "\f102"; }
.flaticon-1-shave:before { content: "\f103"; }
.flaticon-1-stones:before { content: "\f104"; }
.flaticon-1-beauty:before { content: "\f105"; }
.flaticon-1-cream:before { content: "\f106"; }
.flaticon-1-hair-spray:before { content: "\f107"; }
.flaticon-1-lipstick:before { content: "\f108"; }
.flaticon-1-scissors-opened-tool:before { content: "\f109"; }
.flaticon-1-shopping-basket:before { content: "\f10a"; }
.flaticon-1-menu-1:before { content: "\f10b"; }
.flaticon-1-right-arrow:before { content: "\f10c"; }
.flaticon-1-arrows:before { content: "\f10d"; }
.flaticon-1-squares:before { content: "\f10e"; }
.flaticon-1-menu:before { content: "\f10f"; }
.flaticon-1-previous:before { content: "\f110"; }
.flaticon-1-like:before { content: "\f111"; }
.flaticon-1-transport:before { content: "\f112"; }
.flaticon-1-send:before { content: "\f113"; }
.flaticon-1-arrows-1:before { content: "\f114"; }


	/*
  	Flaticon icon font: Flaticon
  	Creation date: 27/09/2017 06:03
  	*/

@font-face {
  font-family: "Flaticon-2";
  src: url("Flaticon-2.eot");
  src: url("Flaticon-2d41d.eot?#iefix") format("embedded-opentype"),
       url("Flaticon-2.woff") format("woff"),
       url("Flaticon-2.ttf") format("truetype"),
       url("Flaticon-2.svg#Flaticon") format("svg");
  font-weight: normal;
  font-style: normal;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: "Flaticon-2";
    src: url("Flaticon-2.svg#Flaticon") format("svg");
  }
}

[class^="flaticon-2-"]:before, [class*=" flaticon-2-"]:before,
[class^="flaticon-2-"]:after, [class*=" flaticon-2-"]:after {   
    font-family: Flaticon-2;
	font-style: normal;
}

.flaticon-2-left-chevron:before { content: "\f100"; }
.flaticon-2-right-chevron:before { content: "\f101"; }
.flaticon-2-left-arrow:before { content: "\f102"; }


	/*
  	Flaticon icon font: Flaticon
  	Creation date: 27/12/2017 11:00
  	*/

@font-face {
  font-family: "Flaticon-3";
  src: url("Flaticon-3.eot");
  src: url("Flaticon-3d41d.eot?#iefix") format("embedded-opentype"),
       url("Flaticon-3.woff") format("woff"),
       url("Flaticon-3.ttf") format("truetype"),
       url("Flaticon-3.svg#Flaticon") format("svg");
  font-weight: normal;
  font-style: normal;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: "Flaticon-3";
    src: url("Flaticon-3.svg#Flaticon") format("svg");
  }
}

[class^="flaticon-3-"]:before, [class*=" flaticon-3-"]:before,
[class^="flaticon-3-"]:after, [class*=" flaticon-3-"]:after {   
  font-family: Flaticon-3;
font-style: normal;
}

.flaticon-3-responsive:before { content: "\f100"; }
.flaticon-3-quality:before { content: "\f101"; }
.flaticon-3-calculator:before { content: "\f102"; }
.flaticon-3-right-arrow:before { content: "\f103"; }
.flaticon-3-signs:before { content: "\f104"; }
.flaticon-3-check:before { content: "\f105"; }
.flaticon-3-like:before { content: "\f106"; }
.flaticon-3-medal:before { content: "\f107"; }

	/*
  	Flaticon icon font: Flaticon
  	Creation date: 05/01/2018 06:24
  	*/

@font-face {
  font-family: "Flaticon-4";
  src: url("Flaticon-4.eot");
  src: url("Flaticon-4d41d.eot?#iefix") format("embedded-opentype"),
       url("Flaticon-4.woff") format("woff"),
       url("Flaticon-4.ttf") format("truetype"),
       url("Flaticon-4.svg#Flaticon") format("svg");
  font-weight: normal;
  font-style: normal;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: "Flaticon-4";
    src: url("Flaticon-4.svg#Flaticon") format("svg");
  }
}

[class^="flaticon-4-"]:before, [class*=" flaticon-4-"]:before,
[class^="flaticon-4-"]:after, [class*=" flaticon-4-"]:after {   
  font-family: Flaticon-4;
font-style: normal;
}

.flaticon-4-minus:before { content: "\f100"; }
.flaticon-4-search:before { content: "\f101"; }


	/*
  	Flaticon icon font: Flaticon
  	Creation date: 17/01/2018 12:32
  	*/

@font-face {
  font-family: "Flaticon-5";
  src: url("Flaticon-5.eot");
  src: url("Flaticon-5d41d.eot?#iefix") format("embedded-opentype"),
       url("Flaticon-5.woff") format("woff"),
       url("Flaticon-5.ttf") format("truetype"),
       url("Flaticon-5.svg#Flaticon") format("svg");
  font-weight: normal;
  font-style: normal;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: "Flaticon-5";
    src: url("Flaticon-5.svg#Flaticon") format("svg");
  }
}

[class^="flaticon-5-"]:before, [class*=" flaticon-5-"]:before,
[class^="flaticon-5-"]:after, [class*=" flaticon-5-"]:after {   
  font-family: Flaticon-5;
font-style: normal;
}

.flaticon-5-thin-right-arrow:before { content: "\f100"; }
.flaticon-5-commerce:before { content: "\f101"; }
.flaticon-5-check-sign:before { content: "\f102"; }
.flaticon-5-credit-card:before { content: "\f103"; }
.flaticon-5-delivery-truck:before { content: "\f104"; }




	/*
  	Flaticon icon font: Flaticon
  	Creation date: 18/01/2018 14:13
  	*/

@font-face {
  font-family: "Flaticon-6";
  src: url("Flaticon-6.eot");
  src: url("Flaticon-6d41d.eot?#iefix") format("embedded-opentype"),
       url("Flaticon-6.woff") format("woff"),
       url("Flaticon-6.ttf") format("truetype"),
       url("Flaticon-6.svg#Flaticon") format("svg");
  font-weight: normal;
  font-style: normal;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: "Flaticon-6";
    src: url("Flaticon-6.svg#Flaticon") format("svg");
  }
}

[class^="flaticon-6-"]:before, [class*=" flaticon-6-"]:before,
[class^="flaticon-6-"]:after, [class*=" flaticon-6-"]:after {   
  font-family: Flaticon-6;
font-style: normal;
}

.flaticon-6-money:before { content: "\f100"; }
.flaticon-6-express:before { content: "\f101"; }

	/*
  	Flaticon icon font: Flaticon
  	Creation date: 06/02/2018 08:38
  	*/

@font-face {
  font-family: "Flaticon-7";
  src: url("Flaticon-7.eot");
  src: url("Flaticon-7d41d.eot?#iefix") format("embedded-opentype"),
       url("Flaticon-7.woff") format("woff"),
       url("Flaticon-7.ttf") format("truetype"),
       url("Flaticon-7.svg#Flaticon") format("svg");
  font-weight: normal;
  font-style: normal;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: "Flaticon-7";
    src: url("Flaticon-7.svg#Flaticon") format("svg");
  }
}

[class^="flaticon-7-"]:before, [class*=" flaticon-7-"]:before,
[class^="flaticon-7-"]:after, [class*=" flaticon-7-"]:after {   
  font-family: Flaticon-7;
font-style: normal;
}

.flaticon-7-fonts-collection:before { content: "\f100"; }
.flaticon-7-support:before { content: "\f101"; }
.flaticon-7-cloud-computing:before { content: "\f102"; }
.flaticon-7-file:before { content: "\f103"; }
.flaticon-7-new-email-outline:before { content: "\f104"; }
.flaticon-7-puzzle-piece-outline:before { content: "\f105"; }
.flaticon-7-vector-design:before { content: "\f106"; }
.flaticon-7-user-outline:before { content: "\f107"; }
.flaticon-7-responsive:before { content: "\f108"; }
 
 
 
 </style>
 
    <!--slider-->
    <!--<link href="css/owl.carousel.min.css" rel="stylesheet">
    <link href="css/testimonial.css" rel="stylesheet" type="text/css">-->
	<style>
	

    #pstyle{
	  color:white;
	  font-family:verdana;
	  margin-top:2%;
	  text-align:center;
	}
	.p1{
	font-family: 'Karla';
	  margin-left:23%;
	  font-family:verdana;
	  font-size:13px;
	  color:#000000;
	}
	#border{
	  
	  height:560px;
	  border:1px solid #BDBDBD;
	  margin-left:23%;
	   margin-right:20%;
	}
	h5{
	 text-align:center;
	 color:red;
	 font-size:15px;
	}
	h6{
	text-align:center;
	   margin-top:6%;
	   font-size:16px;
	}
	ul{
	 list-style-type:none;
	}
	#btnstyle{
	 margin-left:33%;
	 border-style:none;
	 width:33%;
	 padding:10px;"
	 }
	 
	 .col{padding:20px;
	 background-color:#2E2EFE}
	 
	 #invoice{
	 padding-left:150px;}
	 }
	 .pb{padding-bottom:30px;}
	
  </style>
</head>
<body>



<div class="container">
<div style="padding-bottom:20px";>
<img src="http://crimsontrading.in/resources/img/index/logo.png" alt="img" class="img-responsive" >
 </div>
  <div class="row pb" >
    <div  class="col" >
    <p id="pstyle">Invoice #${orderId}</p>
    </div>
  </div><br><br>
<div class="container">
	<p class="p1">Dear ${user.username}</p>
	<p class="p1">Thank you for your business. Your invoice can be viewed,printed and downloaded as PDF from<br>
	   <span>the link below. You can also choose to pay at online.<span></p>
  </div><br>
  <div class="container">
    <div id="border"> 
	   <h6><b>INVOICE AMOUNT</b></h6>
	   <h5><b>Rs.${totalAmount}</b></h5><br><hr>
	   
	<div class="row" style="margin-top:6%;">
	  <div class="col-md-8" id="invoice" >
	   <table class='table'>
	   <tr>
		  <td>Invoice No</td><td><b>${orderId}</b></td>
		  </tr>
		  <tr>
		  <td>Invoice Date</td><td><b>${orderedDate?string('dd-MM-yyyy HH:mm:ss')}</b></td>
		  </tr>
		  <tr>
		  <td>Due Date</td><td><b>${deliveryDate?string('dd-MM-yyyy HH:mm:ss')}</b></td>
		  </tr>
		</table>
	  </div>
	  
	</div>
	<br>
	<button type="button" class="btn btn-success" id="btnstyle"><span style="font-size:13px;font-family:verdana;">VIEW INVOICE</span></button><br><br><hr>
	<p><b>Regards,</b></p>
	<p>Project Manager <br>
	Crimson Trading Project.
	</p>
	</div>
  </div>
  <br>
  
</div>

<div class="container-fluid copy-right">
            <div class="container">
                <div class="col-md-4 col-sm-4 copy-text">
                    <p>© 2018 <a href="#">Crimson Trading</a>.</p>
                </div>
                <div class="col-md-8 col-xs-12 col-sm-8 terms-condition text-right">
                    <ul>

                        <li><a href="#">Legal information</a></li>

                        <li><a href="#">Term of service</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
        </div>


</body>
</html>