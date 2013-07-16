Given /that I have an object with text (.*)/ do |name|
  @first = name 
end

And /I have a second object with text (.*)/ do |name|
  @second = name
end

When /I combine them/ do |name|
  @result = @first + @second
end

Then /I should get a third object with text (.*)/ do |name|
  @result == @name
end

When /I call a method that doesn't exist/ do
  String.oh_no_i_left_soda_in_the_freezer_again
end

When /I downcase it/ do
  @result = @first.downcase
end

Then /I should get an object with text (.)/ do |name|
  @result == name
end
