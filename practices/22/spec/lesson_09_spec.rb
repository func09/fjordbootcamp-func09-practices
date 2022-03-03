describe "練習問題9" do
  # モジュール ChocolateChipを定義して、あわせてインスタンスメソッド chocolate_chip
  # を定義してください。chocolate_chipメソッドの中では @name += "チョコレートチップ"
  # を実行してください。
  describe "問1" do
    after do
      Object.send(:remove_const, :ChocolateChip)
    end
    example do
      module ChocolateChip
        def chocolate_chip
          @name += "チョコレートチップ"
        end
      end

      expect(ChocolateChip).to be_method_defined(:chocolate_chip)
    end
  end

  # P.222 の module3.rb の Drinkクラスに問1で作った ChocolateChipモジュールをインクルードしてください。
  # Drink.new("モカ") で作ったオブジェクトで chocolate_chip メソッドを呼び出し、その後 @nameを表示してください
  describe "問2" do
    after do
      Object.send(:remove_const, :Drink)
      Object.send(:remove_const, :ChocolateChip)
    end
    example do
      module ChocolateChip
        def chocolate_chip
          @name += "チョコレートチップ"
        end
      end
      class Drink
        include ChocolateChip
        def initialize(name)
          @name = name
        end
        def name
          @name
        end
      end

      expect {
        drink = Drink.new("モカ")
        drink.chocolate_chip
        puts drink.name
      }.to output("モカチョコレートチップ\n").to_stdout
    end
  end

  # モジュールEspressoShotを定義して、定数Priceに100を代入してください。
  # その定数Priceを表示してください。
  describe "問3" do
    after do
      Object.send(:remove_const, :EspressoShot)
    end
    example do
      module EspressoShot
        Price = 100
      end

      expect{
        puts EspressoShot::Price
      }.to output("100\n").to_stdout
    end
  end

  # P.228 の module_method.rbを書き換え、モジュールWhippedCreamの定義を
  # 別ファイルに保存して require_relativeを使って読み込み、WhippedCreamモジュール
  # のクラスメソッドinfoを呼び出してください
  describe "問3" do
    before do
      require_relative '../lib/whipped_cream'
    end
    after do
      Object.send(:remove_const, :WhippedCream)
    end
    example do
      expect(WhippedCream.info).to eq "トッピング用ホイップクリーム"
    end
  end
end
