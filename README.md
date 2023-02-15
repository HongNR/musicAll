# musicAll
> 뮤지컬 예매 및 굿즈 구매 사이트를 구현했습니다.

![메인](https://user-images.githubusercontent.com/118409545/217399474-8bf0ad5d-a317-41a9-9294-c5e1d566b1a1.png)

## 목차
- [들어가며](#들어가며)
  - [프로젝트 소개](#1-프로젝트-소개)    
  - [프로젝트 기능](#2-프로젝트-기능)    
  - [사용 기술](#3-사용-기술)   
     - [백엔드](#3-1-백엔드)
     - [프론트엔드](#3-2-프론트엔드)
  - [실행 화면](#4-실행-화면)   


- [설계](#설계)
  - [DB 설계](#-DB-설계)

- [개발 내용](#개발-내용)

- [마치며](#마치며)
  - [프로젝트 보완사항](#1-프로젝트-보완사항)
  - [후기](#2-후기)

## 들어가며
### 1. 프로젝트 소개

musical 을 All 선택할 수 있는 사이트라 하여 musicAll 이라는 이름을 가진 뮤지컬 예매 사이트입니다.

처음으로 스프링을 이용한 프로젝트입니다.

### 2. 프로젝트 기능

제가 맡은 프로젝트의 주요 기능은 다음과 같습니다.
#### 마이페이지
- 회원 정보 수정
- 공연예매 정보 출력
- 관심공연 리스트 출력
- 포인트 내역 출력
- 상품 구매내역 출력
- 1대 1 문의 내역 출력
- 내가 쓴 한줄평 출력

### 3. 사용 기술

#### 3-1 백엔드

##### 개발 환경 및 라이브러리
- Java 11
- jQuery 3.6.1
- WAS : Tomcat 9.0
- Spring Framework

##### Build Tool
- Eclipse IDE 2022-09
- Oracle Sql Developer
- Spring Tool Suite 3

##### DataBase
- Orcale DB


### 4. 실행 화면
  <details>
    <summary>회원정보 수정</summary>   
       
    
  **1. 회원정보 수정**   
  ![회원정보수정1](https://user-images.githubusercontent.com/118409545/217396729-92fc230c-8b78-4320-9b81-f8c712cbb0f6.png) 
  
  모달창으로 비밀번호 확인창이 뜬다.

  ![회원정보수정비밀번호오류](https://user-images.githubusercontent.com/118409545/217396733-e3263b21-1981-44b9-b7f5-1d1feaf812d3.png)
  
  ajax를 이용하여 비밀번호 일치여부를 확인한다.
     
  
  **2. 회원정보 수정 내역**   
  ![회원정보수정내역](https://user-images.githubusercontent.com/118409545/217396731-f4002089-5eb0-4d4c-bce5-9be0e6ae62b5.png)
  
  DB에 저장되어 있는 회원정보를 자동출력하여 유효성 검사를 한 후 회원정보 수정이 가능하다.
     
  
  **3. 회원정보 수정 완료**   
  ![회원정보수정완료](https://user-images.githubusercontent.com/118409545/217396734-2a788bb4-1e54-48aa-9121-9c3e9b4a7753.png)
  
  회원정보 수정 완료 시 모달창으로 로그인을 요청한다.
     
  
     
  </details>
  <br/>   
  
  <details>
    <summary마이페이지</summary>   
     
  **1. 공연 예매내역**   
  ![공연예매리스트](https://user-images.githubusercontent.com/118409545/217396712-4616a976-f698-4c20-b46e-2018217c325e.png)
  
  공연예매리스트를 보여준다.
  
  ![공연예매환불클릭시](https://user-images.githubusercontent.com/118409545/217396714-fd7b350a-4467-4cdd-8ad5-9cc294cebfb3.png)
  
  에매환불 클릭 시 환불처리를 한다.
  
  ![공연세부내역](https://user-images.githubusercontent.com/118409545/217396709-811e141c-5566-4fe9-9850-91799cfb80f2.png)
  
  예매세부내역 확인
     
  **2. 관심공연**   
  ![관심공연](https://user-images.githubusercontent.com/118409545/217396718-5c392c3f-840d-4e85-89c4-78907affaabc.png) 
  
  관심공연 목록을 출력한다. 하트 클릭 시 관심공연에서 삭제된다.
  
  **3. 포인트** 
  ![포인트내역](https://user-images.githubusercontent.com/118409545/217396727-0d415b2a-a4ef-494d-96d4-ee911eef330a.png)
  
  현재 남은 포인트 및 포인트 사용 내역을 보여준다.
  
  **4. 굿즈 상품 구매내역**
  ![상품구매내역](https://user-images.githubusercontent.com/118409545/217396725-bcfbdb79-acd3-4d63-bb0a-0c04b79c1c7b.png)
  
  상품 구매내역 , 환불처리, 상품 구매 세부내역 
  
  **5. 1대 1 문의**
  ![1대1문의내역](https://user-images.githubusercontent.com/118409545/217396707-cc7e09ac-0147-4607-8b62-a7dc6f974911.png)
  
  1대 1 문의 내역을 보여준다. 
  
  ![1대1문의 검색ajax](https://user-images.githubusercontent.com/118409545/217396700-c98daf55-85ed-4c9a-b3cb-87774512b094.png)
  
  키워드로 검색 시 ajax를 이용하여 일치하는 내용만 보여준다.
  
  **5. 내가 쓴 리뷰**
  ![리뷰정렬](https://user-images.githubusercontent.com/118409545/217396721-7bc2a7f8-f978-4a7b-9c95-abe37473eaaa.png)
  
  내가 작성한 한줄평을 보여준다. 키워드별 정렬을 ajax로 구현하였다.
           
  </details>
  <br/>   
     
 
   
## 설계   
   

     
 ### DB 설계

![erd](https://user-images.githubusercontent.com/118409545/217397961-4d64e2fd-83d3-47bc-8d4c-aad4dd9745ef.png)


ERD

   
<br/>


## 개발 내용

[마이페이지]
- 회원정보 수정 : Ajax로 비밀번호 확인 후 회원정보 update 기능
- 공연예매 정보 : 공연예매 기록 출력 , 공연일자 계산하여 환불(아임포트) 기능 구현
* 공연예매 환불 : 환불 시 1) 예매 좌석 삭제 2) 사용,적립 포인트 원상복구 3) 환불 정보 추가
- 관심공연 출력 : 관심공연 리스트로 출력 , 관심공연 삭제 기능 구현
- 포인트 내역 출력 : 포인트 내역 , 현재 남은 포인트 출력
- 상품 구매내역 : 상품 구매 내역 , 환불(아임포트) 기능 구현
* 상품 환불 : 환불 시 1) 수량 원상복구 2) 사용,적립 포인트 원상복구 3)환불 정보 추가
- 내가 쓴 리뷰 : 내가 쓴 리뷰 출력 , Ajax로 최근 작성 순/ 별점 높은 순/ 별점 낮은 순 정렬
- 1대 1 문의 내역 : 1대 1 문의 내역 출력 , Ajax로 제목/내용/답변여부(Y/N) 검색 기능

## 마치며   
### 1. 프로젝트 보완사항   
 
<details>
  <summary>보완사항 보기</summary>
     
  
- 페이징처리 ajax
- 1대1 문의 검색 시 페이징처리
- 굿즈 후기 
  
</details>   
 
   
   <details>
  <summary>추가할 기능 </summary>
     
  
- 예매 리뷰작성 : 공연일이 지나서 리뷰작성할 수 있도록경변경
  
</details>  


### 2. 후기   

처음으로 스프링을 이용한 프로젝트입니다.
스프링 프레임워크에 대한 이해도가 높아진 시간이였습니다.

마이페이지를 담당하여 다양한 Sql문을 사용해볼 수 있어 좋았고,
부족하다고 느꼈던 부분을 조금이나마 보완할 수 있었습니다.

도움 없이 스스로 끝까지 완성한 프로젝트입니다.

감사합니다.
