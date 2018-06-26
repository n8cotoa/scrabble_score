require "./lib/scrabble_score.rb"

text1_content = []
text2_content = []
File.open("text1.txt", "r").each do |line|
  text1_content.push(line)
end
File.open("text2.txt", "r").each do |line|
  text2_content.push(line)
end

def block_fixer(name)
  text1_block = name.join("")
  text1_block = text1_block.gsub(/\n/, " ")
  text1_block = text1_block.gsub(/[0-9.,\/?()"";:-]/, " ")
  text1_block = text1_block.gsub(/  +/, " ")
  # print text1_block.split(" ")
end

def score_calc(name)
  name_score = 0
  name.to_s.split(" ").each do |word|
    name_score += scrabble_score(word)
  end
  name_score
end

text1_fix = block_fixer(text1_content)
text1_score = score_calc(text1_fix)
puts "This is the score for text1: #{text1_score}\n\n"

text2_fix = block_fixer(text2_content)
text2_score = score_calc(text2_fix)
puts "This is the score for text2: #{text2_score}\n\n"

if text1_score > text2_score
  puts "File 1 is the winner!"
else
  puts "File 2 is the winner!"
end
