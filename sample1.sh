# echo "Hello World"

# var1="変数"
# # 変数の値を表示するときは、変数前に＄マーク
# echo $var1

# # 配列の作成 ※ =前後に空白があるとエラーになる
# fruits=("banana" "apple" "grape")
# # 配列の中身をすべて表示
# echo ${fruits[@]}
# # インデックス番号が0のものを表示
# echo ${fruits[0]}
# # すべてのインデックス番号を表示
# echo ${!fruits[@]}
# # 要素の個数を表示
# echo ${#fruits[@]}
# # 要素の追加
# fruits[3]="lemon"
# echo ${fruits[@]}

# # 入力したファイル名のtxtファイルを作る（-pは文字付きの標準入力）
# read -p "値を入力してください：" var
# # テキストファイルの中身にvar=入力された値を書き込む（>>にすることで値を追加していく事ができる）
# echo var = $var >> sample.txt

# # 第一引数をvarに代入
# var=$1
# if test $var="blue";
# then
#   echo "進め"
# # if文を閉じる時fiがないとsyntax　errorになる
# fi

# # 第一引数をvarに代入
# var=$1
# # []内の半角スペースは必須（ないとcommand not foundになる）、[]は[[]]でもOK!
# if [ $var="blue" ];
# then
#   echo "進め"
# # if文を閉じる時fiがないとsyntax　errorになる
# fi

# var=$1
# # $マークを忘れない（ないと何も返ってこない）、文末はセミコロン
# if [ $var = "blue" ];
# # thenを忘れない（syntax errorになる）
# then
#   echo "進め"
# elif [ $var = "red" ];
# then
#   echo "止まれ"
# # elseの後にセミコロンはいらない
# else
# # elseの時はthenいらない
#   echo "待て"
# fi

# var=$1
# # -eqは=（イコール）
# if [ $var -eq 10 ];
# then
#   echo  "入力値は10です"
# # ltは < の意味
# elif [ $var -lt 10 ];
# then
#   echo "入力値は10より小さいです"
# # -gtは > の意味
# elif [ $var -gt 20 ];
# then
#   echo "入力値は20より大きいです"
# else
#   echo "入力値は10〜20の間です"  
# fi

# # and文
# # if [ $1 -gt 20 ] && [ $1 -le 50 ];
# # -aで&&を表現することも可能(&&前後の[]は取り除く)
# # if [ $1 -gt 20 -a $1 -le 50 ];
# # if [[ $1 -gt 20 && $1 -le 50 ]]
# # if testでの記載可能
# if test $1 -gt 20 && test $1 -le 50;
# then
#   echo "入力値は20より大きく50より小さいです"
# else
#   echo "<20, 50<が入力値の範囲です"
# fi

# orの場合は、||か-oを使用する

# # not文
# if [ ! $1 = "apple" ];
# then
#   echo "入力値はappleではありません"
# else
#   echo "入力値はappleです"
# fi

# # コマンド１が実行されたらコマンド２を実行（両方実行される）
# echo "morning" && echo "evening"

# # コマンド１がエラーならコマンド２を実行（片方だけ実行される）
# cho "right" || echo "left"

# 

# ディレクトリのファイル一覧を表示
ls

# 2回値を標準入力で受け付けて、変数に設定する。
read -p "ファイル名を入力してください：" file_name
read -p "ファイルに追記する値を入力してください：" input_val

# file_nameのファイルが存在する場合は、input_valの値を追記する
if [ -f $file_name ];
then
  # echoの後はセミコロンが必要
  echo $input_val >> $file_name;
else
  echo "ファイルが存在しません"
fi