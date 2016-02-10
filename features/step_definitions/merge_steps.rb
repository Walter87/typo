And /^the following articles exist$/ do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

Then /^the article "(.*?)" should have body "(.*?)"$/ do |title, body2|
  Article.find_by_title(title).body.should eq body2
end
