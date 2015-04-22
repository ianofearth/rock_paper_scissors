require('rspec')
require('rock_paper_scissors')

describe('String#rock_paper_scissors') do
it("returns true if rock is the object and scissors is the argument") do
  expect("rock".beats?("scissors")).to(eq("player one wins!"))
end

it("returns true if scissors is the object and paper is the argument") do
  expect("scissors".beats?("paper")).to(eq("player one wins!"))
end

it("returns true if paper is the object and rock is the argument") do
  expect("paper".beats?("rock")).to(eq("player one wins!"))
end

it("returns false if scissors is the object and rock is the argument") do
  expect("scissors".beats?("rock")).to(eq("player two wins!"))
end

it("returns false if rock is the object and paper is the argument") do
  expect("rock".beats?("paper")).to(eq("player two wins!"))
end

it("returns false if paper is the object and scissors is the argument") do
  expect("paper".beats?("scissors")).to(eq("player two wins!"))
end

it("returns tie if paper is the object and paper is the argument") do
  expect("paper".beats?("paper")).to(eq("You tied!"))
end

it("returns tie if rock is the object and rock is the argument") do
  expect("rock".beats?("rock")).to(eq("You tied!"))
end

it("returns tie if scissors is the object and scissors is the argument") do
  expect("scissors".beats?("scissors")).to(eq("You tied!"))
end
