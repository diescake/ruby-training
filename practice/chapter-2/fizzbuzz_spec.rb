require_relative './fizzbuzz'

RSpec.describe 'Fizzbuzz', type: :request do
  describe 'fizzbuzz' do
    context 'Normal' do
      it '3で割り切れる数値を引数に渡すと、"Fizz" を返す' do
        ret = fizz_buzz(3)
        expect(ret).to eq('Fizz')
      end

      it '5で割り切れる数値を引数に渡すと、"Buzz" を返す' do
        ret = fizz_buzz(5)
        expect(ret).to eq('Buzz')
      end

      it '15で割り切れる数値を引数に渡すと、"Fizz Buzz" を返す' do
        ret = fizz_buzz(15)
        expect(ret).to eq('Fizz Buzz')
      end

      it '上記以外の数値はその数値を文字列に変えて返す' do
        ret = fizz_buzz(1)
        expect(ret).to eq('1')

        ret = fizz_buzz(17)
        expect(ret).to eq('17')

        ret = fizz_buzz(31)
        expect(ret).to eq('31')
      end
    end
  end
end
