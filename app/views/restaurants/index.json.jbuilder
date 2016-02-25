json.array! @restaurants do |r|
  json.extract! r, :id, :name, :genre
  json.reviews r.reviews do |review|
    json.extract! review, :id, :stars, :comments
  end
end
