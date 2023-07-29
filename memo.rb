require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています


# if文を使用して続きを作成していきましょう。

    if memo_type == 1
        puts "拡張子を除いたファイルを入力してください"
        file_name =gets.chomp
        
        puts "メモしたい内容を記入してください"
        puts "完了したらCtr + D を押します。"
        memo = STDIN.read
       
         CSV.open("#{file_name}","a") do |csv|
             csv<<["#{memo}"]
  end
    elsif memo_type == 2
        puts "既存ファイルを保存します。拡張子を除いたファイルを入力してください"
        file_name =gets.chomp
         puts "メモしたい内容を記入してください"
        puts "完了したらCtr + D を押します。"
        memo = STDIN.read
     
         CSV.open("#{file_name}","a") do |csv|
             csv<<["#{memo}"]
  end
    else
        exit
    end
