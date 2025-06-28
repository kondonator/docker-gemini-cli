# docker-gemini-cli

Google が提供する AI エージェント CLI ツール [`gemini-cli`](https://github.com/google-gemini/gemini-cli) を、ローカル環境に直接インストールせずに使えるようにする Docker コンテナです。

---

## 🚀 概要

このリポジトリでは、Node.js をベースとしたシンプルな Docker コンテナを使って `gemini-cli` を動作させることができます。  
ローカル環境に Node.js や `gemini-cli` をインストールせず、環境を汚さずに試したい方に最適です。

---

## 🔧 使い方

### 1. このリポジトリをクローン

```bash
git clone https://github.com/kondonator/docker-gemini-cli.git
cd gemini-cli-docker
````

### 2. `.env` ファイルを作成

GEMINI APIキーを環境変数として読み込むため、`.env` ファイルを用意します。

```env
GEMINI_API_KEY=your_api_key_here
```

> APIキーの取得方法については [`gemini-cli` の公式ドキュメント](https://github.com/google-gemini/gemini-cli#authentication) を参照してください。

### 3. Docker イメージをビルド

```bash
docker compose build --no-cache
```

### 4. コンテナを起動して CLI を使用

```bash
docker compose run gemini
```

起動後、以下のように対話モードに入ることができます：

```bash
gemini
```

---

## 💡 ホストとファイルを共有するには

`compose.yml` では、カレントディレクトリ（`./`）が `/app` としてコンテナ内にマウントされています。
ホストのファイルを扱いたい場合は `/app/` 以下のパスで参照してください。

---

## 🧼 ローカル環境に何もインストールしたくない方向け

この構成では、Node.js や `gemini-cli` を一切ローカルにインストールせずに利用可能です。
環境をクリーンに保ちたい方に最適です。

---

## 📦 依存環境

* Docker
* docker-compose

---

## 📄 参考リンク

* gemini-cli GitHub: [https://github.com/google-gemini/gemini-cli](https://github.com/google-gemini/gemini-cli)
* Gemini API ドキュメント: [https://ai.google.dev/](https://ai.google.dev/)

---

## 📝 ライセンス

このプロジェクトは Apache2.0 ライセンスです。

