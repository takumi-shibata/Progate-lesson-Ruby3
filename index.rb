# メソッド(複数の処理を1つにまとめたもの)
# def メソッド名 まとめたい処理 end メソッド名(メソッドの呼び出し)
def introduce
  puts "こんにちは"
  puts "私はにんじゃわんこです"
  puts "14歳です"
end

puts "-----自己紹介-----"
# ↓メソッドの呼び出し(jsの関数を呼び出す実行処理に似ている)
introduce
# → -----自己紹介----- こんにちは 私はにんじゃわんこです 14歳です


# 引数(メソッドに与える追加情報、メソッドを呼び出す時に一緒に引数を渡すことで、メソッドの中でその値を利用することができる)
# def メソッド名(引数) まとめたい処理 end メソッド名(引数の値)
def print_info(item)
  puts "わんこでんきへようこそ！"
  puts "今日は#{item}がセール中です！"
end

# ↓メソッドの呼び出し+引数の値
print_info("ヘッドホン")
print_info("テレビ")
# →わんこでんきへようこそ！ 今日はヘッドホンがセール中です！ わんこでんきへようこそ！ 今日はテレビがセール中です！


# ↓複数の引数を受け取とる場合↓
def print_info(item,price)
  puts "わんこでんきへようこそ！"
  puts "今日は#{item}がセール中で#{price}円です！"
end

print_info("SDカード",1200)
# →わんこでんきへようこそ！ 今日はSDカードがセール中で1200円です！


# 戻り値(呼び出し元で受け取る処理結果のこと。jsとほぼ変わらない、詳しくはjs3のリポジトリ参照)
# メソッドの中でreturnを使う→ def メソッド名(引数) retrun 値 end メソッド名(引数の値)
def discount(price)
	return price / 2
end

puts "テレビがセール中です！"

half_price = discount(15000)
puts "特別価格で#{half_price}円です"
# →テレビがセール中です！ 特別価格で7500円です


# ↓※真偽値を返す戻り値の際は、defメソッド名/メソッドの呼び出しの末尾に「?」をつける！
def shipping_free?(price)
  return price >= 5000
end

# ↓priceが5000以上の場合はifの処理、priceが5000以下の場合はelseの処理
if shipping_free?(3000)
	puts "5000円以上のお買い上げなので送料はいただきません"
else
	puts "追加で送料をいただきます"
end
# →追加で送料をいただきます


# ↓※メソッド内の複数の戻り値(メソッドでは、条件分岐を組み合わせることで複数のreturnを用いることができる)
def price_with_shipping(price)
   # ↓priceが5000以上(true)の場合はif文内のreturnが実行され、処理が終了するがpriceが5000以下(false)の場合は実行されずif文後のreturnが実行され処理が終了する
   if price >= 5000
  	 return price
   end
   return price + 500
end

puts "商品の合計金額は3000円です"
puts "お支払い金額は、送料込みで#{price_with_shipping(3000)}円です"
# →商品の合計金額は3000円です　お支払い金額は、送料込みで3500}円です
























