# <勤怠管理アプリ>

## サイト概要
<労働者：worker, 上司（管理者）:boss, 労働時間:working_time, 残業申請:request
 労働者は残業申請の際に、勤務日の規定勤務時間と実労働期間の表示され、また上司サイドにも同様に表示されます
 労働時間の「start_at」、「finish_at」には上司が決めた労働時間が「open_at」、「end_at」にはヘッダーの出勤、退勤のボタンでその時間が入力されます
 
 残業データは労働者が作成した際にstatus：createdになり、上司が確認した際このstatusをconfirm_requested、confirmedに変更しconfirmedにした場合のみ労働時間の「over_at」へ
 数値が入るようになります
 
 上司は労働者のshowページで週間残業時間、月間残業時間を確認できます>

### サイトテーマ
<私の前職でサビ残めっちゃしていたのでサビ残ができない勤怠管理アプリを作りました>

### テーマを選んだ理由
<私の前職でサビ残めっちゃあったため作りました>

### ターゲットユーザ
<働きから改革を実践していく企業様へ>

### 主な利用シーン
<勤務管理に>

## 設計書
ER図<https://app.diagrams.net/#G14-wcVqj8yMGE7o1AMl5NQdmTRceVIKjI>
設計図<https://docs.google.com/spreadsheets/d/13k22XYo-dd54C8IQHzlhkXMcgZioMdV8NInJh-f2q-0/edit#gid=1778092840>

## チャレンジ要素一覧
<https://docs.google.com/spreadsheets/d/1IYHykGMysk7T3jSqLJfs_BBpU1sya4wHJi-lOMr7HFE/edit#gid=0>

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9
- インフラ：AWS EC2
-
## 使用素材
- 随時追記
-