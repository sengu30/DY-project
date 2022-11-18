-- 메뉴판
DROP TABLE menu;
-- 메뉴판
CREATE TABLE menu (
	RegistNum number NULL,
	menuname varchar2(100) NULL,
	price number NULL,
	description varchar2(100) NULL
);

-- 메뉴판
ALTER TABLE menu
	ADD CONSTRAINT FK_Store_TO_menu -- 음식점 -> 메뉴판
	FOREIGN KEY (
	RegistNum -- 사업자등록번호
	)
	REFERENCES Store ( -- 음식점
	RegistNum -- 사업자등록번호
	);

SELECT menuname, price, DESCRIPTION FROM menu WHERE REGISTNUM = 1018126409;
SELECT * FROM store;
SELECT * FROM myOrder;
--INSERT INTO menu VALUES (1018126409,'페퍼로니 메가 피자 버거 세트',11800,'축구공 모양의 사커 번, 더 진한 풍미의 피자 소스와 페퍼로니');
--INSERT INTO menu VALUES (1018126409,'슈슈버거 세트',7300,'탱~글한 통새우살 가득~ 슈슈버거!');
--iNSERT INTO menu VALUES (1018126409,'맥스파이시Ⓡ 상하이버거 세트',7500,'매콤한 100% 닭가슴 통살 위에 아삭아삭한 양상추와 신선한 토마토');
--INSERT INTO menu VALUES (1018126409,'빅맥',5700,'40년 넘게 전 세계인의 입맛을 사로 잡은 버거의 대명사');
SELECT * FROM review r, myorder m 
WHERE r.ordernum=m.ordernum AND m.REGISTNUM = 1018126409 
ORDER BY r.ordernum DESC;
SELECT * FROM review;

--주문할때 쿠폰이랑 이벤트
SELECT * FROM events WHERE registnum = 1018126409 AND condi<=40000;
--INSERT INTO events VALUES ('11월의 할인',5000,20000,1018126409);
SELECT * FROM COUPON WHERE couponnum = 20221101;
--INSERT INTO coupon values(20211101,4000);
--INSERT INTO coupon values(20221101,4000);
SELECT * FROM myorder;
--CREATE SEQUENCE sqc1 INCREMENT BY 1 START WITH 1001;


