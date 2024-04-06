# Ateliers.Training.DDD 

## 1. このリポジトリの概要
ドメイン駆動について研究する個人的なプロジェクトです。  
プロジェクトの目的は、他の開発者の方に「C#でドメイン駆動はどうやって構成するのか？」と聞かれた際に
簡単に説明できるようにすることです。

## 2. ライセンス

このプロジェクトは [MIT ライセンス](LICENSE) の下で提供されています。  
詳細については、[LICENSE](LICENSE) ファイルをご覧ください。  
  
(This project is licensed under the terms of the [MIT License](LICENSE). See the [LICENSE](LICENSE) file for details. )


## 3. 動作確認環境（開発環境）

以下の環境で開発作業をしています。

```
【2024/04/05】
OS: Windows 11

IDE: Visual Studio Community 2022 - Version 17.9.3 
+ GitHub Copilot - 1.156.0.0

IDE: Visual Studio Code - Version 1.87.2
+ GitHub Copilot - 1.175.0
```

このプロジェクトではデータベースなどの外部リソースは使用していません。  
特別なソフトウェアは必要ありません。

## 4. 設計手法

ドメイン駆動設計 (DDD) を元に C# で製造しています。  
基本的な設計はMicrosoft社のガイドラインを元にしています。  
https://learn.microsoft.com/ja-jp/dotnet/architecture/microservices/microservice-ddd-cqrs-patterns/ddd-oriented-microservice

## 5. プロジェクト構成

基本的に `Ateliers.Core` と同様の構成になっています。  
詳しくは `Ateliers.Core` の README.md を参照してください。  
プロジェクトのURLは以下です。
  
https://github.com/yuu-git/Ateliers.Core  
  
概要図だけ以下に示します。  `Ateliers.Core` に概要図の画像があります。
  
リンク元: https://github.com/yuu-git/Ateliers.Core/blob/master/.Assets/Images/DomainDrivenDesign.drawio.png
![概要図](https://github.com/yuu-git/Ateliers.Core/blob/master/.Assets/Images/DomainDrivenDesign.drawio.png)

各プロジェクトのターゲットフレームワークは以下の通りです。

|プロジェクト名|ターゲットフレームワーク|備考|
|---|---|---|
|Ateliers.Training.DDD.ApplicationLayer|.Net Standard 2.0||
|Ateliers.Training.DDD.ApplicationLayer.Test|.Net 8|xUnit を採用|
|Ateliers.Training.DDD.DomainLayer|.Net Standard 2.0||
|Ateliers.Training.DDD.DomainLayer.Test|.Net 8|xUnit を採用|
|Ateliers.Training.DDD.InfrastructureLayer|.Net Standard 2.0||
|Ateliers.Training.DDD.InfrastructureLayer.Test|.Net 8|xUnit を採用|

## 6. ブランチ運用

研究用で私以外の作業は無いと想定しているため、ブランチ運用は `GitHub Flow` を採用しています。  

|ブランチ名|説明|
|---|---|
|master|リリース用ブランチ。 ビルドが可能である。|
|develop|作業用ブランチ。ビルド不可でもOK。ただし master へのマージは、必ずビルドが通る状態であること。|
|develop/feature_xxxx|試験的な機能の実装。xxxx には機能名(login, loging など)を入れる。 develop へのマージのみ許可。|
  

## 7. サブモジュール化の手順

### 7.1. コマンド

現在のプロジェクトディレクトリに `.Submodules` というディレクトリを作成して  
その中に `Ateliers.Training.DDD`` をサブモジュールとして追加したい場合：
```
git submodule add https://github.com/yuu-git/Ateliers.Training.DDD.git .Submodules/Ateliers.Training.DDD
```

### 7.2. サブモジュールのブランチについて

基本的に master の使用を推奨します。  
開発中機能の使用は develop ブランチを使用し、試験的機能を試す場合は、新しくブランチを作ります。  
`checkout` および `pull` の手順は以下の通り  
```
サブモジュールディレクトリに移動後：
git checkout master
git pull origin master
```
または
```
サブモジュールディレクトリに移動後：
git checkout develop
git pull origin develop
```

### 7.3. サブモジュールの更新方法

Visual Studio でサブモジュールを更新は、Visual Studio 2022 ではIDEから簡単にできますが  
他のバージョンでは、手動で行う必要があります。

手順は以下の通りです。
```
サブモジュールディレクトリに移動後：
# すべてのサブモジュールを一度に更新
git submodule update --remote --merge
```