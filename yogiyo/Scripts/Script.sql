select * from Customer ;
UPDATE CUSTOMER SET userid=lower(userid) WHERE name='짐고든';
SELECT lower(userid) FROM CUSTOMER c WHERE USERID =LOWER('GCPDrules') ;
SELECT * FROM CUSTOMER c WHERE USERID = LOWER('GCPDrules') AND pw='1234' ;

SELECT * FROM store;
SELECT RegistNum,pw FROM store where RegistNum = 7490201976;
UPDATE STORE SET pw='12341234';
UPDATE STORE SET businesshours='11:00~23:00';
INSERT INTO store(registnum,storename,category,minorder,state,address) VALUES (6886100494,'복정동떡볶이','분식',16000,'영업','제주특별자치도 서귀포시 회수동 455-1');
INSERT INTO store(registnum,storename,category,minorder,state,address) VALUES (7490201976,'지코바치킨중문점','치킨',18000,'영업','제주특별자치도 서귀포시 중문동 1725 중문남해오네뜨오션힐 4호');
INSERT INTO store(registnum,storename,category,minorder,state,address) VALUES (1018126409,'맥도날드 중문DT점','피자/양식',3000,'영업','제주특별자치도 서귀포시 색달동 2558-1 2558-1');

ALTER TABLE store DROP COLUMN businesshours;
ALTER TABLE store ADD businesshours varchar2(20);

SELECT * FROM store WHERE state='영업' AND address LIKE '제주특별자치도 서귀포시'||'%';
SELECT to_date(to_char(opentime,'hh24:mi'),'hh24:mi') FROM store;


-- 리뷰
CREATE TABLE review (
	orderNum number NULL,
	star number NULL,
	review varchar2(100) NULL,
	cmmnt varchar2(100) NULL
);

-- 리뷰

-- 이벤트
ALTER TABLE events
	DROP FOREIGN KEY FK_Store_TO_events; -- 음식점 -> 이벤트

-- 이벤트
ALTER TABLE events
 DROP CONSTRAINT PK_events; -- 이벤트 기본키

-- 이벤트
DROP TABLE events;

-- 이벤트
CREATE TABLE events (
	eventname varchar2(20),
	discount number NULL,
	condi varchar2(100) NULL,
	RegistNum number REFERENCES store (RegistNum)
);

-- 쿠폰
DROP TABLE coupon;

-- 쿠폰
CREATE TABLE coupon (
	couponnum number PRIMARY key,
	discount number NULL);

-- 주문
CREATE TABLE myorder (
	orderNum number PRIMARY KEY,
	RegistNum number REFERENCES Store (RegistNum),
	userID varchar2(20) REFERENCES customer(userID),
	contect number NULL,
	request varchar2(100) NULL,
	menu varchar2(100) NULL,
	price number NULL,
	payment varchar2(20) NULL,
	state varchar2(20) NULL,
	couponnum number REFERENCES coupon(couponnum),
	eventname varchar2(20));

-- 리뷰
CREATE TABLE review (
	orderNum number REFERENCES myorder(ordernum),
	star number NULL,
	review varchar2(100) NULL,
	cmmnt varchar2(100) NULL);

-- 관리자
ALTER TABLE admin
 DROP CONSTRAINT PK_admin; -- 관리자 기본키

-- 관리자
DROP TABLE IF EXISTS admin;

-- 관리자
CREATE TABLE admin (
	adminID varchar2(20) NOT NULL,
	pw varchar2(20) NULL
);

-- 관리자
ALTER TABLE admin
	ADD CONSTRAINT PK_admin -- 관리자 기본키
	PRIMARY KEY (
	adminID -- 관리자ID
	);

INSERT INTO admin VALUES('admin1', '12341234');

SELECT * FROM MEMBER ;
