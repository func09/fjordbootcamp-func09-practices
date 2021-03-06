describe "練習問題2" do
  describe "問1" do
    # 2 + 3 を計算して画面に表示する
    example do
      expect {
        puts 2 + 3
      }.to output("5\n").to_stdout
    end
  end

  describe "問2" do
    # 半径2cmの円の面積を求めてください。円の面積は半径x半径x3.14とします
    example do
      radius = 2
      expect(radius * radius * 3.14).to eq 12.56
    end
  end

  describe "問3" do
    # 文字列 'Ruby' を表示してください
    example do
      expect {
        puts "Ruby"
      }.to output("Ruby\n").to_stdout
    end
  end

  describe "問4" do
    # 文字列 "abc" と 文字列 "def" をつなげて表示してください
    example do
      expect {
        puts "abc" + "def"
      }.to output("abcdef\n").to_stdout
    end
  end

  describe "問5" do
    # 文字列 "123" と 文字列 "456" の両方を整数に変換し、さらに足し算した結果を表示してください
    example "" do
      expect {
        puts "123".to_i + "456".to_i
      }.to output("579\n").to_stdout
    end
  end

  describe "問6" do
    # 300円のコーヒーに、100円のエスプレッソショットを２つ加えた金額を表示してください。
    example do
      coffee_price = 300
      espresso_price = 100
      total = coffee_price + (espresso_price * 2)
      expect{
        puts "コーヒー:#{coffee_price}円"
        puts "合計:#{total}円"
      }.to output(
        <<~MSG
        コーヒー:300円
        合計:500円
        MSG
      ).to_stdout
    end
  end

  describe "問7" do
    # 問6のプログラムを書き終えたあなたがコーヒーを飲んで一息つくと、突然コーヒーが400円に値上がりしました！
    example do
      coffee_price = 400
      espresso_price = 100
      total = coffee_price + (espresso_price * 2)
      expect{
        puts "コーヒー:#{coffee_price}円"
        puts "合計:#{total}円"
      }.to output(
        <<~MSG
        コーヒー:400円
        合計:600円
        MSG
      ).to_stdout
    end
  end

  describe "問8" do
    # 300円のコーヒーを2杯注文した時の消費税を計算した次のプログラムがあります。
    # 途中でpメソッドを使って、300円のコーヒー2杯の値段を表示してください
    example do
      expect {
        total = 300 * 2
        tax = total * 0.1
        p total
        puts tax
      }.to output(/600\n/).to_stdout
    end
  end

  describe "問9" do
    # 300円のコーヒー2杯の値段を計算しようとする、エラーを含む次のプログラムがあります。
    # 実行してエラーを起こしてください。エラーメッセージなどを参考にプログラムを正しく修正してください。
    example do
      expect {
        total = 300 * 2
        puts t
      }.to raise_error(NameError)

      expect {
        total = 300 * 2
        puts total
      }.to output("600\n").to_stdout
    end
  end
end
