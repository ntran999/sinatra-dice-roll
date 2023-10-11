require "sinatra"

get("/") do
  lucky_numb = rand(100)

  return "Your lucky number today is" + lucky_numb.to_s
end

get("/howdy") do
  "This is the homepage"
end
