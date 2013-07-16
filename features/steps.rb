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
