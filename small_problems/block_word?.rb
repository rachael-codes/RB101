# Program: Now I Know My ABCs
# Date: 01/19/21

# A collection of spelling blocks has two letters per block, as shown in this list:

=begin 
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
=end 

# This limits the words you can spell with the blocks to just those words that do not use 
# both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this 
# set of blocks, false otherwise.

# PEDAC
# input: string
# output: true (if string can be spelled w/ blocks) or false (if not)

# explicit: 
# -you cannot use both letters on a block
# -each block can only be used once (thus, 'bob' wouldn't work)

# implicit
# uppercase or lowercase letters are both valid input 

# Data Structure: block hash and array of letters in string 

# Algo
# -turn blocks into a hash
# -initialize a result array
# -convert string to upcase then split into an array of letters 
# -iterate over letters to check...
#  -if the string doesn't include both a block's key AND value and 
#   neither the key nor the associated value is already in the result array...
#     -then add to result array
#  -rejoin result array; if it equals the input, return true; else return, false 

# My solution
BLOCK_HASH = { B:'0', X:'K', D:'Q', C:'P', N:'A', G:'T', R:'E', F:'S', 
               J:'W', H:'U', V:'I', L:'Y',   Z:'M' } 

def block_word?(string)
  letters = string.upcase.split('')
  result = []
  letters.each do |letter|
    if !result.include?(letter) && 
       !result.include?(BLOCK_HASH[letter.intern]) && 
       !letters.include?(BLOCK_HASH[letter.intern]) && 
       !letters.include?(BLOCK_HASH.key(letter))
     result << letter
    end 
  end 
  result.join('') == string.upcase
end 

# LS solution
#  Logic: If we find a count of 2 or greater, then we know that either both block characters are 
# contained within the string, or that a character from the current block occurs more than once 
# in that string.
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word2?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

# TEST CASES
block_word?('BATCH') # == true; #B but no 0; A but no N; T but no G; C but no P; H but no U
block_word?('BUTCH') # == false; #B but no 0; U and also H -- this returns false 
block_word?('jest') # == true; #J but no W; E but no R; S but no F; T but no G