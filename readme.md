以下は、Dockerイメージをビルドおよび実行するための手順をまとめたREADME.mdファイルの日本語版です。

### README.md

```markdown
# 複数のPythonバージョンに対応したDocker環境

このリポジトリは、Dockerを使用して異なるPythonバージョンを管理および切り替える方法を提供します。特定のPythonバージョンでDockerコンテナをビルドおよび実行するためのスクリプトが含まれています。

## 前提条件

- Dockerがシステムにインストールされていること。
- （オプション）このリポジトリをクローンするためにGitがインストールされていること。

## ディレクトリ構造

```
.
├── Dockerfile.template
├── build.bat
├── run.bat
├── build.sh
└── run.sh

```

- `Dockerfile.template`: PythonイメージをビルドするためのテンプレートDockerfile。
- `build.bat`: WindowsでDockerイメージをビルドするためのバッチスクリプト。
- `run.bat`: WindowsでDockerコンテナを実行するためのバッチスクリプト。
- `build.sh`: LinuxでDockerイメージをビルドするためのバッチスクリプト。
- `run.sh`: LinuxでDockerコンテナを実行するためのバッチスクリプト。


## 使用方法

### Dockerイメージのビルド

特定のPythonバージョンでDockerイメージをビルドするには、`build.bat`スクリプトを使用します。`<python_version>`を希望するPythonバージョン（例：`3.8.10`）に置き換えてください。

```sh
build.bat <python_version>
```

**例:**

```sh
build.bat 3.8.10
```

### Dockerコンテナの実行

ビルドしたイメージでDockerコンテナを実行するには、`run.bat`スクリプトを使用します。`<python_version>`を希望するPythonバージョン（例：`3.8.10`）に置き換えてください。

```sh
run.bat <python_version>
```

**例:**

```sh
run.bat 3.8.10
```

## 注意事項

- スクリプトを実行する前に、Dockerがシステムで実行されていることを確認してください。
- Dockerイメージとコンテナは大量のディスクスペースを消費することがあります。必要に応じて、`docker images`、`docker ps`、`docker rm`、`docker rmi`などのDockerコマンドを使用して管理してください。

### 追加情報

- `Dockerfile.template` では、特定のPythonバージョンを引数として渡すことができるようにしています。