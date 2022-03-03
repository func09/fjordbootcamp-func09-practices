describe "練習問題8" do
  after :each do
    # puts Item
  end

  # ハッシュ {:coffee => 300, :caffe_latte => 400} のクラスを確認してください。
  describe "問1" do
    example do
      expect({:coffee => 300, :caffe_latte => 400}.class).to eq Hash
    end
  end

  # Hashクラスのnewメソッドを使って、空のハッシュオブジェクトを作って表示してください。
  describe "問2" do
    example do
      expect {
        puts Hash.new({})
      }.to output("{}\n").to_stdout
    end
  end

  # CaffeLatteクラスを定義してください。定義したCaffeLatteクラスのオブジェクトを作ってください。
  # 作ったオブジェクトが属するクラスを調べてください。
  describe "問3" do
    class CaffeLatte
    end
    example do
      expect {
        puts CaffeLatte.new.class
      }.to output("CaffeLatte\n").to_stdout
    end
  end

  # Itemクラスを定義してください。メソッドnameを定義して、戻り値として "チーズケーキ" を返してください。
  # Itemクラスのオブジェクトを作って、メソッドnameを呼び出してください。
  describe "問4" do
    after do
      Object.send(:remove_const, :Item)
    end
    example do
      class Item
        def name
          "チーズケーキ"
        end
      end
  
      item = Item.new
      expect(item.name).to eq "チーズケーキ"
    end
  end

  # Itemクラスを定義してください。メソッドnameを定義して、戻り値として "チーズケーキ" を代入してください。
  # また、インスタンス変数@nameを取得するnameメソッドを定義して@nameを表示してください。
  describe "問5" do
    after do
      Object.send(:remove_const, :Item)
    end
    example do
      class Item
        def name=(text)
          @name = text
        end
        def name
          @name
        end
      end
      item = Item.new
      item.name = "チーズケーキ"
      expect(item.name).to eq "チーズケーキ"
    end
  end

  # "商品を扱うオブジェクト" と表示させる initialize メソッドを Itemクラスに定義して、呼び出してください
  describe "問6" do
    after do
      Object.send(:remove_const, :Item)
    end
    example do
      class Item
        def initialize
          puts "商品を扱うオブジェクト"
        end
      end
  
      expect {
        Item.new
      }.to output("商品を扱うオブジェクト\n").to_stdout
    end
  end

  # Itemクラスに initializeメソッドを定義してください。引数を1つ渡し、@name変数に代入してください。
  # Itemクラスのオブジェクトを2つ作り、@name変数にそれぞれ"マフィン"、"スコーン"を代入してください。
  # また、インスタンス変数@nameを取得するnameメソッドを定義して、2つのオブジェクト @name 変数を表示してください。
  describe "問7" do
    after do
      Object.send(:remove_const, :Item)
    end
    example do
      class Item
        def initialize(name)
          @name = name
        end
        def name
          @name
        end
      end

      item1 = Item.new("マフィン")
      item2 = Item.new("スコーン")

      expect {
        puts item1.name
      }.to output("マフィン\n").to_stdout

      expect {
        puts item2.name
      }.to output("スコーン\n").to_stdout
    end
  end

  # Drinkクラスにクラスメソッド todays_specialを定義して、"ホワイトモカ" を戻り値としてください。
  describe "問8" do
    after do
      Object.send(:remove_const, :Drink)
    end
    example do
      class Drink
        def self.todays_special
          "ホワイトモカ"
        end
      end

      expect(Drink.todays_special).to eq "ホワイトモカ"
    end
  end

  # P.207 の item1.rb の Itemクラスを継承した Foodクラスを作ってください。
  # Foodクラスのオブジェクトを作り、@name に"チーズケーキ"を代入して、nameメソッドを呼び出してください
  describe "問9" do
    after do
      Object.send(:remove_const, :Item)
      Object.send(:remove_const, :Food)
    end
    example do
      class Item
        def name
          @name
        end
        def name=(text)
          @name = text
        end
      end

      class Food < Item
      end

      food = Food.new
      food.name = "チーズケーキ"

      expect(food.name).to eq "チーズケーキ"
    end
  end
end
