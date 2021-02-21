require_relative './transform_rgb'

RSpec.describe 'TransformRgb', type: :request do
  describe 'to_hex' do
    context 'Normal' do
      it '0, 0, 0' do
        ret = to_hex(0, 0, 0)
        expect(ret).to eq('#000000')
      end

      it '255, 255, 255' do
        ret = to_hex(255, 255, 255)
        expect(ret).to eq('#ffffff')
      end

      it '4, 60, 120' do
        ret = to_hex(4, 60, 120)
        expect(ret).to eq('#043c78')
      end
    end
  end

  describe 'to_ints' do
    context 'Normal' do
      it '#000000' do
        ret = to_ints('#000000')
        expect(ret).to eq([0, 0, 0])
      end

      it '#ffffff' do
        ret = to_ints('#ffffff')
        expect(ret).to eq([255, 255, 255])
      end

      it '#043c78' do
        ret = to_ints('#043c78')
        expect(ret).to eq([4, 60, 120])
      end
    end
  end
end
