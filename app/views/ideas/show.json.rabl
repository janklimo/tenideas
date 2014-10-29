object @idea

attributes :id

if current_user.id == @idea.user_id
  node(:own) { "true" }
else
	node(:own) {"false"}
end

node :ideas do |i|
  [i.idea1, i.idea2, i.idea3, i.idea4, i.idea5, i.idea6, i.idea7, i.idea8, i.idea9, i.idea10]
end
