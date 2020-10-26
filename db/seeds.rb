# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
blogs = [
    {
        title: "First day of class",
        content: "I was quite anxious. I haven't had a class in years. I wasn't quite fond of the online environment at first, but it really grew on me. Virtual learning was not as bad as it had initially appeared. Everyone--the instructors and the students--were all so kind. I think I will be okay during this bootcamp."
    },
    {
        title: "Whiteboarding",
        content: "I can't help but feel like I don't know very much. Everyone is so hardworking and smart. Will I ever reach the level of critical thinking as the top students in this bootcamp? I need to stop comparing myself to others and learn the way I know best. Today was the first day of our practice whiteboarding session. I didn't end up volunteering to go first, but I now have an idea of what to prepare for. One of the students really set the bar high when he started the whiteboarding challenge with a Jest test. Now I know I will have to do the same the next time I go."
    },
    {
        title: "Where has the time gone?",
        content: "How many weeks has it been? Time seems to be going by so fast. I am learning so much in such a short amount of time and it is very exhausting for my brain. I know I need to take a break for my brain to recover. My health is more important than my ability to absorb information. I was told that although we are in class for almost 8 hours a day, our brains can only retain about 4 hours of information. I am starting to learn that I need to be kind to myself and count all my wins."
    }
]

blogs.each do |attributes|
    Blog.create attributes
    puts "creating blog #{ attributes }"
end