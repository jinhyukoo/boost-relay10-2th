## 🧑 api 서버

### 아래 세팅을 완료하고 서버 실행
---
### config 설정

1. config.js 파일에 패스워드 항목을 본인컴퓨터의 mysql 비번으로 수정할 것

2. mysql 접속

3. mysql 안에 boost database 생성, 아래 명령 사용
    ```
    create database boost;
    ```

4. mysql 종료
    ```
    exit
    ```

5. 아래 명령으로 백업한 db를 mysql 에 넣음
    ```
    mysql -uroot -p boost < boost_backup.sql 
    ```

---

### package 설치
```
npm i
```

### mecab 설치 
```
npm i --save mecab-ya
node_modules/mecab-ya/bin/install-mecab
node_modules/mecab-ya/bin/install-mecab ko
```

### 서버 시작 (pm2로 실행 권장)
```
node app.js
```



### rest api

1. 게시글 select 쿼리
    - GET /api/posts
 
2. 게시글 insert 쿼리
    - POST /api/posts
    - body : id, gender, age, info, start_date, end_date, place, group_name, story

3. 게시글 키워드로 검색 쿼리 
    - GET /api/posts/search/:keyword

4. 로그인 쿼리
    - POST /api/auth/login
    - body : id, pw

5. 회원 추가 => 임의의 회원정보 넣을 때 사용
    - POST /api/auth/register
    - body : id, pw, name, gender, age
