# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'dotenv/load'

User.create(
  admin: true,
  username: 'BoardItAdmin',
  email: 'example@gmail.com',
  password: 'sathvik'
)


ruby =
Language.create(
  name: 'Ruby',
  image_url_1: 'http://ianthekirkland.com/imgs/ruby-flat-icn.png',
  image_url_2: 'http://ianthekirkland.com/imgs/ruby-flat-icn.png',
  image_url_3: 'http://ianthekirkland.com/imgs/ruby-flat-icn.png'
)
javascript =
Language.create(
  name: 'JavaScript',
  image_url_1: "https://i.stack.imgur.com/Mmww2.png",
  image_url_2: "https://i.stack.imgur.com/Mmww2.png",
  image_url_3: "https://i.stack.imgur.com/Mmww2.png"
)
react =
Language.create(
  name: 'React',
  image_url_1: "http://logosrated.net/wp-content/uploads/parser/React-Logo-1.png",
  image_url_2: "http://logosrated.net/wp-content/uploads/parser/React-Logo-1.png",
  image_url_3: "http://logosrated.net/wp-content/uploads/parser/React-Logo-1.png"
)




# RUBY
Exercise.create(
  difficulty: 'Easy',
  description: 'Given an array [1,2,34,5,6,7,8,9], sum it up using a method.',
  solution: 'def sum(array)
  return array.inject(:+)
  end',
  date: '08/07/2017',
  language_id: ruby.id
)
Exercise.create(
  difficulty: 'Medium',
  description: 'class Foo
	class << self
		@foo = 42
	end
end',
  solution: '(class << Foo ; @foo ; end)',
  date: '08/07/2017',
  language_id: ruby.id
)
Exercise.create(
  difficulty: 'Hard',
  description: "Write a function that sorts the keys in a hash by the length
   of the key as a string. For instance, the hash:
   { abc: 'hello', 'another_key' => 123, 4567 => 'third' }",
  solution: 'hsh.keys.map(&:to_s).sort_by(&:length)',
  date: '08/07/2017',
  language_id: ruby.id
)


# JavaScript
Exercise.create(
difficulty: 'Easy',
description: "What will be printed on the console?
(function() {
   var a = b = 5;
})();",
solution: 5,
date: '08/07/2017',
language_id: javascript.id
)
Exercise.create(
difficulty: 'Medium',
description:
 "What is the result of the following code? Explain your answer.
  var fullname = 'John Doe';
  var obj = {
     fullname: 'Colin Ihrig',
     prop: {
        fullname: 'Aurelio De Rosa',
        getFullname: function() {
           return this.fullname;
        }
     }
  };
  console.log(obj.prop.getFullname());
  var test = obj.prop.getFullname;
  console.log(test());",
solution: "The code prints Aurelio De Rosa and John Doe",
date: '08/07/2017',
language_id: javascript.id
)
Exercise.create(
difficulty: 'Hard',
description: 'Create a function that, given a DOM Element on the page, will visit the element itself and all of its descendents (not just its immediate children). For each element visited, the function should pass that element to a provided callback function.

The arguments to the function should be:

a DOM element
a callback function (that takes a DOM element as its argument)',
solution: "function Traverse(p_element,p_callback) {
   p_callback(p_element);
   var list = p_element.children;
   for (var i = 0; i < list.length; i++) {
       Traverse(list[i],p_callback);  // recursive call
   }
}",
date: '08/07/2017',
language_id: javascript.id
)


# React
Exercise.create(
  difficulty: 'Easy',
  description: 'description',
  solution: 'solution',
  date: '08/07/2017',
  language_id: react.id
)
Exercise.create(
  difficulty: 'Medium',
  description: 'description',
  solution: 'solution',
  date: '08/07/2017',
  language_id: react.id
)
Exercise.create(
  difficulty: 'Hard',
  description: 'description',
  solution: 'solution',
  date: '08/07/2017',
  language_id: react.id
)
