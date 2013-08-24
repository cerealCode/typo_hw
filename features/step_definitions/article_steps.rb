Given /the following (.*?) exist:$/ do |type, table|
  table.hashes.each do |element|
    if    type == "users"    then User.create(element)
    elsif type == "articles" then Article.create(element)
    elsif type == "comments" then Comment.create(element)
    end
  end
end
