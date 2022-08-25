#FROM node:alpine AS builder

#WORKDIR /usr/share/nginx/html

#COPY . .

#RUN npm install && npm run build

FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
#COPY --from=builder /app/dist/* /usr/share/nginx/html/
#ADD dist/apps/rusdn-marketplace /usr/share/nginx/html/app/
ADD dist/VSF /usr/share/nginx/html/app/
#COPY UI.sh /usr/share/nginx/html/app/
#RUN chmod 777 /usr/share/nginx/html/app/UI.sh
#RUN sh /usr/share/nginx/html/app/UI.sh
ENTRYPOINT ["nginx", "-g", "daemon off;"]
