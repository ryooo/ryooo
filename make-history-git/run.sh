
rm -rf history
mkdir history
cd history
rm -rf .git
git init

# committer-dateをauthor-dateに合わせる
alias committer-date-is-author-date="git rebase HEAD^ --committer-date-is-author-date"

# -------------------------
git checkout -b main
git commit --allow-empty --date "2007-03-31 0:00:00" -m "✨大学卒業(金融工学専攻)"
committer-date-is-author-date

# -------------------------
git checkout -b consulting-firm
git commit --date "2007-04-01 0:00:00" --allow-empty -m "✨IT系コンサルティングファーム 入社"
committer-date-is-author-date
git tag consulting-firm-1

git commit --date "2007-07-01 0:00:00" --allow-empty -m "✅複数プロジェクトで下積み

🔧Java, PL/SQL, Oracle, Windows Server"
committer-date-is-author-date
git tag consulting-firm-2

git commit --date "2010-5-01 0:00:00" --allow-empty -m "✅大規模ショッピングモール ウェブアプリ開発

🔧PHP, Linux, MySQL, Memcached, JavaScript"
committer-date-is-author-date

git checkout main
git commit --date "2009-08-01 0:00:00" --allow-empty -m "💪個人開発 問々堂(教職員用 問題共有サイト)
リッチエディタで画像のアップロードなども可能にしてユーザー向けに公開

🔧PHP, JavaScript, Linux, MySQL, Memcached"
committer-date-is-author-date
git tag personal-dev-1


# -------------------------
git checkout main
GIT_AUTHOR_DATE="2012-2-28 0:00:00" git merge consulting-firm -m "✨IT系コンサルティングファーム 退職"

# -------------------------
git checkout -b game
git commit --date "2012-03-01 0:00:00" --allow-empty -m "✨ゲーム会社 入社"
committer-date-is-author-date
git tag game-1

git commit --date "2012-03-01 0:00:00" --allow-empty -m "(詳細 非公開)
✅新規ゲームの開発・運用
最大50人8年程度のプロジェクトリーダー経験

🔧Ruby, C#(Unity),
🔧Linux, Cassandra, MySQL, Memcached, Redis,
🔧AWS, GCP

✅全社ログ出力/保存/分析基盤の開発・運用

🔧Ruby, fluentd,
🔧MongoDB, Redshift, BigQuery,
🔧Metabase, Looker

✅全社で利用するゲームアカウント永続化ライブラリの開発・運用

🔧C#(Unity), Native Plugin(Android, iOS)
"
committer-date-is-author-date
git tag game-2

# -------------------------
git checkout main
git commit --date "2020-08-01 0:00:00" --allow-empty -m "✨この頃からマネジメント業務の比率を下げエンジニアとして開発力向上に注力"
committer-date-is-author-date

# -------------------------
git checkout game
git checkout -b game-support-tools
git commit --date "2020-08-01 1:00:00" --allow-empty -m "(詳細 非公開)
✅全従業員向け業務支援ツール群の開発・運用

🔧Ruby, Python, TypeScript(React, NextJS),
🔧AWS, terraform,
🔧各種API（Slack, Box, GitHub, Google Workspace,
🔧Zendesk, Azure OpenAI, MicroCMS etc...)

✅各種キャンペーンサイト等の開発支援

🔧WordPress, NuxtJS, TypeScript, Storybook
"
committer-date-is-author-date
git tag game-support-tools-1

git checkout game-support-tools
git commit --date "2023-07-01 1:00:00" --allow-empty -m "
✅全従業員向けRAG機能付きAIチャットの開発

🔧Dify, Python, TypeScript(NextJS), Ruby,
🔧AWS, GCP, Azure, PostgreSQL,
🔧BERT, Azure OpenAI, AWS Bedrock, Google Gemini
"
committer-date-is-author-date
git tag game-support-tools-2

# -------------------------
git checkout main
git checkout -b b2b-web
git commit --date "2021-03-01 0:00:00" --allow-empty -m "✨BtoB ウェブサービス企業 副業参画(週一日)"
committer-date-is-author-date
git tag b2b-web-1

