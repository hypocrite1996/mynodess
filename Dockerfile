#使用node v14的映像
FROM node:current-alpine

ENV KEY=password
ENV METHOD=aes-256-cfb

#複製所有資料到docker根目錄
COPY . /

#設定docker根目錄為工作目錄
WORKDIR /

#跑指令，安裝依賴
RUN npm install

#開放端口
EXPOSE 80

#執行
CMD npm start

