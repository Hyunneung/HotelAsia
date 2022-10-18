DROP TABLE TABLE_MEMBER_COUPON;

--쿠폰 내역
CREATE TABLE TABLE_MEMBER_COUPON(
    COUPON_NUMBER NUMBER PRIMARY KEY,
    COUPON_TYPE_NUMBER NUMBER references TABLE_COUPON(COUPON_TYPE_NUMBER),
   	MEM_ID VARCHAR2(30) references MEMBER(MEM_ID),
    COUPON_GET_DATE  DATE DEFAULT SYSDATE,
    COUPON_END_DATE DATE DEFAULT SYSDATE+7
);

CREATE SEQUENCE TABLE_MEMBER_COUPON_NUMBER;
INSERT INTO TABLE_MEMBER_COUPON(COUPON_NUMBER, COUPON_TYPE_NUMBER, MEM_ID) VALUES(TABLE_MEMBER_COUPON_NUMBER.NEXTVAL, 1, 'user01');

SELECT * FROM TABLE_MEMBER_COUPON;
SELECT T1.* FROM TABLE_MEMBER_COUPON T1, TABLE_COUPON T2 WHERE T1.COUPON_TYPE_NUMBER = T2.COUPON_TYPE_NUMBER;

--쿠폰종류
CREATE TABLE TABLE_COUPON(
    COUPON_TYPE_NUMBER NUMBER PRIMARY KEY,
    COUPON_NAME VARCHAR2(100),
    COUPON_PRICE NUMBER,
    COUPON_COMMENT VARCHAR2(1000)
);

CREATE SEQUENCE TABLE_COUPON_NUMBER;


INSERT INTO TABLE_COUPON VALUES(TABLE_COUPON_NUMBER.NEXTVAL, '20% 할인 쿠폰', 20, '20%의 할인을 해주는 쿠폰입니다.');
INSERT INTO TABLE_COUPON VALUES(TABLE_COUPON_NUMBER.NEXTVAL, '50% 할인 쿠폰', 50, '50%의 할인을 해주는 쿠폰입니다.');
SELECT * FROM TABLE_COUPON;

--쿠폰 삭제 내역
CREATE TABLE TABLE_COUPON_DEL(
    COUPON_NUMBER NUMBER PRIMARY KEY,
    COUPON_TYPE_NUMBER NUMBER references TABLE_COUPON(COUPON_TYPE_NUMBER),
   	MEM_ID VARCHAR2(30) references MEMBER(MEM_ID),
    COUPON_GET_DATE  DATE DEFAULT SYSDATE,
    COUPON_END_DATE DATE DEFAULT SYSDATE+7
);
INSERT INTO TABLE_COUPON_DEL (SELECT * FROM  TABLE_MEMBER_COUPON WHERE COUPON_NUMBER = 1);
commit;