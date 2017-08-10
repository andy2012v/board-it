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
#1
Exercise.create(
  difficulty: 'Easy',
  description:
   'val1 and val2 will equal what after the code below is executed? Explain your answer.
    val1 = true and false  # hint: output of this statement in IRB is NOT value of val1!
    val2 = true && false',
  solution:
   "Although these two statements might appear to be equivalent, they are not, due
    to the order of operations. Specifically, the and and or operators have lower
    precedence than the = operator, whereas the && and || operators have higher
    precedence than the = operator, based on order of operations.

    To help clarify this, here’s the same code, but employing parentheses to clarify
    the default order of operations:

    (val1 = true) and false    # results in val1 being equal to true
    val2 = (true && false)     # results in val2 being equal to false
    This is, incidentally, a great example of why using parentheses to clearly specify
    your intent is generally a good practice, in any language. But whether or not you
    use parentheses, it’s important to be aware of these order of operations rules and
    to thereby ensure that you are properly determining when to employ and / or vs. && / ||.",
  date: '10/08/2017',
  language_id: ruby.id
)
#2
Exercise.create(
  difficulty: 'Medium',
  description:
   "arr = ['onyx', 'wu tang', 'biggie']
    Get the 'biggie' string from arr. Explain how arrays are ordered.",
  solution:
   'arr[2]
    # OR
    arr[-1]

    Arrays are ordered collections of objects. Arrays are zero-indexed, meaning
    the first element is at position zero, the second is at position one, and so forth.',
  date: '10/08/2017',
  language_id: ruby.id
)
#3
Exercise.create(
  difficulty: 'Hard',
  description:
   "Which class defines the Dog.about method? Demonstrate that this class includes the about method.

    class Dog
      def self.about
        'we bark'
      end
    end",
  solution:
   "Dog.about # a singleton method that's defined in Dog's singleton class:
    Dog.singleton_class.instance_methods.include? :about # => true
    Every Ruby object has a singleton class to store methods for a particular object.",
  date: '10/08/2017',
  language_id: ruby.id
)
#4
Exercise.create(
  difficulty: 'Easy',
  description:
   "Write a function that sorts the keys in a hash by the length of the key as a string. For instance, the hash:

    { abc: 'hello', 'another_key' => 123, 4567 => 'third' }

    should result in:

    [\"abc\", \"4567\", \"another_key\"]",
  solution:
   'As is always true in programming, there are in fact multiple ways to accomplish this.

    The most straightforward answer would be of the form:

    hsh.keys.map(&:to_s).sort_by(&:length)

    or:

    hsh.keys.collect(&:to_s).sort_by { |key| key.length }

    Alternatively, Ruby’s Enumerable mixin provides many methods to operate on
    collections. The key here is to turn the hash keys into a collection, convert
    them all to strings, then sort the array.

    def key_sort hsh
    	hsh.keys.collect(&:to_s).sort { |a, b| a.length <=> b.length }
    end

    An equivalent call of the collect method is done with the usual block syntax of:

    collect { |x| x.to_s }',
  date: '11/08/2017',
  language_id: ruby.id
)
#5
Exercise.create(
  difficulty: 'Medium',
  description:
   '# Example #1:
    my_array = [10, 20, 30]
    my_array[0] = "bob"

    # Example #2:
    another_arr = [10, 20, 30]
    another_arr.map {|num| num == 10 ? "bob" : num}
    Example #1 and Example #2 both result in the ["bob", 20, 30] array. What is the
    key difference between the two examples?',
  solution:
   'Example #1 mutates my_array and Example #2 does not mutate another_arr.
    Mutating an array means changing it so it is no longer the same (i.e. deleting
    elements, adding new elements, etc.). The map() method creates a new array,
    so the another_arr is unchanged',
  date: '11/08/2017',
  language_id: ruby.id
)
#6
Exercise.create(
  difficulty: 'Hard',
  description:
   'Add a method called my_singleton_class to the Object class that returns the
    singleton class of an object. Don\'t use the built in singleton_class method.',
  solution:
   "class Object
      def my_singleton_class
        class << self
          self
        end
      end
    end

    # Check the code works
    Hash.my_singleton_class == Hash.singleton_class # => true
    The \'class << obj' syntax changes the scope to the obj's singleton class. In this
    case self equals Object, so class << self changes the scope to Object\'s singleton class",
  date: '11/08/2017',
  language_id: ruby.id
)
7
Exercise.create(
  difficulty: 'Easy',
  description: '',
  solution: '',
  date: '10/08/2017',
  language_id: ruby.id
)
8
Exercise.create(
  difficulty: 'Medium',
  description: '',
  solution: '',
  date: '10/08/2017',
  language_id: ruby.id
)
9
Exercise.create(
  difficulty: 'Hard',
  description: "",
  solution: '',
  date: '10/08/2017',
  language_id: ruby.id
)


# JavaScript
Exercise.create(
difficulty: 'Easy',
description:
  "// Use an object to map sets of brackets to their opposites?//
  var brackets = {
  '(': ')',
  '{': '}',
  '[': ']'
  };

  // On each input string, process it using the balance checker.//
  module.exports = function (string) {
  var stack = [];
  // Process every character on input
  for (var i = 0; i < string.length; i++) {
    if (brackets[stack[stack.length - 1]] === string[i]) {
      stack.pop();
    } else {
      stack.push(string[i]);
    }
  }

  return !stack.length;
  };",
solution: 5,
date: '10/07/2017',
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
date: '10/07/2017',
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
date: '10/07/2017',
language_id: javascript.id
)


# Python
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
