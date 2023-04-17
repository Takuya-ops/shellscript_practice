// stdio→スタンダート・アイ・オー standard input output、　ヘッダーファイル
// 色々な関数の機能を使えるようにする
#include <stdio.h>

// 一番初めに実行される関数
// void外部からの引数
int main(void)
{
  printf("Hello, world\n");
  printf("Hello, America\n");
  // 出力変換指定子
  printf("%d\n", 100);
  printf("%d円\n", 100);
  int apple = 5;
  apple = apple + 5;
  // 上の文を簡略化すると、
  apple += 5;
  printf("%d\n", apple);
  // 3.14 * 3 * 3の結果の整数部分が表示される（キャスト変換）
  printf("%d\n", (int)(3.14 * 3 * 3));
  // return 0以降の処理は行わない
  // int suchi;
  // printf("年齢を入力してください:");
  // キーボードからの文字入力
  // scanf("%d", &suchi);
  // if (suchi < 10)
  //   printf("１０未満です。");
  // if (suchi == 10)
  //   printf("１０です。");
  // if (suchi > 10)
  //   printf("１０より大きいです。");
  // if (suchi < 4)
  // {
  //   printf("0円です");
  // }
  // else if (suchi <= 18)
  // {
  //   printf("2000円です");
  // }
  // else
  // {
  //   printf("4000円です");
  // }
  // int year = 1;
  // double money = 1000000;
  // while (money < 100000000)
  // {
  //   year++;
  //   money = (money + 120000) * 1.05;
  // }
  // printf("%d年目：%f円となり、資産が１億を超えます", year, money);
  int array[] = {12, 13, 14};
  int i;
  for (i = 0; i < 3; i++)
  {
    printf("%d番目：%d\n", i + 1, array[i]);
  }
  return 0;
}

// int → 4バイト分のデータ
// short → 2バイト
// メモリIC → 1024通り使用可能
// double(小数)→ 8バイト
// char（１文字） → １バイト
// long（整数） → 4バイト
// float → 4バイト
// &&　どちらにも合致
// ||どちらかに合致
// !条件を反転
// ポインタ ＝ 参照渡し