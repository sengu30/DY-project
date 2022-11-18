SELECT * FROM review;
SELECT * FROM myOrder;
SELECT * FROM store;
SELECT * FROM customer;
SELECT * FROM ADMIN a ;
--가게랑 평균별점 ,리뷰수
--insert INTO myorder(orderNum,RegistNum,userID,price,payment,state) VALUES (1001,1018126409,'potatofries',21000,'카드','배달완료');
--insert INTO myorder(orderNum,RegistNum,userID,price,payment,state) VALUES (1002,1018126409,'bettercallsaul',7000,'카드','배달완료');
--INSERT INTO review VALUES (1001,5,'감튀존맛탱','맥날중문점을 이용해주셔서 감사합니다');
--INSERT INTO review(ordernum,star,review) VALUES(1002,1,'빅맥먹다가 이빨 빠졌어요 고소합니다');

SELECT s.registnum,STORENAME,CATEGORY, MINORDER ,brand
FROM STORE s
WHERE s.STATE ='영업' AND ADDRESS LIKE '제주특별자치도 서귀포시'||'%' AND CATEGORY LIKE '%'||''||'%' ;

SELECT nvl(AVG(star),0) "avgstar", COUNT(review) "cntreview", COUNT(cmmnt) "countcmmnt"
FROM myOrder m, REVIEW r 
WHERE m.ordernum=r.ordernum AND m.REGISTNUM = 1018126409;  

INSERT INTO CUSTOMER VALUES ('jeju','1234','김감귤','제주특별자치도 서귀포시 무슨군',01055773212);

SELECT * FROM store where RegistNum = 1018126409 and pw= 12341234 AND state LIKE '영업'||'%';

--INSERT INTO store VALUES (8336600556,'땅스부대찌개-서귀포중문점','박부대',050372621757,12341234,'제주특별자치도 서귀포시 중문동 2114-3 101호','한식',13900,'땅스부대찌개'
--,'후랑크소시지 : 미국산 촙트햄 : 돼지고기:국산,외국산 손질통오징어:중국','미승인','10:30 - 20:30');

SELECT * FROM MYORDER m WHERE REGISTNUM =1018126409 AND state = '주문완료';
SELECT m.*, c.ADDRESS  FROM MYORDER m, CUSTOMER c WHERE c.USERID =m.USERID AND REGISTNUM =1018126409 AND state = '주문완료';

--UPDATE customer SET address = '제주특별자치도 서귀포시 중문동';
--UPDATE MYORDER SET menu = ',에그토마토머핀,커피,팬케이크' WHERE ORDERNUM =1001;
--UPDATE MYORDER SET request = '빨리빨리' WHERE request = 'null';