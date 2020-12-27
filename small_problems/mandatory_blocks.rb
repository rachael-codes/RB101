# mandatory blocks
# from RB 101 'small problems'

# use bsearch to search array a more quicky than #select 

a = [1, 4, 8, 11, 15, 19] 
puts a.bsearch { |x| x > 8 }