<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>.time-range {
  position: relative;
  width: 80%;
  max-width: 500px;
  display: flex;
  flex-direction: column;
}

.slider, .slider2 {
  position: relative;
  z-index: 1;
  height: 10px;
  margin: 0 15px;
}

.slider > .track, .slider2 > .track2 {
  position: absolute;
  z-index: 1;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: lightgray;
}

.slider > .range, .slider2 > .range2 {
  position: absolute;
  z-index: 2;
  left: 1%;
  right: 1%;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: steelblue;
}

.slider > .thumb, .slider2 >.thumb {
  position: absolute;
  z-index: 3;
  width: 20px;
  height: 20px;
  background-color: steelblue;
  border-radius: 50%;
}

.slider > .thumb.left,.slider2 > .thumb.left2 {
  left: 1%;
  transform: translate(-15px, -5px);
}
.slider > .thumb.right, .slider2 > .thumb.right2 {
  right: 1%;
  transform: translate(15px, -5px);
}

input[type="range"] {
  position: absolute;
  /* opacity로 가린 것을 이벤트도 비활성화하기 위해 */
  pointer-events: none;
  -webkit-appearance: none;
  z-index: 2;
  height: 10px;
  width: 100%;
  opacity: 0;
}

input[type="range"]::-webkit-slider-thumb {
  /* 겹쳐진 두 thumb를 모두 활성화 */
  pointer-events: all;
  width: 30px;
  height: 30px;
  border-radius: 0;
  border: 0 none;
  background-color: red;
  cursor: pointer;
  /* appearance를 해야 위의 스타일들을 볼 수 있음 */
  -webkit-appearance: none;
}</style>
</head>
<body>
<div class="time-range">
           <p class="time-set-head">가는날 출발시간</p>
           <div class="multi-range-slider">
             <!-- 진짜 슬라이더 -->
             <p class="print-time"></p>
             <input type="range" id="input-left" min="0" max="86400" step="1800" value="0" />
             <input type="range" id="input-right" min="0" max="86400" step="1800" value="86400" />
         
             <!-- 보이는 슬라이더 -->
             <div class="slider">
               <div class="track"></div>
               <div class="range"></div>
               <div class="thumb left"></div>
               <div class="thumb right"></div>
             </div>
           </div>
         </div>


<script>

//출발시간, 도착시간 설정(가는날 출발시간)
var inputLeft = document.querySelector("#input-left");
var inputRight = document.querySelector("#input-right");
var thumbLeft = document.querySelector(".slider > .thumb.left");
var thumbRight = document.querySelector(".slider > .thumb.right");
var range = document.querySelector(".slider > .range");
var p = document.querySelector(".print-time")

function printTime(){
   var lefthour= Math.floor(inputLeft.value/3600)
   var righthour= Math.floor(inputRight.value/3600)
   var leftminute = (inputLeft.value%3600)/60
   var rightminute = (inputRight.value%3600)/60
   if(leftminute==0&&rightminute==0){
      p.innerText = lefthour+":"+leftminute+"0 - "+righthour+":"+rightminute+"0"
   }else if(leftminute==0){
      p.innerText = lefthour+":"+leftminute+"0 - "+righthour+":"+rightminute
   }else if(rightminute==0){
      p.innerText = lefthour+":"+leftminute+" - "+righthour+":"+rightminute+"0"
   }else{
      p.innerText = lefthour+":"+leftminute+" - "+righthour+":"+rightminute
   }
}

function setLeftValue(){   
  var [min, max] = [parseInt(inputLeft.min), parseInt(inputLeft.max)];
  inputLeft.value = Math.min(parseInt(inputLeft.value), parseInt(inputRight.value) - 1800);
  var percent = ((inputLeft.value - min) / (max - min)) * 100;
  thumbLeft.style.left = percent + "%";
  range.style.left = percent + "%";
  printTime()
  console.log(inputLeft.value+" : "+inputRight.value)
};

function setRightValue (){
  var [min, max] = [parseInt(inputRight.min), parseInt(inputRight.max)];   
  inputRight.value = Math.max(parseInt(inputRight.value), parseInt(inputLeft.value) + 1800);
  var percent = ((inputRight.value - min) / (max - min)) * 100;
  thumbRight.style.right = 100 - percent + "%";
  range.style.right = 100 - percent + "%";
  printTime()
  console.log(inputLeft.value+" : "+inputRight.value)
};

printTime()
inputLeft.oninput=setLeftValue
inputRight.oninput=setRightValue
</script>
</body>
</html>