# Git の基本を理解する

https://bootcamp.fjord.jp/practices/48

# Memo

## 基本

https://backlog.com/ja/git-tutorial/intro/01/

* Git はバージョン管理ソフトです
* リポジトリに履歴を残す
* 変更はコミットで記録する
  * ワークツリー -> インデックスに登録 -> 変更をコミットにする -> リポジトリに登録（Push）

## インストールと設定とコミット

https://backlog.com/ja/git-tutorial/intro/05/

```
# グローバルの設定を表示する
git config --global -l
```

```
# git の長いコマンドにエイリアスを用意する
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.sw switch
git config --global alias.st status
```

* `git init` で Gitのリポジトリを作成する
* Untracked <- 追跡対象になっていないファイル
* `git add hoge.md` みたいに追加する
  * カレントディレクトリ配下をインデックスに追加するなら `git add .`
* コミットするには `git commit`
  * `git commit -m 説明` で一気にコミットできるけど エディタで編集する方が好み
* コミットが履歴に追加されたかどうかは `git log` で確認する

## リモートリポジトリにプッシュする

https://backlog.com/ja/git-tutorial/intro/09/

* PUSH: ローカルリポジトリからリモートリポジトリにPushする
  * Pushとはアップロードのようなもの
* CLONE：すでにあるリポジトリを自分のPCに持ってくる（履歴ごと）ことを clone というよ
* PULL: リポジトリの他の人の変更などを手元に持ってくること

