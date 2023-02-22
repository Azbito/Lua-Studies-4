-- Tables

-- Variables store 1 piece of data
-- While Tables store multiple pieces of data

message = 10 
output = 0

-- Table syntax: [name] = {}. *Do not forget the curly braces

testScores = {} -- this is an empty table

-- To not forget: remember that tables works out like a object which contains data. E.g const info = {nickname: Azbito, age: 18, isMale: true}

-- Here we may add datas according to their index number

testScores[1] = 95 -- index in Lua starts in 1
testScores[2] = 87
testScores[3] = 98

-- Acessing testScores' data by index

message = testScores[4]

coins = {20, 30, 18, 6, 0} -- this is a full table

-- Accessing coins' data by index

output = coins[5]

-- Adding values in table by function

prizeDrawNumbers = {}

results = 0

-- syntax is: table.insert([table's name], [value being added])

table.insert(prizeDrawNumbers, 100)
table.insert(prizeDrawNumbers, 5)
table.insert(prizeDrawNumbers, 27)

results = prizeDrawNumbers[2]

-- Iterating tables

number = 0

iterateTheTable = {95, 87, 98}

-- i represents wich index the looping is currently looking at
-- s represents which value is at that index 

-- The loop will start by looking at this table and finding the first value that it contains. Loop will start with i = 1 and s = 95.
for i, s in ipairs(iterateTheTable) do
    number = number + s -- it will increase the value of number (0) and will increase by s value.
    -- Loop will make number value from 0 to be 95. Loop will start again and increase number value, which now is 95, plus 87. It will give us 182. Loop will start once more, then increase number value, which now is 182, and it will be 280
end

-- Adding string value to the table

coins.subject = "I was made by the gold, the silver and the bronze!"

function love.draw()
  love.graphics.print(coins.subject)
end