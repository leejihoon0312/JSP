전체 기능 작동방법 

- 홈 화면
![image](https://user-images.githubusercontent.com/82079111/204091813-a0bd05b0-a487-4cdb-81cf-cfe9cf902ad2.png)


프로그램 시작 시 보이는 화면입니다.

- 로그인 화면
![image](https://user-images.githubusercontent.com/82079111/204091815-b0925831-66b6-44de-a831-e256d18aa901.png)


홈 화면에서 우측 상단 로그인을 누르면 보여지는 화면입니다.

- 회원가입 화면
![image](https://user-images.githubusercontent.com/82079111/204091818-01c3bc15-23a6-45b9-bc33-c062486526ea.png)



로그인 화면에서 회원가입 버튼을 누르면 보여지는 화면입니다. 
판매자로 회원가입 또는 일반 사용자로 가입할 수 있습니다 

- 판매자 로그인 후 기본 홈 화면
![image](https://user-images.githubusercontent.com/82079111/204091823-288be39e-1357-4026-9fac-7524437a4a1e.png)



판매자로 로그인 진행 시 상품 등록하기 버튼과 로그아웃 기능이 보여지게 됩니다





- 상품 등록 화면
![image](https://user-images.githubusercontent.com/82079111/204091832-5047cf12-c2b9-43dd-b53c-04db93f13985.png)

 
위의 홈 화면에서 상품 등록하기 버튼 클릭 시 등록 폼이 보여지고 필요에 따라 다국어 처리도 지원합니다. 









- 유저 로그인 후 기본 홈 화면
![image](https://user-images.githubusercontent.com/82079111/204091839-4d95193d-733d-4028-9f29-e3f64214818d.png)



유저로 로그인 시 상품등록 화면이 없는 모습을 확인할 수 있습니다.

- 상품 목록 화면
![image](https://user-images.githubusercontent.com/82079111/204091848-d6e50096-770e-40bb-bec5-5d15f0c10b34.png)



위치기반 서비스가 작동하지 않았을 때 전국의 판매자가 등록한 제품 가격, 상품명, 설명 등이 
표시됩니다.




- 카테고리 필터링 된 후 화면
![image](https://user-images.githubusercontent.com/82079111/204091850-82ee7b23-5375-43d8-9c15-4df0af6520c6.png)



선택된 카테고리만 보여지게 됩니다.

- 위치기반 서비스 작동 후 화면
![image](https://user-images.githubusercontent.com/82079111/204091854-273a1b35-f766-4532-aec4-42aa222fb9fb.png)




앞선 화면과 달리 현재 지역에서 판매중인 상품 목록만 확인할 수 있습니다.

- 상세정보 확인 및 예약하기
![image](https://user-images.githubusercontent.com/82079111/204091860-b29c8c64-d293-47c1-a8b2-5c8dfb68fc36.png)



주문하기 버튼을 클릭하고 수량 선택 및 예약 버튼을 클릭할 시 confirm 창이 나오게 됩니다.

- 접수화면 확인
![image](https://user-images.githubusercontent.com/82079111/204091870-420e132b-96fe-4bc0-93b4-931d5218599c.png)

예약을 마치고 내역을 확인하러 가면 상품명, 수량, 주문자, 판매자가 보여지는 접수내역을 
확인할 수 있습니다. 

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

평가요소

- 스크립트 태그
![image](https://user-images.githubusercontent.com/82079111/204092047-3c3b207b-4af4-4c99-b9e6-b4392d8e439a.png)

![image](https://user-images.githubusercontent.com/82079111/204092046-a987631f-1441-45ae-a160-0dd768776f4e.png)



제품의 상세정보를 보여주는 화면에서 스크립트 태그를 사용해 화면을 구성했습니다.
선언문을 통해 제품 전역변수를 설정하고 스크립틀릿 태그를 통해 자바로직을 작성했습니다. 
표현문으로 그 값을 표현했습니다.

- 디렉티브 태그 
![image](https://user-images.githubusercontent.com/82079111/204092044-4f1f3a78-6862-4fe3-a4b2-7c67b16f5c70.png)

![image](https://user-images.githubusercontent.com/82079111/204092040-c0e10d1e-a8c7-4747-88c7-23d42f2e85c9.png)



상품등록 화면에서 디렉티브 태그를 사용해 화면을 구성했습니다. 
page 태그를 통해 형식을 설정하고 taglib 태그를 통해 메시지 국제화를 지원했습니다.
include 태그를 통해 정적 리소스를 불러왔습니다.  

- 액션 태그
![image](https://user-images.githubusercontent.com/82079111/204092037-163a3513-b17f-4f0d-a2f9-c54322294286.png)


상품 목록을 보여주는 화면에서 위치를 불러올 때 액션태그를 이용했습니다. 
useBean 액션태그를 통해 사용할 자바 파일을 불러오고 
setProperty 액션태그를 통해 속성값을 설정하여 현재 지역을 불러왔습니다.

- 내장 객체 
![image](https://user-images.githubusercontent.com/82079111/204092033-230a6cde-e47f-4557-8150-913e34bec1ae.png)


상품목록을 불러오는 과정에서 내장객체를 이용했습니다.
request 내장객체를 통해 세션을 불러오고 
response 내장객체를 통해 상품목록 페이지로 리다이렉션을 진행했습니다.











- 폼 태그
![image](https://user-images.githubusercontent.com/82079111/204092031-335f5a34-67b2-4345-8c12-5a730df9b4d2.png)


상품등록 페이지에서 폼 태그를 활용했습니다.
form을 통해 폼 양식을 만들고 input을 통해 값을 넣었습니다.


- 파일 업로드 
![image](https://user-images.githubusercontent.com/82079111/204092026-48ac8b90-9cda-4f0c-8887-f61283903e8d.png)


위 폼에서 사진을 등록할 때 cos.jar 파일을 이용하여 사진 파일 업로드를 진행했습니다. 
multipartRequest 객체를 이용해 사진, 데이터를 저장했습니다.




- 유효성 검사
![image](https://user-images.githubusercontent.com/82079111/204092015-da14ab5a-243e-44d1-a3c6-b5ae93c102d0.png)

![image](https://user-images.githubusercontent.com/82079111/204092014-45c681ce-654c-4475-82ba-c6e0a91bda08.png)







회원가입시 비밀번호를 등록할 때 위 조건을 만족할 때만 가입할 수 있도록 하는 
유효성 검사를 진행했습니다. 






- 다국어 처리
![image](https://user-images.githubusercontent.com/82079111/204092009-185d2ff1-1f32-4d1a-9e67-3dc7fb040f53.png)

![image](https://user-images.githubusercontent.com/82079111/204092008-c715e904-9ab4-4724-9919-43fb44a4822c.png)



상품등록 시 여러 언어를 지원하도록 다국어 처리를 사용했습니다
번들을 이용해 영어, 한국어를 등록하고 선택하도록 하였습니다 








- 시큐리티
![image](https://user-images.githubusercontent.com/82079111/204092001-3c4fcfa7-eb92-47af-88cb-e575a6a640f8.png)


로그인하지 않은 사용자가 상품 목록에 접근할 시 
로그인을 진행하도록 시큐리티 설정도 하였습니다.
인증방식은 폼을 이용해 커스텀한 로그인 페이지를 사용하도록 했습니다.

- 예외처리
![image](https://user-images.githubusercontent.com/82079111/204091995-a222ec50-6f14-442b-a142-0691385bf3a2.png)

![image](https://user-images.githubusercontent.com/82079111/204091987-0b7cfae4-6007-4449-a2b7-71a1a30a5b90.png)



홈페이지 헤더에 페이지 디렉티브 태그의 에러페이지 속성을 적용해 예외처리를 진행했습니다. 


- 세션
![image](https://user-images.githubusercontent.com/82079111/204091983-18854b60-bddf-44ab-afdd-0c8802c66a10.png)


상품을 불러오는 과정에서 데이터베이스로부터 값을 꺼내 세션에 담아 보여줍니다. 

- 쿠키
![image](https://user-images.githubusercontent.com/82079111/204091980-7ed7886e-92b3-49d0-bfc5-1854ff42ee0f.png)


현재 위치를 불러오는 과정에서 위도, 경도를 쿠키에 담아 전달하여 사용자가 위치한 지역을 불러옵니다. 











- 데이터베이스와 JSP 연동
![image](https://user-images.githubusercontent.com/82079111/204091975-a6b03c7d-70c9-4f1b-a5da-79e9b829e398.png)



사용자가 상품을 예약할 시 그 값을 데이터베이스에 저장하는 과정입니다. 
