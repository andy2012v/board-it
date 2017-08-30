# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'dotenv/load'


# ADMIN
User.create(
  admin: true,
  username: 'BoardItAdmin',
  email: 'admin@gmail.com',
  password: 'admin2017'
)
# EXAMPLE USER #1
User.create(
  username: 'user1',
  email: 'user1@gmail.com',
  password: 'user1user'
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
python =
Language.create(
  name: 'Python',
  image_url_1: "https://i.stack.imgur.com/Mmww2.png",
  image_url_2: "https://i.stack.imgur.com/Mmww2.png",
  image_url_3: "https://i.stack.imgur.com/Mmww2.png"
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
  date: '29/08/2017',
  language_id: ruby.id,
  user_id: 1
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
  date: '29/08/2017',
  language_id: ruby.id,
  user_id: 1
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
  date: '29/08/2017',
  language_id: ruby.id,
  user_id: 1
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
  date: '30/08/2017',
  language_id: ruby.id,
  user_id: 1
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
  date: '30/08/2017',
  language_id: ruby.id,
  user_id: 1
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
  date: '30/08/2017',
  language_id: ruby.id,
  user_id: 1
)
# 7
Exercise.create(
  difficulty: 'Easy',
  description:
  'Object oriented programming (OOP) is at the core of Ruby, so even beginners
  need to know the basic OOP principles. OOP discussions tend to get abstract and
  I have made an effort to make this introduction concrete with examples.

  What is the value of the variable x?

  x = String.new("i wish i was surfing")',
  solution:
  '"i wish i was surfing"
  String is a class and classes are responsible for making "objects". "i wish i
  was surfing" is referred to as an object. "i wish i was surfing" is also referred
  to as an instance of the String class, which means that the String class made
  the "i wish i was surfing" object. We have been making String objects throughout
  these quizzes. The following two expressions are the same thing:

  x = String.new("i wish i was surfing")
  x = "i wish i was surfing"',
  date: '31/08/2017',
  language_id: ruby.id,
  user_id: 1
)
# 8
Exercise.create(
  difficulty: 'Medium',
  description:
  'Refactor the following code to not use inheritance.

  class Person
    def full_name(first_name, last_name)
      "#{first_name} #{last_name}"
    end
  end

  class HockeyPlayer < Person
  end

  player = HockeyPlayer.new
  p player.full_name("joe", "sakic")',
  solution:
  'class Person
    def full_name(first_name, last_name)
      "#{first_name} #{last_name}"
    end
  end

  class HockeyPlayer
    def full_name(first_name, last_name)
      "#{first_name} #{last_name}"
    end
  end

  This is terrible because the same code for the full_name() method is repeated
  in more than one place. The Don\'t Repeat Yourself (DRY) principle says that
  code should only be in one place and should never be repeated. Inheritance is
  one of the main techniques to keep code DRY.',
  date: '31/08/2017',
  language_id: ruby.id,
  user_id: 1
)
# 9
Exercise.create(
  difficulty: 'Hard',
  description:
  'What does the following code print? Explain.

  p self
  p "***"
  class LessThanJake
    p self
  end',
  solution:
  'main
  "***"
  LessThanJake
  A program starts in the top level scope. When the program encounters the class
  keyword, the scope changes to the class. When the context changes
  (the terms context and scope are synonymous), the self keyword is reassigned to
  a different object.',
  date: '31/08/2017',
  language_id: ruby.id,
  user_id: 1
)


# JavaScript
# 1
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
date: '30/08/2017',
language_id: javascript.id,
user_id: 1
)
# 2
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
date: '30/08/2017',
language_id: javascript.id,
user_id: 1
)
# 3
Exercise.create(
difficulty: 'Hard',
description: 'Create a function that, given a DOM Element on the page,
will visit the element itself and all of its descendents
(not just its immediate children). For each element visited, the function should
pass that element to a provided callback function.

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
date: '30/08/2017',
language_id: javascript.id,
user_id: 1
)
# 4
Exercise.create(
difficulty: 'easy',
description:
'What does the following expression return?

> var first = "Bart";
> var last = "Simpson";
> first + " " + last',
solution:
'"Bart Simpson"

In this example, three strings are concatenated.',
date: '31/08/2017',
language_id: javascript.id,
user_id: 1
)
# 5
Exercise.create(
difficulty: 'medium',
description:
'What does the following code print to the console?

function foo () {
  return bar();
  function bar() {
    return "Poppin bottles";
  }
}
console.log(foo());',
solution:
'"Poppin bottles"
The bar() method is hoisted to the top of the foo() method, so it can be called before it\'s defined.',
date: '31/08/2017',
language_id: javascript.id,
user_id: 1
)
# 6
Exercise.create(
difficulty: 'hard',
description:
'What does the following code print to the console?

var happy = {
  hi: function sing(n, result) {
    result = typeof result !== "undefined" ? result : [];
    if (n == 0) {
      result.push("No more bottles");
      return result;
    }
    var str = n + " bottles";
    result.push(str);
    return sing(n - 1, result);
  }
}

console.log(happy.hi(3));',
solution:
'["3 bottles", "2 bottles", "1 bottles", "No more bottles"]

The happy object has a hi property that points to the named function sing().
Object values are typically anonymous functions, but they can also be named
functions. A named function works well in this example to allow for recursion.',
date: '31/08/2017',
language_id: javascript.id,
user_id: 1
)
# 7
Exercise.create(
difficulty: 'easy',
description:
'What does the following expression print to the console?

if (5 > 10) {
  console.log("Not so sure about this");
} else {
  console.log("walking dead");
}',
solution:
'"walking dead"

When the boolean condition evaluates to false (5 > 10), the code block
associated with the if keyword is not executed and the code block associated
with the else keyword is executed.',
date: '01/09/2017',
language_id: javascript.id,
user_id: 1
)
# 8
Exercise.create(
difficulty: 'medium',
description:
'Write the $$$.find() function so the result variable is assigned to the string "cat".

arr = ["ant", "cat", "dog"]
result = $$$.find(arr, function(str) {
  return str[0] === "c";
});
console.log(result);',
solution:
'$$$ = {
  find: function (arr, callback) {
    for (var i = 0; i < arr.length; i++) {
      var e = arr[i];
      if (callback(e)) {return e};
    }
  }
}',
date: '01/09/2017',
language_id: javascript.id,
user_id: 1
)
# 9
Exercise.create(
difficulty: 'hard',
description:
'What does the following code print?

let boringBuf = new Buffer("8b76fde713ce", "base64");
let result = boringBuf.toString("base64")
console.log(result)',
solution:
'"8b76fde713ce" is printed.

The boringBuf variable encodes "8b76fde713ce" as a base64 string.

The result variable decodes the boringBuf buffer.',
date: '01/09/2017',
language_id: javascript.id,
user_id: 1
)



