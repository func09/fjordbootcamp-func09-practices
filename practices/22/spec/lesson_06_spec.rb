describe "練習問題6" do
  let(:example_1_menu) {
    {
      coffee: 300,
      caffe_latte: 400,
    }
  }

  describe "問1" do
    # 次のハッシュmenuから、キー:caffe_latteに対応する値を取得して表示してください
    let(:menu) { example_1_menu }
    example do
      expect {
        puts menu[:caffe_latte]
      }.to output("400\n").to_stdout
    end
  end

  describe "問2" do
    # 次のハッシュ menu から キー"モカ" に対応する値を取得して表示してください
    let(:menu) {
      {
        "モカ" => "チョコレートシロップとミルク入り",
        "カフェラテ" => "ミルク入り",
      }
    }
    example do
      expect {
        puts menu["モカ"]
      }.to output("チョコレートシロップとミルク入り\n").to_stdout
    end
  end

  describe "問3" do
    # 問1のハッシュ menu へ、キー:tea、値が300の組を追加して表示してください
    let(:menu) { example_1_menu }
    example do
      expect {
        menu[:tea] = 300
        puts menu
      }.to output("{:coffee=>300, :caffe_latte=>400, :tea=>300}\n").to_stdout
    end
  end

  describe "問4" do
    # 問1のハッシュ menu から、キー:coffee の組を削除して表示してください
    let(:menu) { example_1_menu }
    example do
      expect {
        menu.delete(:coffee)
        puts menu
      }.to output("{:caffe_latte=>400}\n").to_stdout
    end
  end

  describe "問5" do
    # 問1のハッシュ menu でキー:tea に対応する値がなければ "紅茶はありませんか？" と表示してください
    let(:menu) { example_1_menu }
    example do
      expect {
        unless menu[:tea]
          puts "紅茶はありませんか？"
        end
      }.to output("紅茶はありませんか？\n").to_stdout
    end
  end

  describe "問6" do
    # 問1のハッシュ menu でキー:caffe_latte の値が500以下であれば "カフェラテください" と表示してください
    let(:menu) { example_1_menu }
    example do
      expect {
        if menu[:caffe_latte] <= 500
          puts "カフェラテください"
        end
      }.to output("カフェラテください\n").to_stdout
    end
  end

  describe "問7" do
    # （上級問題）文字列"caffelatte" の中で使われているアルファベットと、その回数を数えてください。
    # ヒント：ハッシュを使ってアルファベットの各文字をキー、回数を値にセットしていきます。
    # "caffelatte" を1文字ずつの配列に分解するには chars メソッドを使います。
    example do
      expect {
        hash = {}
        hash.default = 0
        chars = "caffelatte".chars.sort
        chars.each do |char|
          hash[char] = hash[char]+1
        end
        puts hash
      }.to output(%{{"a"=>2, "c"=>1, "e"=>2, "f"=>2, "l"=>1, "t"=>2}\n}).to_stdout
    end
  end

  describe "問8" do
    # menu = {"コーヒー" => 300, "カフェラテ" => 400 } の全組を、「コーヒー - 300円」 の形で表示してください
    example do
      menu = {
        "コーヒー" => 300,
        "カフェラテ" => 400,
      }
      expect {
        menu.each do |name, price|
          puts "#{name} - #{price}円"
        end
      }.to output(
        <<~MSG
        コーヒー - 300円
        カフェラテ - 400円
        MSG
      ).to_stdout
    end
  end

  describe "問9" do
    # 問8のプログラムを書き換えて、値が350以上のものだけ表示してください
    example do
      menu = {
        "コーヒー" => 300,
        "カフェラテ" => 400,
      }
      expect {
        menu.each do |name, price|
          puts "#{name} - #{price}円" if price >= 350
        end
      }.to output(
        <<~MSG
        カフェラテ - 400円
        MSG
      ).to_stdout
    end
  end

  describe "問10" do
    # 問8のプログラムを書き換えて、menu に空ハッシュを代入した状態で実行してください
    example do
      menu = {}
      expect {
        menu.each do |name, price|
          puts "#{name} - #{price}円"
        end
      }.to output("").to_stdout
    end
  end

  describe "問11" do
    # menu = {"コーヒー" => 300, "カフェラテ" => 400 } から、全キーを持つ配列
    # （["コーヒー", "カフェラテ"]）を作ってください
    example do
      menu = {
        "コーヒー" => 300,
        "カフェラテ" => 400,
      }
      menu_keys = menu.keys
      expect(menu_keys).to contain_exactly("コーヒー", "カフェラテ")
    end
  end

end
