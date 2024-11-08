# 가져올 이미지를 정의
FROM node:18

# 경로 설정하기
WORKDIR /app

# 현재 디렉토리의 모든 파일을 도커 컨테이너의 워킹 디렉토리에 복사한다.
COPY . .

# 명령어 실행 (의존성 설치)
RUN npm install

# 8080번 포트 노출
EXPOSE 8080

# npm start 스크립트 실행
CMD ["npm", "start"]