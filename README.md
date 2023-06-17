# SQL - Typescript - Node.js Stack Example
SQL - Typescript - Node.js 스택의 예제입니다.
## 실습 방법
2. 라이브러리 설치 :
   - `npm install`
3. 서버 실행:
   - `npm run start`
4. 서버 테스트 :
   - `curl localhost:5500/Competitions`
5. SQL 접속을 위한 설정
   - .env-example 파일을 수정해서 DB 정보를 바꿔준다.
      - TYPEORM_HOST
      - TYPEORM_USERNAME
      - TYPEORM_PASSWORD
      - TYPEORM_DATABASE
      - TYPEORM_PORT
6. 서버 빌드
   - `npm run build`
7. 빌드된 서버 실행
   - `node ./build/src/server.js`
