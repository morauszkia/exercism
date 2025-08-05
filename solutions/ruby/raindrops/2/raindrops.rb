=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(number)
    result = ""

    result += "Pling" if number % 3 == 0
    result += "Plang" if number % 5 == 0
    result += "Plong" if number % 7 == 0

    result.empty? ? number.to_s : result
  end
end