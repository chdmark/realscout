# def remove_null(data)
# 	if data[0] == " " || data[0] == "None" || data[2] == " " || data[2] == "None"
# 	end

# 	new_array = data.each_slice(2).to_a 

# 	new_array.each do |element|
# 		element.each do |inner_element|

# 		end 

# 	end




# end




# # [[amy, 1],[bobby," "],[bobby," "],[alice, 1]]
# # denominator = 3 (unique names)
# # names with 1 = numerator

# # 2/3

# # [[amy, 1],[bobby, " "]],
# # [[alice,1],[mark," "]],
# # [[mark," "], [bobby," "]]

# {
# 	amy => 1,
# 	1 => 2,
# 	bobby => 2,
# 	"" => 2,
# 	alice => 1
# }

# 2/3

O(3n+1) = space
O(2n+1) = time

transactions = Integer(gets)
current_transaction=0
data = []
bad_data = []

while (current_transaction < transactions)
    transaction = gets;
    clean_transaction = transaction.gsub(/\n/,'').split(",",-1) 
    
    if clean_transaction[0] == "" || clean_transaction[0] == "None" ||      clean_transaction[2] == "" || clean_transaction[2] == "None" || clean_transaction[0] == clean_transaction[2]
        bad_data << clean_transaction
    else
        data << clean_transaction
    end
    current_transaction += 1
end

new_data = data.flatten
new_hash = Hash.new(0)

new_data.each do |element|
    new_hash[element] +=1 
end

num = (new_hash["1"]).to_f
den = (new_hash.length - 2).to_f
puts "%0.5f" % [num/den]
# puts "%0.5f" % [(new_hash["1"]).to_f/(new_hash.length - 2).to_f]
