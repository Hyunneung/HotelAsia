![logo](https://user-images.githubusercontent.com/104151569/197460345-d099c370-b0a4-4b42-9949-cc4cbbdef06a.png)

---
## 개요
* ‘20년 코로나 여파로 내국인 출국자수 저하로 인한 ‘호캉스’ 수요 증가에 주안점을 두어, 현재 서비스 중인 호텔 웹사이트(네스트호텔, 웨스틴조선, 워커힐호텔  등)를 벤치마킹한 호텔 예약 웹사이트 개발
* 인원 : 5명
* 개발 기간 : 2022.09.26 ~ 2022.10.25 (29일)

---
## 맡은기능
### 1. 객실, 옵션 예약
#### 1-1. 예약 가능 객실 조회 (필터링)
#### 1-2. 객실 예약, 옵션(조식, 디너, 수영장) 예약

### 2. 결제
#### 2-1. 결제자 핸드폰 번호 SMS 인증 (Naver SENS API)
#### 2-2. 쿠폰, 포인트 사용
#### 2-3. 결제 (아임포트 API)

### 3. 후기 게시판
##### 3-1. 게시글
##### 3-1-1. CRUD (글 등록, 수정 Summernote WYSIWYG Editor 사용)
##### 3-1-2. 게시글 추천, 검색, 인기검색어
##### 3-1-3. 페이지네이션, 정렬(조회순, 등록순, 추천순)
##### 3-2. 댓글
##### 3-2-1. 계층형 댓글 CRUD

---
## 개발환경
* OS : Window10, Mac OS
* DBMS : Oracle 11g
* Editer : Eclipse, SQL Developer
* Team Collaboration Tool : GitHub, Gather, GoogleDocs

---
## 사용기술
- Back-end
  - Language : Java11, Oracle SQL
  - Framework : Spring Boot, Spring Security, MyBatis
  - Was : Apache Tomcat 9.0
- Front-end
  - JSP, JavaScript(jQuery, Ajax), HTML, CSS, Bootstrap5
- API
  - Naver SENS API
  - 아임포트 API
  - KOMORAN API
  - Summernote WYSIWYG Editor
  
---
## Database ERD  
![noname01](https://user-images.githubusercontent.com/104151569/197450805-6da178c8-e008-4393-a234-28774f699898.png)

---

## 화면 및 사용기술 설명
### 1. 예약
  ![image](https://user-images.githubusercontent.com/104151569/197373238-b657f52f-8ce9-40bf-979f-27a92c07b497.png)
  - JDBC 활용해 객실 리스트 조회
  - 헤더의 '객실' 클릭 시, 객실 리스트 페이지 이동
  - 객실의 '상세보기 ' 클릭 시, 객실 상세 페이지 이동
#### 1-1 객실 필터링 (예약 가능 객실, 날짜 조회)
##### 1-1-1 객실 리스트
![image](https://user-images.githubusercontent.com/104151569/197373459-87d410e1-3ce6-4df7-b95d-a8def863df68.png)
  - jQuery Datepicker 활용해 체크인, 체크아웃 날짜 선택
  - SelectBox로 인원수 선택, CheckBox로 객실 타입 선택해 조회

![image](https://user-images.githubusercontent.com/104151569/197373748-2d6f6706-505b-4d9e-ae50-01eafd4d563f.png)
  - Ajax 활용해 체크인, 체크아웃 날짜, 예약 인원을 송신하여 JDBC로 조회 후, 객실별 최대 인원, 기예약 날짜를 수신해 선택 조건에 부합한 예약 가능 객실 조회
  - JSTL core 라이브러리, fmt 라이브러리 활용해 객실 리스트 출력
  - 예약 가능한 객실의 ‘예약하기’ 버튼 클릭 시 해당 객실이 선택되며, 예약 정보 확인 페이지로 이동

#### 1-1-2 객실 상세
![image](https://user-images.githubusercontent.com/104151569/197373834-8d493ac9-2be7-4723-8f3c-b4dc528b7473.png)
  - jQuery Datepicker 활용해 체크인, 체크아웃 날짜 선택
  - 기예약 날짜는 비활성화 되어 있어 선택 불가
  - 체크인, 체크아웃 사이에 예약 건이 있을 경우 해당 날짜 선택 불가

#### 1-2. 객실 예약, 옵션(조식, 디너, 수영장) 예약
##### 1-2-1 예약 정보 확인 (옵션 선택 전)
![image](https://user-images.githubusercontent.com/104151569/197373978-58033003-bdb3-4b80-a0bb-4473e2fd56b3.png)
  - Controller에서 숙박일수 계산 후 뷰페이지에서 객실 1박 요금에 곱해 합계금액 산정

##### 1-2-2 옵션 선택
![image](https://user-images.githubusercontent.com/104151569/197374493-63d50692-8543-4022-b82f-a3f953e92906.png)
  - jQuery 활용해 체크인 날짜와 체크아웃 날짜 간 차이로 숙박 일수를 구한 뒤 각 옵션 예약 가능 날짜 계산<br>
    (조식) 체크인 날짜 다음날 ~ 체크아웃 날짜<br>
    (디너) 체크인 날짜 ~ 체크아웃 날짜 전날<br>
    (수영장) 체크인 날짜 ~ 체크아웃 날짜
  - JSTL core 라이브러리, fmt 라이브러리 활용해 출력
  - jQuery 활용해 각 옵션의 선택한 인원수에 맞게 금액 산정
  - Java Collection Framework의 Map, List 활용해 각 옵션별 선택 인원수 저장

#### 1-3 선택사항 확인
##### 1-3-1 객실 및 옵션 선택사항 확인
![image](https://user-images.githubusercontent.com/104151569/197330323-56899ad6-933b-4c6a-8a7e-d5fbdb67722f.png)
  - Java Collection Framework의 Map, List 활용해 각 옵션별 선택 인원수 저장
  - JSTL core 라이브러리, fmt 라이브러리 활용해 날짜에 맞게 출력 및 합계금액 산정

##### 1-3-2 고객 정보 및 결제금액 확인
![image](https://user-images.githubusercontent.com/104151569/197375048-8f614a09-0315-4b90-b7e9-8b628c493252.png)
  -

###### 1-3-2-1 고객 정보 확인
![image](https://user-images.githubusercontent.com/104151569/197375380-6a51c6fb-f829-450a-ab89-f3d6f941537f.png)
  - jQuery 활용해 연락처 변경 여부에 따라 '인증하기' 버튼 활성화 결정
  - Ajax 활용해 변경된 연락처의 중복 여부 확인
  - Java 난수 생성 후 Naver SENS API 활용해 인증번호 발송
  - jQuery 활용해 인증번호 일치 여부 확인

###### 1-3-2-2 결제 금액 확인
![image](https://user-images.githubusercontent.com/104151569/197330438-c82e45e1-a242-43d9-bba6-e98ff951ba3a.png)
  - jQuery 활용해 쿠폰 및 포인트 사용 후 할인금액과 최종 결제금액 산정

#### 1-4 결제 및 예약 
![image](https://user-images.githubusercontent.com/104151569/197330613-97847dd8-c950-4c99-b5f0-5a0411becc50.png)
  - 아임포트 API 활용해 결제
  - 객실 예약내역, 옵션 예약내역, 결제내역 DB 저장


#### 1-5 예약내역 및 결제내역 확인
![image](https://user-images.githubusercontent.com/104151569/197375766-b482414c-d979-46e7-bf1e-6915259bd048.png)
  - JSTL core 라이브러리, fmt 라이브러리 활용해 출력



### 2. 후기 게시판
#### 2-1 게시글 리스트
![image](https://user-images.githubusercontent.com/104151569/197399723-3d648664-3c1c-4f31-bac0-5942203d5a53.png)
  - JDBC 활용해 게시글, 인기검색어 조회
  - JSTL core 라이브러리 활용해 출력
  - Java Calendar 클래스 활용해 하루 전 시간 구한 뒤, 글 작성이 하루가 지나지 않은 게시글의 경우 ‘ⓝ’ 아이콘 표시
  - 페이지네이션 페이지 버튼 클릭 시 페이지 이동

##### 2-2 게시글 정렬
  - JDBC 활용해 등록순, 조회순, 추천순으로 정렬 가능하며, 기본 정렬 기준은 등록순 
##### 2-2-1 조회순 정렬
![image](https://user-images.githubusercontent.com/104151569/197399986-4dcc978e-3d44-4b1e-bc5d-f8648d5efda9.png)

##### 2-2-2 추천순 정렬
![image](https://user-images.githubusercontent.com/104151569/197400160-9203d29f-bb1c-487a-9ae6-a3acc0d42287.png)

##### 2-3 게시글 검색
![image](https://user-images.githubusercontent.com/104151569/197400183-81b10057-fc77-4962-9e63-4b73d84ccfa2.png)
  - Java KOMORAN API 활용해 검색어를 자연어 처리해 명사만 추출 후 해당 검색어가 포함된 게시글 조회
##### 2-4 인기 검색어
![image](https://user-images.githubusercontent.com/104151569/197401744-e47a0872-d600-49eb-b0ee-b59a470a678f.png)
  - 게시글 검색 시 Java KOMORAN API로 추출된 명사를 JDBC 활용해 검색 횟수 카운트
  - JSTL core 라이브러리, JDBC 활용해 인기검색어(10위 이내)가 보여지며 해당 검색어 클릭 시 자동 검색
  - JDBC 활용해 관리자인 경우에만 인기검색어 삭제 가능


##### 2-5 게시글 등록
![image](https://user-images.githubusercontent.com/104151569/197400240-aee61531-67ec-4ba9-a39f-8d1482492d15.png)
  - Summernote WYSIWYG Editor 활용해 글씨체, 글씨 크기, 글씨 색상, 이미지, 표 등 자유로운 형식의 글 작성 가능
  - Ajax, Json 활용해 등록한 이미지 저장 후 상세페이지에서 출력
  - jQuery 활용해 ‘제목’, ‘비밀번호’, ‘내용’ 항목을 필수로 입력받아 하나라도 누락 시 게시글 등록 불가

##### 2-6 게시글 상세
![image](https://user-images.githubusercontent.com/104151569/197400722-897b24c5-25f0-4971-9827-b8731453c1ea.png)
  - JDBC, JSTL core 라이브러리 활용해 등록한 게시글(제목, 작성자, 등록일, 추천수, 내용), 댓글(작성자, 등록일, 수정여부) 조회
  - JSTL core 라이브러리 활용해 해당 게시글 작성자인 경우 ‘수정’, ‘삭제’ 버튼 표시 또는 작성자가 아닌 경우 ‘추천’ 버튼 표시
  - Java Calendar 클래스 활용해 하루 전 시간 구한 뒤, 글 작성이 하루가 지나지 않은 게시글의 경우 ‘ⓝ’ 아이콘 표시

##### 2-6-1 게시글
##### 2-6-1-1 작성자인 경우
![image](https://user-images.githubusercontent.com/104151569/197400317-025183fe-3515-495f-852e-03f32ec4c443.png)
  - JSTL core 라이브러리 활용해 해당 게시글 작성자인 경우 ‘수정’, ‘삭제’ 버튼 표시
  - Bootstrap 모달, JDBC 활용해 글 등록 시 입력받은 비밀번호 일치 여부 확인 후 일치할 경우 삭제
  
##### 2-6-1-2 작성자가 아닌 경우
![image](https://user-images.githubusercontent.com/104151569/198048956-c28b5e47-41dd-41e3-b66e-d894581975e0.png)
  - JSTL core 라이브러리 활용해 해당 게시글 작성자가 아닌 경우 ‘추천’ 또는 '추천해제' 버튼 표시
  - JDBC 활용해 기존 추천 이력이 없는 경우 '추천' 버튼 표시, 추천 이력이 있는 경우 '추천 해제' 버튼 표시
  - Ajax, JDBC 활용해 '추천' 또는 '추천해제' 버튼 클릭 시 추천수 산정 및 출력
  
#### 2-6-2 댓글
![image](https://user-images.githubusercontent.com/104151569/197400474-d28a3046-e4db-4de6-b44e-4a0a537a12ce.png)
  - Ajax, JDBC 활용해 댓글 리스트 출력
  - 메뉴바 클릭 시 댓글 작성자인 경우 '답댓글', '수정', '삭제' 앵커태그, 작성자가 아닌 경우 '답댓글' 앵커태그 출력 
  - 답댓글인 경우 원댓글 작성자 아이디 표시
  - 최대 댓글 갯수는 5개가 노출되며, ‘더보기’ 클릭 시 모든 댓글 확인 가능
  - 댓글 수정 시 '수정됨' 표시
  - Java Calendar 클래스 활용해 하루 전 시간 구한 뒤, 댓글 작성이 하루가 지나지 않은 경우 ‘ⓝ’ 아이콘 표시
  
  
##### 2-7 게시글 수정
![image](https://user-images.githubusercontent.com/104151569/197400647-03b10ea8-7f6d-4999-aa55-c279e05dd6df.png)
  - Summernote WYSIWYG Editor 활용해 글씨체, 글씨 크기, 글씨 색상, 이미지, 표 등 자유로운 형식의 글 수정 가능
  - Ajax, Json 활용해 등록한 이미지 저장 후 상세페이지에서 출력
  - JDBC 활용해 글 등록 시 입력받은 비밀번호 일치 여부 확인 후 일치할 경우 수정