# Python
# 1
Exercise.create(
  difficulty: 'Easy',
  description:
  'What does the following code print to the console?

  first_name = "television"
  hobby = "homer"
  tmp = first_name
  first_name = hobby
  hobby = tmp
  print(f"{first_name} likes to watch {hobby}")',
  solution:
  '"homer likes to watch television" is printed to the console.

  This exercise uses the tmp variable to switch the values of the first_name and
  hobby variables. String interpolation is used to print the resulting string to the console.',
  date: '30/08/2017',
  language_id: python.id,
  user_id: 1
)
# 2
Exercise.create(
  difficulty: 'Medium',
  description:
  'What does the following code print?

  happy_stuff = ("smile", "laugh", "sing")
  for word in happy_stuff:
      print(f"I like to {word}")',
  solution:
  'The following lines are printed:

  I like to smile
  I like to laugh
  I like to sing
  for loops can be used to iterate over every item in a tuple.',
  date: '30/08/2017',
  language_id: python.id,
  user_id: 1
)
# 3
Exercise.create(
  difficulty: 'Hard',
  description:
  'What does the following code print to the console?

  class City:
      def __init__(self, country, state):
          self.country = country
          self.state = state

  houston = City("USA")

  print(houston.country)',
  solution:
  'This code raises a TypeError with the following message: init() missing 1 required positional argument: "state".

  The City class must be instantiated with two arguments, so our code that only instantiated it with one argument (City("USA")) is wrong. This would fix the code.

  houston = City("USA", "Texas")',
  date: '30/08/2017',
  language_id: python.id,
  user_id: 1
)
