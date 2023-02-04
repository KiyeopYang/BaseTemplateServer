FROM node:18-alpine
# Installing libvips-dev for sharp Compatability


RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev vips-dev > /dev/null 2>&1

ENV NODE_ENV production
ENV APP_KEYS SXDJlt2VfEmdFjvs4LZ60g==,bxQj702co2xcOXJpKouvJA==,7jA1otYgXWlNc6B229RqPA==,2jTqaU7GjHFuVqS8nzxV7g==
ENV API_TOKEN_SALT 9De+Aywffuh6WOB0bfLUVw==
ENV ADMIN_JWT_SECRET p8fP5mfu2mPhdiowrYGWWA==
ENV JWT_SECRET zMX2kBtNqCNMg40wZk1+TA==

ENV AWS_ACCESS_KEY_ID AKIAWUH7PC7F2Q4BEMOK
ENV AWS_ACCESS_SECRET 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
ENV AWS_REGION ap-northeast-2
ENV AWS_BUCKET ddle-static
ENV URL https://admin.artddle.com
ENV KAKAO_REST_CLIENT_ID c39b554afa965a0a32e7a0ee21d7727a
ENV KAKAO_REST_CLIENT_SECRET ZjClA0QW52LWKolQSYj8PIeDHtd18X2P
ENV FRONTEND_URL https://artddle.com
ENV DATABASE_HOST petgpt.cby2xvm9mdjq.ap-northeast-2.rds.amazonaws.com
ENV DATABASE_PASSWORD dfggv#QhVv4^SZ!
ENV PORT 80

WORKDIR /app
EXPOSE 80

COPY . .
RUN npm install --production
RUN npm run build

CMD ["npm", "run","start"]
