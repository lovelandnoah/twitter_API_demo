json.tweets @tweets do |tweet|
	json.id tweet[:id]
	json.text tweet[:text]
	json.name tweet[:name][:screen_name]
end