<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/JYH_list_style.css" rel="stylesheet"/>
<script type="text/javascript"></script>
</head>
<body>
    <div class = "w1">
        <div class = "subj1">
            <img class = "ss" src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            <p>1인한우 곱도리탕(공기밥 포함)</p>
            <p>18,500원</p>
        </div>
        <div class = "subj1">
            <img class = "ss" src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            <p>한우곱도리탕(공기밥 포함)</p>
            <p>32,000원</p>
        </div>
        <div class = "subj1">
            <img class = "ss" src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            <p>1인 순살 닭도리탕(공기밥 포함)</p>
            <p>15,500원</p>
        </div>
        <div class = "subj1">
            <img class = "ss" src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            <p>1인 삼겹삼도리탕(공기밥 포함)</p>
            <p>18,500원</p>
        </div>
        <div class = "subj1">
            <img class = "ss" src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            <p>순살닭도리탕(공기밥 X)</p>
            <p>26,500원</p>
        </div>
        <div class = "subj1">
            <img class = "ss" src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            <p>1인 새우닭도리탕(공기밥 포함)</p>
            <p>18,500원</p>
        </div>
    </div>
    <div class = "subj2">
        <details open>
            <summary class = "sumCss">인기메뉴</summary>
            <div class= me02>
                <p>1인 한우 곱도리탕(공기밥 포함)</p><br>
                <p id = "ee11">순살 닭다리살 200g + 한우대창 90g + 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 한우곱도리탕 </p><br>
                <p>18,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>1인 순살닭도리탕(공기밥 포함)</p><br>
                <p id = "ee11">순살닭다리살 300g ＋ 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 순살닭도리탕 </p><br>
                <p>15,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>1인 삼겹삼도리탕(공기밥 포함)</p><br>
                <p id = "ee11">순살닭다리살 200g ＋ 삼겹살 120g ＋ 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 삼겹삼도리탕</p><br>
                <p>18,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>1인 새우닭도리탕(공기밥 포함)</p><br>
                <p id = "ee11">새우6마리＋순살닭다리살200g＋사리（감자, 수제비, 떡）를 사용하여 조리된 새우닭도리탕</p><br>
                <p>18,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>순살 닭도리탕(공기밥X)</p><br>
                <p id = "ee11">1인분 기준 순살닭다리살 300g ＋ 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 순살닭도리탕 </p><br>
                <p>26,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
        </details>
        <details>
            <summary class = "sumCss">메인메뉴</summary>
            <div class= me02>
                <p>1인 한우 곱도리탕(공기밥 포함)</p><br>
                <p id = "ee11">순살 닭다리살 200g + 한우대창 90g + 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 한우곱도리탕 </p><br>
                <p>18,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>1인 순살닭도리탕(공기밥 포함)</p><br>
                <p id = "ee11">순살닭다리살 300g ＋ 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 순살닭도리탕 </p><br>
                <p>15,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>1인 삼겹삼도리탕(공기밥 포함)</p><br>
                <p id = "ee11">순살닭다리살 200g ＋ 삼겹살 120g ＋ 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 삼겹삼도리탕</p><br>
                <p>18,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>1인 새우닭도리탕(공기밥 포함)</p><br>
                <p id = "ee11">새우6마리＋순살닭다리살200g＋사리（감자, 수제비, 떡）를 사용하여 조리된 새우닭도리탕</p><br>
                <p>18,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>순살 닭도리탕(공기밥X)</p><br>
                <p id = "ee11">1인분 기준 순살닭다리살 300g ＋ 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 순살닭도리탕 </p><br>
                <p>26,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
        </details>
        <details>
            <summary class = "sumCss">사이드메뉴</summary>
            <div class= me02>
                <p>1인 한우 곱도리탕(공기밥 포함)</p><br>
                <p id = "ee11">순살 닭다리살 200g + 한우대창 90g + 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 한우곱도리탕 </p><br>
                <p>18,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>1인 순살닭도리탕(공기밥 포함)</p><br>
                <p id = "ee11">순살닭다리살 300g ＋ 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 순살닭도리탕 </p><br>
                <p>15,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>1인 삼겹삼도리탕(공기밥 포함)</p><br>
                <p id = "ee11">순살닭다리살 200g ＋ 삼겹살 120g ＋ 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 삼겹삼도리탕</p><br>
                <p>18,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>1인 새우닭도리탕(공기밥 포함)</p><br>
                <p id = "ee11">새우6마리＋순살닭다리살200g＋사리（감자, 수제비, 떡）를 사용하여 조리된 새우닭도리탕</p><br>
                <p>18,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
            <div class= me02>
                <p>순살 닭도리탕(공기밥X)</p><br>
                <p id = "ee11">1인분 기준 순살닭다리살 300g ＋ 사리（ 감자 , 수제비 , 떡 ）를 사용하여 조리된 순살닭도리탕 </p><br>
                <p>26,500원</p><br>
                <img src = "img/스크린샷 2022-11-24 오전 4.09.54.png"/>
            </div>
        </details>
    </div>
</body>
</html>