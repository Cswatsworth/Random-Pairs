def create_pairs(names) #array of strings
	array = [] #make empty array
	array_paired_names = names.shuffle.each_slice(2)
	
	array_paired_names.each do |pairs|
		if pairs.length == 2
			array << pairs
		else
			array.last << pairs
		end

	end
	array 
end

#create_pairs(['Dan','Marvin','Tim','Shirley']))