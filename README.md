# Ateliers.Training.DDD 

ドメイン駆動について研究する個人的なプロジェクトです。

## 1. ライセンス

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

## 6. サブモジュール化の手順

### 1. コマンド

現在のプロジェクトディレクトリに `.Submodules` というディレクトリを作成して  
その中に `Ateliers.Training.DDD`` をサブモジュールとして追加したい場合：
```
git submodule add https://github.com/yuu-git/Ateliers.Training.DDD.git .Submodules/Ateliers.Training.DDD
```

### 2. サブモジュールのブランチについて

基本的に master の使用を推奨。  
開発中機能の使用は develop ブランチを使用し、試験的機能を試す場合は、新しくブランチを作る。  
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