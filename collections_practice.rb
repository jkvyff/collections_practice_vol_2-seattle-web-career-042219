require 'pry'
# your code goes here
def begins_with_r(tools)
	tools.all? {|tool| tool.start_with?("r")}
end

def contain_a(tools)
	tools_found_a = []
	tools.each  do |tool| 
		if tool.include?("a")
			tools_found_a.push(tool)
		end
	end
	tools_found_a
end

def first_wa(tools)
	tools.find {|tool| 
		if tool.is_a? String
			tool.start_with?("wa")
		end
	}
end

def remove_non_strings(tools)
	tools.select {|tool| tool.is_a? String}
end

def count_elements(name_list)
	found_hash = {}
	formatted = []
	name_list.each do |name_hash|
		if found_hash.include?(name_hash[:name])
		 	found_hash[name_hash[:name]] += 1			
		 else
		 	found_hash[name_hash[:name]] = 1
		end
	end
	found_hash.map do |key, value|
		formatted << {:name => key}.merge({:count => value})
	end
	formatted
end

def merge_data(arg1, arg2)
	merged_data = []
	arg1.each do |person|
		arg2[0].each do |name, data|
			if name == person[:first_name]
				merged_data << person.merge(data)
			end
		end
	end
	merged_data
end

def find_cool(hash)
	hash.collect do |people|
		people[:temperature] == "cool" ? people : nil
	end.compact
end

def organize_schools(hash)
	merged_data ={}
	hash.each do |name, locat_hash|
		if merged_data.keys.include?(locat_hash[:location])
			merged_data[locat_hash[:location]] << name
		else
			merged_data[locat_hash[:location]] = [name]
		end
	end
	merged_data
end
