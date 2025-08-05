=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  DROPS = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
  def self.convert(number)
    result = ""

    DROPS.each {|num, sound| result += sound if number % num == 0 }

    result.empty? ? number.to_s : result
  end
end