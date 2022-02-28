describe "練習問題7" do
  # カフェで注文をする「カフェラテをください」を表示する order メソッドを定義して呼び出してください
  describe "問1" do
    def order
      puts "カフェラテをください"
    end

    example do
      expect {
        order
      }.to output("カフェラテをください\n").to_stdout
    end
  end

  # 辺の長さが 3 の正方形の面積を計算して戻り値とする area メソッドを書いてください。
  describe "問2" do
    def area
      length = 3
      length * length
    end

    example do
      expect(area).to eq 9
    end
  end

  # サイコロを振って出た目を戻り値とする dice メソッドを書いてください。
  # 呼び出して戻り値を画面に表示してください。
  describe "問3" do
    def dice
      [*1..6].sample
    end

    example do
      expect {
        puts dice
      }.to output(/^[1-6]\n$/).to_stdout
    end
  end

  # カフェで注文をする、「ooをください」を表示する order メソッドを定義して呼び出してください。
  # 引数で注文する商品をメソッド呼び出し時に渡せるようにしてください。
  # そして、「カフェラテをください」と「モカをください」を表示してください。
  describe "問4" do
    def order(item)
      puts "#{item}をください"
    end

    example do
      expect {
        order("カフェラテ")
      }.to output("カフェラテをください\n").to_stdout
    end

    example do
      expect {
        order("モカ")
      }.to output("モカをください\n").to_stdout
    end
  end

  # 問3 で作った dice メソッドを変更します。
  # サイコロを振って 1 が出たら「もう１回」と表示し、
  # さらにサイコロをもう一度振り直すようにしてください。
  describe "問5" do
    def dice
      nums = Array.new([*1..6])
      result = nums.sample

      if result == 1
        puts "もう1回"
        return nums.sample
      else
        return result
      end
    end

    example do
      allow($stdout).to receive(:write)
      expect(dice).to satisfy do |num|
        (1 .. 6).cover?(num)
      end
    end

    example do
      nums = [*1..6]
      allow(Array).to receive(:new).with(nums) {
        double(nums, sample: 1)
      }
      expect {
        dice
      }.to output("もう1回\n").to_stdout
    end
  end

  # 品物の値段を返す price メソッドを作ります。キーワード引数で
  # itemを渡し、itemが "コーヒー"のときは 300を、"カフェラテ" の時は
  # 400を戻り値として返してください
  describe "問6" do
    def price(item:)
      items = {
        "コーヒー" => 300,
        "カフェラテ" => 400,
      }
      items[item]
    end

    subject { price(item: item) }

    context "item:コーヒー" do
      let(:item) { "コーヒー" }
      example do
        expect(subject).to eq 300
      end
    end

    context "item:カフェラテ" do
      let(:item) { "カフェラテ" }
      example do
        expect(subject).to eq 400
      end
    end
  end

  # 問6 に加えて、キーワード引数で size を渡し、sizeによって値段を上乗せしてください。
  # sizeが "ショート" の時は +0円、"トール" のときは +50円、"ベンティ" の時は +100円としてください
  describe "問7" do
    def price(item:, size:)
      items = {
        "コーヒー" => 300,
        "カフェラテ" => 400,
      }
      sizes = {
        "ショート" => 0,
        "トール" => 50,
        "ベンティ" => 100,
      }
      items[item] + sizes[size]
    end

    subject { price(item: item, size: size) }

    context "item:コーヒー, size:ショート" do
      let(:item) { "コーヒー" }
      let(:size) { "ショート" }
      example do
        expect(subject).to eq 300
      end
    end

    context "item:コーヒー, size:トール" do
      let(:item) { "コーヒー" }
      let(:size) { "トール" }
      example do
        expect(subject).to eq 350
      end
    end

    context "item:コーヒー, size:ベンティ" do
      let(:item) { "コーヒー" }
      let(:size) { "ベンティ" }
      example do
        expect(subject).to eq 400
      end
    end

    context "item:カフェラテ, size:ベンティ" do
      let(:item) { "カフェラテ" }
      let(:size) { "ベンティ" }
      example do
        expect(subject).to eq 500
      end
    end
  end

  # 問7 を変更し、sizeが渡されてない時のデフォルト値として "ショート" を設定してください
  describe "問8" do
    def price(item:, size: "ショート")
      items = {
        "コーヒー" => 300,
        "カフェラテ" => 400,
      }
      sizes = {
        "ショート" => 0,
        "トール" => 50,
        "ベンティ" => 100,
      }
      items[item] + sizes[size]
    end

    subject { price(item: item) }

    context "item:コーヒー" do
      let(:item) { "コーヒー" }
      example do
        expect(subject).to eq 300
      end
    end

    context "item:カフェラテ" do
      let(:item) { "カフェラテ" }
      example do
        expect(subject).to eq 400
      end
    end
  end

  # 次のプログラムはエラーになります。エラーにならずに「コーヒーをください」と表示する
  # ようにプログラムを書き換えてください。
  # def order
  #   puts "#{drink}をください"
  # end

  # drink = "コーヒー"
  # order
  describe "問8" do
    def order(drink:)
      puts "#{drink}をください"
    end

    subject {
      drink = "コーヒー"
      order(drink: drink)
    }

    example do
      allow($stdout).to receive(:write)
      expect {
        subject
      }.not_to raise_error
    end

    example do
      expect {
        subject
      }.to output("コーヒーをください\n").to_stdout
    end
  end
end
