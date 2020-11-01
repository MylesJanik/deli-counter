# Write your code here.

def line(people)
    if people.length == 0
        puts "The line is currently empty."
    else
        counter = 1
        string_name = ""
        string_name += "The line is currently: "
        while counter < people.length
            string_name += "#{counter}. #{people[counter - 1]} "
            counter += 1
        end
        string_name += "#{people.length}. #{people[people.length - 1]}"
        puts string_name
    end
end

def take_a_number(line_array, new_person)
    if line_array.length == 0
        puts "Welcome, #{new_person}. You are number 1 in line."
        line_array.push(new_person)
    else
        puts "Welcome, #{new_person}. You are number #{line_array.length + 1} in line."
        line_array.push(new_person)
    end
end

def now_serving(line)
    if line.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{line[0]}."
        line.shift
    end
end