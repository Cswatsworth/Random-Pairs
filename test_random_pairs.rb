require 'minitest/autorun'
require_relative 'random_pairs.rb'

class TestPairsArray < Minitest::Test

	def test_two_names_returns_two_pairs
		pairs = create_pairs(['Dan','Marvin'])
		assert_equal(1, pairs.count)
	end

	def test_four_names_is_two_pairs
		pairs = create_pairs(['Dan','Marvin','Tim','Shirley'])
		assert_equal(2, pairs.count)
	end

	def test_six_names_returns_3_pairs
		pairs = create_pairs(['Dan','Marvin','Tim','Shirley','Chloe','April'])
		assert_equal(3, pairs.count)
		
	end

	def test_7_names_returns_3_odd
		pairs = create_pairs(['Dan','Marvin','Tim','Shirley','Chloe','April','Dan'])
		assert_equal(3, pairs.count)
	end

	def test_8_names_returns_4_pairs
		pairs = create_pairs(['Dan','Marvin','Tim','Shirley','Chloe','April','Dan','John'])
		assert_equal(4, pairs.count)
	end
end

