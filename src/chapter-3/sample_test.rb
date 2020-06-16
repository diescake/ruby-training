require 'minitest/autorun'

# クラス名は camelCase
class SampleText < Minitest::Test
  # メソッド名は test_ で始めると自動で実行してくれる
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end
  def test_sample2
    refute_equal 'ruby', 'ruby'.upcase
  end

  # assert: 真であれば pass
  # refute: 偽であれば pass
  # assert_output: 標準出力する
  # assert_raises: 例外が発生すれば pass
end
