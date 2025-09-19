# frozen_string_literal: true

# Exwrcise 118 - https://leetcode.com/problems/pascals-triangle/description/

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  triangle = []

  num_rows.times do |i|
    row = Array.new(i + 1, 1) # primeira e última posições sempre são 1

    # preenche os valores do meio com a soma dos dois de cima
    (1...i).each do |j|
      row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j]
    end

    triangle << row
  end

  triangle
end

# Exemplos de uso
p generate(5) # => [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
p generate(1) # => [[1]]
