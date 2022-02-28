describe "練習問題3" do
  describe "問1" do
    # 変数aが365よりも小さいかどうか判定するプログラムを、比較メソッドを使って書いてください。
    # そして、aに2を代入して実行してください。
    example do
      a = 2
      expect(a).to eq 2
      expect(a < 365).to be_truthy
    end
  end

  describe "問2" do
    # 変数aと 1+1 が等しいかどうか判断するプログラムを、比較メソッドを書いてください。
    # そして、aに2を代入して実行してください。
    example do
      a = 2
      expect(a).to eq 2
      expect(a == 1 + 1).to be_truthy
    end
  end

  describe "問3" do
    # 変数seasonが '夏' でないとき、「あんまんたべたい」と表示するプログラムを作成してください。
    # 変数seasonには'春'を代入するものとします
    example do
      season = "春"
      expect(season).to eq "春"
      expect {
        if season != "夏"
          puts "あんまんたべたい"
        end
      }.to output("あんまんたべたい\n").to_stdout
    end
  end

  describe "問4" do
    # 変数seasonが '夏' であるとき、「かき氷たべたい」「麦茶のみたい」と２行表示するプログラムを
    # 作成してください。変数seasonには '夏' を代入するものとします
    example do
      season = "夏"
      expect(season).to eq "夏"
      expect {
        if season == "夏"
          puts "かき氷たべたい"
          puts "麦茶のみたい"
        end
      }.to output("かき氷たべたい\n麦茶のみたい\n").to_stdout
    end
  end

  describe "問5" do
    # 変数walletが120以上であれば、「ジュース買おう」と表示し、
    # そうでなければ「お金じゃ買えない幸せがたくさんあるんだ」と表示するプログラムを書き、
    # 変数walletには100を代入して実行してください
    example do
      wallet = 100
      expect(wallet).to eq 100
      expect {
        if wallet >= 120
          puts "ジュース買おう"
        else
          puts "お金じゃ買えない幸せがたくさんあるんだ"
        end
      }.to output("お金じゃ買えない幸せがたくさんあるんだ\n").to_stdout
    end
  end

  describe "問6" do
    # 変数xが0以下、または、100以上のときに「範囲外です」と表示するプログラムを書いてください。
    # 変数xには200を代入するものとします
    example do
      x = 200
      expect(x).to eq 200
      expect {
        puts "範囲外です" if x <= 0 || 100 <= x
      }.to output("範囲外です\n").to_stdout
    end
  end

  describe "問7" do
    # 3つの変数x,y,zのうち、少なくとも1つが0より大きい時に「正の数です」と表示する
    # プログラムを書いてください。それぞれ 0, -1, 1 を代入するものとします。
    example do
      x, y, z = 0, -1, 1
      expect {
        if x > 0 || y > 0 || z > 0
          puts "正の数です"
        end
      }.to output("正の数です\n").to_stdout
    end
  end

  describe "問8" do
    # case式を使って、変数seasonが '春' の時は
    # 'アイスを買っていこう！'、'夏'の時は「かき氷かってこう！」、
    # それ以外の時は「あんまん買ってこう！」と表示するプログラムを書いてください。
    # 変数seasonには'春'を代入するものとします。
    example do
      season = "春"
      expect(season).to eq "春"
      expect {
        case season
        when "春"
          puts "アイスを買っていこう！"
        when "夏"
          puts "かき氷かってこう！"
        else
          puts "あんまん買ってこう！"
        end
      }.to output("アイスを買っていこう！\n").to_stdout
    end
  end

  describe "問9" do
    # 次のように表示するプログラムを、繰り返しを使って書いてください
    example do
      expect {
        7.times do |n|
          case n
          when 0, 3
            puts "カフェラテ"
          when 6
            puts "フラペチーノ"
          else
            puts "モカ"
          end
        end
      }.to output(
        <<~MSG
        カフェラテ
        モカ
        モカ
        カフェラテ
        モカ
        モカ
        フラペチーノ
        MSG
      ).to_stdout
    end
  end
end
