describe "練習問題6" do
  describe "問1" do
    # 次のハッシュmenuから、キー:caffe_latteに対応する値を取得して表示してください
    let(:menu) {
      {
        coffee: 300,
        caffe_latte: 400,
      }
    }
    example
  end

  describe "問2" do
    # 次のハッシュ menu から キー"モカ" に対応する値を取得して表示してください
    let(:menu) {
      "モカ" => "チョコレートシロップとミルク入り",
      "カフェラテ" => "ミルク入り",
    }
    example
  end

  describe "問3" do
    # 問1のハッシュ menu へ、キー:tea、値が300の組を追加して表示してください
    example
  end

  describe "問4" do
    # 問1のハッシュ menu から、キー:coffee の組を削除して表示してください
    example
  end

  describe "問5" do
    # 問1のハッシュ menu でキー:tea に対応する値がなければ "紅茶はありませんか？" と表示してください
    example
  end

  describe "問6" do
    # 問1のハッシュ menu でキー:caffe_latte の値が500以下であれば "カフェラテ" くださいと表示してください
    example
  end

  describe "問7" do
    # （上級問題）文字列"caffelatte" の中で使われているアルファベットと、その回数を数えてください。
    # ヒント：ハッシュを使ってアルファベットの各文字をキー、回数を値にセットしていきます。
    # "caffelatte" を1文字ずつの配列に分解するには chars メソッドを使います。
    example
  end

  describe "問8" do
    # menu = {"コーヒー" => 300, "カフェラテ" => 400 } の全組を、「コーヒー - 300円」 の形で表示してください
    example
  end

  describe "問9" do
    # 問8のプログラムを書き換えて、値が350以上のものだけ表示してください
    example
  end

  describe "問10" do
    # 問8のプログラムを書き換えて、menu に空ハッシュを代入した状態で実行してください
    example
  end

  describe "問11" do
    # menu = {"コーヒー" => 300, "カフェラテ" => 400 } から、全キーを持つ配列
    # （["コーヒー", "カフェラテ"]）を作ってください
    example
  end

end
