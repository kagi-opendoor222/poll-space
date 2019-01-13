# README

# 投票アプリケーション(プロトタイプ)

## アプリケーション概要
少数派と多数派の意見が同列の扱いでピックアップされる投票アプリケーションのプロトタイプ

## テーブル設計

### themesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|message|text||
|start_time|datetime||
|end_time|datetime||
|user_id|references|foreign_key: true|

### groupテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|message|text||
|theme_id|references|foreign_key: true|

### voteテーブル
|Column|Type|Options|
|------|----|-------|
|message|text||
|group_id|references|foreign_key: true|
|user_id|references|foreign_key: true|

### userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|email|string||
|provider_id|references|foreign_key: true|

### providerテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||

### twitter_accountテーブル
|Column|Type|Options|
|uid|integer||
|user_id|references|foreign_key: true|




## アプリケーションの目的
投票という形式で自然に楽しみながら多数派が少数派の意見を知る事ができる環境を提供する事。
少数派と多数派の意見を同頻度でピックアップすることで、少数派は多くの人に自分の意見を知ってもらう場を得る事ができ、多数派からすると新しい知見を得て、自分の意見を昇華する機会を得る事ができるようにしたい。
お堅い議論の場ではなく、面白そうなアプリケーションを利用していたら自然とそういった恩恵を得ていた、という形が理想。

(投票という仕組みで多数派と少数派がはっきりと明示されるため、ユーザーが少数派である事に引け目を感じる事のなく、自由に意見発信できるような仕組みを導入する必要がある。)

## 機能
最も基本的な機能は投票を募集する機能と投票に参加する機能である。
twitterアカウント連携で登録したユーザーは投票を募集する事ができ、他のユーザーは自由にそれに参加する事ができる。

投票する際にはメッセージを添付する事ができ、少数派・多数派それぞれの評価の高いメッセージは画面上にピックアップされる。
また、投票の際にはSNSで内容がシェアされる(twitterカードを用いる)
投票状況は簡単にグラフで視覚的にわかりやすく表現される。(JSを用いる)

最新の投票、参加者の多い投票、友人の投票などはトップページで確認する事ができ、自分が募集・参加している投票はマイページにて閲覧できる。

## ターゲット
インターネットなどを通して人との繋がりや意見の発信などが好きなSNSユーザー全般。
twitterなどのSNSを通してこのアプリケーションの存在を知り、試しに利用してみるという流れでユーザ獲得する事を想定する。
したがって、SNSとの連携を中心に、初見でどうやって興味を持ってもらうかを意識してアプリケーションを作る。

## 背景
ユーザーはインターネット上に存在する数多くの選択肢から好きなもの選び、利用する事ができる。
その性質上、自分にとって居心地の良い同種の考えを持つもの同士でコミュニティが作られる事が多くなる。
結果的に反対意見は自然と排除され、意見や主義主張が先鋭化し、過激なものに陥ってしまう集団極性化という現象が起こりやすくなっている。

特に、二元的に少数派と多数派がはっきりと別れるものに関しては、その傾向が顕著である。
少数派は主張の数が相対的に少ない分、他の意見に埋もれてしまい、多数派の側にとっては少数派の主張に触れる機会がほとんどない。

さらに、インターネット上では共感だけでなく反発の感情でも意見が拡散される場合がある。
少数派の意見は共感される事が多数派に比べて少ないため、過激で反発を生みやすい意見ばかりが拡散され、理性的な意見が埋もれてしまう。
結果的に少数派は過激であるというイメージが先行し、余計に相手の事を知る機会が失われてしまう。

お互いの意見を知る機会がないという事は、成長の機会が奪われているという事なので双方にとって好ましくないはずだ。
さらに多様な意見を取り込んだ面白いコンテンツというものも産まれにくくなる。
そういった状況を変えるのに少しでも貢献できる可能性となればと思い、このWebアプリケーションを作る事に決めた。



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



