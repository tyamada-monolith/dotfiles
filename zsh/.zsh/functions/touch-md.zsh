# ~/.zshrc に追加するfunction
touch-md() {
    # 使用方法を表示する関数
    local show_usage() {
        echo "使用方法: mdnew [件名]"
        echo "例: mdnew 会議メモ"
        echo "    → 会議メモ_20250709.md が作成されます"
        echo "    mdnew"
        echo "    → 20250709.md が作成されます（日付のみ）"
    }

    # 現在の日付を取得（yyyymmdd形式）
    local date_str=$(date +%Y%m%d)

    # ファイル名を作成
    if [[ $# -eq 0 ]]; then
        # 引数なしの場合は日付のみ
        local filename="${date_str}.md"
    else
        # 引数ありの場合は従来通り
        local subject="$*"
        local filename="${subject}_${date_str}.md"
    fi

    # ファイルを作成し、冒頭にファイル名をヘッダーとして追加
    echo "# $filename" > "$filename"

    # 結果を表示
    if [[ $? -eq 0 ]]; then
        echo "ファイルを作成しました: $filename"
    else
        echo "エラー: ファイルの作成に失敗しました"
        return 1
    fi
}
