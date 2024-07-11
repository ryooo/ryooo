# how to use

## out.pngを生成
```sh
# git historyを生成
sh run.sh

# termshotとgit-graphはカスタマイズしたものを利用
./termshot-jp -e --show-cmd -- './git-graph-jp --model simple --no-pager --style round -p ~/git/ryooo/make-history-git/history -f "%as %d%n%B%n"'
```

## git-graph
- https://github.com/ryooo/git-graph
  - 以下に対応済み
    - 日本語対応(Y年m月表示)
    - 日付の左にカラーリングした見出しマークを表示
```sh
cargo run -- -p ~/git/ryooo/make-history-git/history  --model simple --no-pager --style round -f "%as%d%n  %B%n

cargo build
target/debug/git-graph -p ~/git/ryooo/make-history-git/history  --model simple --no-pager --style round -f "%as%d%n  %B%n"
```

## termshot
- https://github.com/ryooo/termshot
  - 以下に対応済み
    - 日本語対応(hm-hack.ttf)
    - 絵文字対応(noto-emoji)
```
go run cmd/termshot/main.go -- '../git-graph/target/debug/git-graph --model simple --no-pager --style round -p ../ryooo/make-history-git/history -f "%as %d%n%B%n"'
go build cmd/termshot/main.go
```
