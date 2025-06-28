FROM node:20-slim

# 作業ディレクトリを作成
WORKDIR /app

# gemini-cli をインストール
RUN npm install -g @google/gemini-cli

# 対話用に bash 追加
RUN apt-get update && apt-get install -y bash

# デフォルトコマンド
CMD ["bash"]

