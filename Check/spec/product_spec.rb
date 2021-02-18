require './lib/product'

describe 'Product' do
  subject(:prod) { Product.new(code, price)}

  describe 'add' do
    it 'should add Product according his code and use helping method self.for(code)' do
      expect(prod.add('PC')).to eq('PC')
    end
  end

  describe 'discount_pc' do
    context 'three pepsi cola'do
      before do
        prod.add('PC')
        prod.add('PC')
        prod.add('PC')
      end
      it "returns discounted price" do
        expect(prod.discount_pc).to eq(4.8)
      end
    end
  end

  describe 'discount_cc' do
    context 'five coca cola'do
      before do
        prod.add('CC')
        prod.add('CC')
        prod.add('CC')
        prod.add('CC')
        prod.add('CC')
      end
      it "returns discounted price" do
        expect(prod.discount_cc).to eq(4.5)
      end
    end
  end

  describe 'discount_wa' do
    context 'three water'do
      before do
        prod.add('WA')
        prod.add('WA')
        prod.add('WA')
      end
      it "returns discounted price" do
        expect(prod.discount_wa).to eq(2.55)
      end
    end
  end
end