git commit --date "2021-03-01 0:00:00" --allow-empty -m "(詳細 非公開)
✅機能開発

🔧backend: Rust
🔧frontend: TypeScript(React)
"
committer-date-is-author-date
git tag b2b-web-2

# -------------------------
git checkout main
git commit --date "2021-05-01 0:00:00" --allow-empty -m "💪個人開発 Hiker(登山地図ダウンロードGPSアプリ)
国土地理院の地図をダウンロードして登山道と同時に表示できるスマホアプリ
課金機能ありでiOS, Androidのストアに数ヶ月公開

🔧Dart(Flutter), Ruby
"
committer-date-is-author-date
git tag personal-dev-2

# -------------------------
git checkout main
git commit --date "2021-10-01 0:00:00" --allow-empty -m "💪個人開発 勤怠打刻システム
RailsのStimulusを使ってみたくて開発

🔧Ruby, Stimulus
"
committer-date-is-author-date
git tag personal-dev-3


# -------------------------
git checkout main
git commit --date "2023-11-01 0:00:00" --allow-empty -m "💪個人開発 AIテストコードジェネレーター
プロジェクト内でwatch対象のファイルを修正すると、
リアルタイムで実装に合わせたテストコードを生成

開発者とレビュワーのエージェントを分けて、
rspecが通るまでLLMが自動でテストを実装するツール

🔧Ruby, OpenAI
"
committer-date-is-author-date
git tag personal-dev-4

# -------------------------
git checkout main
git commit --date "2023-05-01 0:00:00" --allow-empty -m "💪個人開発 声でやり取りできるChatGPTアプリ
GPT4リリースの1ヶ月後に、スマホのSTT, TTSを使って声だけで使えるChatGPTアプリを開発

🔧Dart(Flutter), OpenAI
"
committer-date-is-author-date
git tag personal-dev-5

# -------------------------
git checkout main
git commit --date "2023-08-01 0:00:00" --allow-empty -m "🖊一般社団法人日本ディープラーニング協会 E資格 取得"
committer-date-is-author-date
git tag qualification

# -------------------------
git checkout main
git commit --date "2024-05-01 0:00:00" --allow-empty -m "💪個人開発 英語版まとめサイト

🔧TypeScript(NextJS), Ruby, OpenAI
"
committer-date-is-author-date
git tag personal-dev-6

# -------------------------
git checkout main
git commit --date "2024-05-01 0:00:00" --allow-empty -m "💪個人開発 Slackで伝えるGitHub Actions製の遺言ツール
Slackにn日以上ログインがなければ、設定された遺言をポストするGitHub Actions

🔧TypeScript
"
committer-date-is-author-date
git tag personal-dev-7

# -------------------------
git checkout main
git commit --date "2024-06-01 0:00:00" --allow-empty -m "💪個人開発 AIライフプランナー
自然言語で家族のライフプランのヒアリングを行い、診断結果をグラフ表示

🔧TypeScript(NextJS), OpenAI
"
committer-date-is-author-date
git tag personal-dev-8



# -------------------------
git checkout game
git commit --date "2024-07-11 0:00:00" --allow-empty -m "✨ゲーム会社 新規ゲーム開発 継続中"
committer-date-is-author-date

# -------------------------
git checkout game-support-tools
git commit --date "2024-07-11 1:00:00" --allow-empty -m "✨ゲーム会社 業務支援ツール群開発 継続中"
committer-date-is-author-date

# -------------------------
git checkout b2b-web
git commit --date "2024-07-11 2:00:00" --allow-empty -m "✨BtoB ウェブサービス企業 機能開発 継続中"
committer-date-is-author-date


# -------------------------
git checkout main
git commit --date "2024-07-11 3:00:00" --allow-empty -m "⭐アイデアを出して一人で形にするところが得意
⭐言語はRuby, C#, TypeScript, Python, Dartに強み"
committer-date-is-author-date

~/git/git-graph/target/debug/git-graph --model simple --no-pager --style round -p . -f "%as %d%n%B%n"
