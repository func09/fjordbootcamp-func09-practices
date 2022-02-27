describe "練習問題5" do
  describe "問1" do
    # 配列 ["コーヒー", "カフェラテ"] の要素数を表示してください
    example do
      expect {
        puts ["コーヒー", "カフェラテ"].size
      }.to output("2\n").to_stdout
    end
  end

  describe "問2" do
    # 配列 [1,2,3,4,5] の全要素の合計値を表示してください
    example do
      expect {
        puts [1,2,3,4,5].sum
      }.to output("15\n").to_stdout
    end
  end

  describe "問3" do
    # ["モカ", "カフェラテ", "モカ"]をuniqメソッドを使って重複する要素は1つにして表示してください
    example do
      expect {
        puts ["モカ", "カフェラテ", "モカ"].uniq
      }.to output(
        <<~MSG
        モカ
        カフェラテ
        MSG
      ).to_stdout
    end
  end

  describe "問4" do
    # 配列のclearメソッドをリファレンスマニュアルで調べて、clearメソッドを使ったプログラムを書いてください
    example do
      drinks = ["カフェラテ", "モカ"]
      expect {
        drinks = drinks.clear
      }.to change {
        drinks
      }.from(["カフェラテ", "モカ"]).to([])
    end
  end

  describe "問5" do
    # ["カフェラテ", "モカ", "カプチーノ"]の配列からランダムで1つを表示してください
    example do
      expect {
        puts ["カフェラテ", "モカ", "カプチーノ"].sample
      }.to output(/^(カフェラテ|モカ|カプチーノ)\n$/).to_stdout
    end
  end

  describe "問6" do
    # おみじくのプログラムを書いてください。出てくるのは、大吉、中吉、末吉、凶とします
    example do
      expect {
        puts %w(大吉 中吉 末吉 凶).sample
      }.to output(/^(大吉|中吉|末吉|凶)\n$/).to_stdout
    end
  end

  describe "問7" do
    # [100, 50, 300] を小さい順に並べて表示してください
    example do
      expect {
        puts [100, 50, 300].sort
      }.to output(
        <<~MSG
        50
        100
        300
        MSG
      ).to_stdout
    end
  end

  describe "問8" do
    # [100, 50, 300] を大きい順に表示してください
    example do
      expect {
        puts [100, 50, 300].sort.reverse
      }.to output(
        <<~MSG
        300
        100
        50
        MSG
      ).to_stdout
    end
  end

  describe "問9" do
    # "cba" を "abc" に変換して表示してください
    example do
      expect {
        puts "cba".split(//).sort.join('')
      }.to output("abc\n").to_stdout
    end
  end

  describe "問10" do
    # ["100", "50", "300"] を "100,50,300" を表示してください
    example do
      expect {
        puts ["100", "50", "300"].map{|item| item.to_i}.join(",")
      }.to output("100,50,300\n").to_stdout
    end
  end

  describe "問11" do
    # "100,50,300" から ["100", "50", "300"] を作って表示してください
    example do
      expect {
        p "100,50,300".split(/,/).map{|item| item.to_s}
      }.to output(%{["100", "50", "300"]\n}).to_stdout
    end
  end

  describe "問12" do
    # [1, 2, 3] の各要素を3倍した配列を作って表示してください
    example do
      expect {
        puts [1, 2, 3].map{|item| item * 3}
      }.to output(
        <<~MSG
        3
        6
        9
        MSG
      ).to_stdout
    end
  end

  describe "問13" do
    # ["abc", "xyz"] の各要素を逆順にして、["cba", "zyx"] にして表示してください
    example do
      expect {
        p ["abc", "xyz"].map{|item| item.split(//).reverse.join('')}
      }.to output(%{["cba", "zyx"]\n}).to_stdout
    end
  end

  describe "問14" do
    # ["aya", "achi", "Tama"] をすべて小文字に変換して、その後でアルファベット
    # 順にならべて ["achi", "aya", "tama"] にして表示してください。アルファベット
    # を小文字にするには downcase メソッドを使うことができます
    example do
      expect {
        p ["aya", "achi", "Tama"].map{|item| item.downcase}.sort
      }.to output(%{["achi", "aya", "tama"]\n}).to_stdout
    end
  end
end
