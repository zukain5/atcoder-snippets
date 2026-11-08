# atcoder-snippets

AtCoderで使用する個人用Rubyスニペット集です。

## 提出コードへの参照

このリポジトリのコードをコンテスト中に使用する場合は、提出コードに次のコメントを含めます。

```ruby
# Source: https://github.com/zukain5/atcoder-snippets
```

AtCoderの[生成AI対策ルール](https://info.atcoder.jp/entry/llm-rules-ja)に従い、生成AIを用いて作成したコードはコンテスト開始前にこのPublicリポジトリへ公開します。コンテスト開始後に追加・変更したコードを、そのコンテストで事前公開済みのコードとして使用することはできません。

このリポジトリの事前公開は、開催中のコンテストで生成AIを使用することを許可するものではありません。参加時には最新の公式ルールを確認してください。

## Ruby

- `ruby/bfs.rb`: グラフの幅優先探索
- `ruby/grid_bfs.rb`: グリッドの幅優先探索
- `ruby/dfs.rb`: グラフの反復深さ優先探索
- `ruby/binary_search.rb`: lower bound / upper bound
- `ruby/prefix_sum.rb`: 累積和
- `ruby/segment_tree.rb`: 1点更新・区間集計の汎用セグメント木

## Test

```sh
ruby test/snippets_test.rb
```
