json.array! @messages do |message|
  json.extract! message, :id, :content, :counter
end
