
 //운임코드로 불러오기(20221210_buis_extr)
 var ticketgo=[
	{
	"type":"성인",	//검색할때 입력한대로
	"qnt":"1명",
	"class":"비즈니스석",
	"baggage":"수하물 추가",
	"price":300000
	},
	{
	"type":"아동",	//검색할때 입력한대로
	"qnt":"1",
	"class":"비즈니스석",
	"baggage":"수하물 추가",
	"price":100000  //기본가격에서 *0.8하던가 조정하면 될듯 
	}
	]
	
 var ticketcome=[
	{
	"type":"성인",	
	"qnt":"1명",
	"class":"일반석",
	"baggage":"-",
	"price":400000
	},
	{
	"type":"아동",	
	"qnt":"1",
	"class":"일반석",
	"baggage":"-",
	"price":200000
	}
	]

function switchinfo(self){
var optioninfotbody = document.querySelector('#optioninfotbody')
let totalprice=0;
let string1="";
let whichticket= eval(self.value)

	whichticket.forEach(function(tt){
		string1+='<tr><td>'+tt.type+'</td><td>'+tt.qnt+'</td><td>'+tt.class+'</td><td>'+tt.baggage+'</td><td>'+tt.price+'</td></tr>';
		totalprice+=tt.price;
	})
	
let string2='<tr><th class="table-secondary" colspan="2">총 요금('+self.innerText+')</th><td colspan="3">'+totalprice +'원</td></tr>'	
optioninfotbody.innerHTML=string1+string2
if(self.value=='ticketgo'){
	let ticketcomebtn = document.querySelector('[value=ticketcome]')
	btnoff(ticketcomebtn)
	btnon(self)
	}else{
	let ticketgobtn = document.querySelector('[value=ticketgo]')
	btnoff(ticketgobtn)
	btnon(self)
	}

}
let payreserveswitch = document.querySelectorAll('.payreserveswitch')
var paynow = document.querySelector('#paynow')//즉시결제 하면 보이고 예약하기 하면 숨기게
let submitbtn = document.querySelector('[type="submit"]')
var form=document.querySelector('form')
payreserveswitch[0].onclick=function(){
	paynow.style.display='';
	btnon(this)
	btnoff(payreserveswitch[1])
	submitbtn.innerText='결제 완료하기'
	form.action="4006_book_success.jsp"
	}	
payreserveswitch[1].onclick=function(){
	paynow.style.display='none';
	btnon(this)
	btnoff(payreserveswitch[0])
	submitbtn.innerText='예약 완료하기'
	form.action="4005_rule3.html"
	}
	
function btnon(self){
self.classList.remove('btn-secondary');
self.classList.add('btn-primary');
}
function btnoff(self){
self.classList.remove('btn-primary');
self.classList.add('btn-secondary');
}
	
	//class="btn btn-secondary" 색깔변경