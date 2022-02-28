describe "練習問題4" do
  describe "問1" do
    # 要素が「コーヒー」と「カフェラテ」である配列を作って、pメソッドで表示してください
    let(:ary) { ["コーヒー", "カフェラテ"] }
    example do
      expect {
        p ary
      }.to output(
        <<~MSG
        ["コーヒー", "カフェラテ"]
        MSG
      ).to_stdout
    end
  end
  describe "問2" do
    # 配列[コーヒー、カフェラテ、モカ]を変数drinksに代入してください
    example do
      drinks = %w(コーヒー カフェラテ モカ)
      expect(drinks).to contain_exactly("コーヒー", "カフェラテ", "モカ")
    end
  end

  describe "問3" do
    # 問2で書いたプログラムに追記して、「カフェラテ」を取得してください
    example do
      drinks = %w(コーヒー カフェラテ モカ)
      expect(drinks[1]).to eq "カフェラテ"
    end
  end

  describe "問4" do
    # 問2で書いたプログラムに追記して、先頭の要素「コーヒー」と末尾の要素「モカ」を取得して表示してください。
    example do
      drinks = %w(コーヒー カフェラテ モカ)
      expect {
        puts drinks.first
      }.to output("コーヒー\n").to_stdout
      expect {
        puts drinks.last
      }.to output("モカ\n").to_stdout
    end
  end

  describe "問5" do
    # 配列["コーヒー", "カフェラテ"] の末尾に "モカ" を加えて、表示してください
    example do
      drinks = %w(コーヒー カフェラテ)
      expect {
        puts drinks.push("モカ")
      }.to output(
        <<~MSG
        コーヒー
        カフェラテ
        モカ
        MSG
      ).to_stdout
    end
  end

  describe "問6" do
    # 配列[2,3]の先頭に1を追加して、[1,2,3]に変えて、表示してください。
    example do
      ary = [2, 3]
      expect {
        puts ary.unshift(1)
      }.to output(
        <<~MSG
        1
        2
        3
        MSG
      ).to_stdout
    end
  end

  describe "問7" do
    # [1,2]と[3,4]をつなげた配列を作って、表示してください
    example do
      expect {
        puts [1, 2] + [3, 4]
      }.to output(
        <<~MSG
        1
        2
        3
        4
        MSG
      ).to_stdout
    end
  end

  describe "問8" do
    # 配列["ティーラテ", "カフェラテ", "抹茶ラテ"]の全要素を表示してください。
    let(:drinks) { ["ティーラテ", "カフェラテ", "抹茶ラテ"] }
    example do
      expect {
        puts drinks
      }.to output(
        <<~MSG
        ティーラテ
        カフェラテ
        抹茶ラテ
        MSG
      ).to_stdout
    end
  end

  describe "問9" do
    # 配列["ティーラテ", "カフェラテ", "抹茶ラテ"]の全要素で、「ooお願いします」
    # と注文するように表示してください
    let(:drinks) { ["ティーラテ", "カフェラテ", "抹茶ラテ"] }
    example do
      expect {
        drinks.each do |d|
          puts "#{d}お願いします"
        end
      }.to output(
        <<~MSG
        ティーラテお願いします
        カフェラテお願いします
        抹茶ラテお願いします
        MSG
      ).to_stdout
    end
  end

  describe "問10" do
    # 配列 [1,2,3] の総和（つまり 1 + 2 + 3）を、eachメソッドを使って求めてください。
    # 総和を表す変数sumに0を代入しておいて、each メソッドで変数sumに配列の各要素
    # を加えていくのが1つの方法です
    let(:items) { [1,2,3] }
    example do
      sum = 0
      expect {
        items.each{ |item| sum = sum + item }
      }.to change {
        sum
      }.from(0).to(6)
    end
  end

  describe "問11" do
    # 問8で書いたプログラムを書き換えて、空の配列[]に変更して実行してください
    let(:drinks) { [] }
    example do
      expect {
        puts drinks
      }.to output(
        <<~MSG
        MSG
      ).to_stdout
    end
  end
end
