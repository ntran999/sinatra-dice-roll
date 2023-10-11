require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get ("/") do
  erb(:elephant)
end

get ("/dice/2/6") do
  first_dice = rand(1..6)
  second_dice = rand(1..6)
  sum = first_dice + second_dice

  outcome = "You rolled a #{first_dice} and a #{second_dice} for a total of #{sum}"

  "<h1>2d6</h1>
   <p>#{first_dice}</p>
   <p>#{second_dice}</p>"
end

get ("/dice/2/10") do
  first_dice = rand(1..10)
  second_dice = rand(1..10)
  

  outcome = "You rolled a #{first_dice} and a #{second_dice} for a total of #{sum}"

  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end
