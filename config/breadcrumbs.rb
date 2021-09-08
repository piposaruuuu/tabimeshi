crumb :root do
  link "Top", root_path
end

crumb :areas do
  link "エリア", find_areas_path
  parent :root
end

crumb :posts do 
  link "投稿一覧", area_posts_path(2)
  parent :areas
end


