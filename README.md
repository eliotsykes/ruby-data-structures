# Ruby Data Structures

<!-- MarkdownTOC depth=0 autolink=true bracket=round -->

- [Arrays](#arrays)
  - [Ruby Dynamic Arrays](#ruby-dynamic-arrays)
  - [Ruby Array and related API docs](#ruby-array-and-related-api-docs)
  - [Multi-dimensional Arrays](#multi-dimensional-arrays)
  - [RubyMonk Arrays (Intro)](#rubymonk-arrays-intro)
  - [RubyMonk Arrays (Advanced)](#rubymonk-arrays-advanced)
  - [Reinventing Arrays in Ruby](#reinventing-arrays-in-ruby)
- [Contributors](#contributors)

<!-- /MarkdownTOC -->

---

# Arrays

## Ruby Dynamic Arrays

Ruby Arrays are dynamic. Dynamic means that the size of the array can expand and contract. Contrast this to static arrays. Static arrays are used in some programming languages but not Ruby. Static arrays have fixed sizes and cannot expand to contain any more objects than the size the array was initially created with.

With dynamic arrays, and so with Ruby, we don’t have to worry about if an array is large enough to contain any new objects added to it.

## Ruby Array and related API docs

For a good bedtime read, check out all of the methods and operators available to Ruby Arrays. Consider experimenting with any of these Array methods that you find interesting in irb.  
http://www.ruby-doc.org/core-2.1.4/Array.html 

Ruby Arrays are Enumerables. Enumerable is a module included in many of Ruby’s collection data structures, and provides many of the collection-related methods  
http://www.ruby-doc.org/core-2.1.4/Enumerable.html

## Multi-dimensional Arrays

Multi-dimensional arrays are arrays that contain arrays. This is an example of a 2 dimensional array:

```ruby
[ [1, 7, 9, 11] , [223, 329, 2302], [33] ]
```

One example use of a 2-dimensional array is for holding sorted tabular data:

```ruby
contacts = [
  ['Bruce Wayne', 'Batman', '555-333-444'],
  ['Clark Kent', 'Superman', '555-123-456'],
  ['Peter Parker', 'Spiderman', '555-111-222']
  ...
]
```

Using this 2-D array as a data structure for storing contact records would allow us to build an HTML table like this, where each row is a contact with 3 columns (name, superhero name, and phone number):

```html
<table>
<% contacts.each do |contact| %>
  <tr>
    <% contact.each do |attribute| %>
      <td><%= attribute %></td>
    <% end %>
  </tr>
<% end %>
</table>
```

## RubyMonk Arrays (Intro)

You can complete the exercises on the pages and navigate through the sections using the Next > link on the navbar stuck to the bottom of each page  
http://rubymonk.com/learning/books/1-ruby-primer/chapters/1-arrays

## RubyMonk Arrays (Advanced)

Some good exercises in this section, including an exercise that introduces other data structures (Stack & Queue)  
http://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/33-advanced-arrays/

## Reinventing Arrays in Ruby

This seemed like a fun way to finish up Arrays in Ruby - by seeing how you could write your own Array class without relying on Ruby’s provided Array  
http://stackoverflow.com/questions/1571349/can-the-array-be-reinvented-in-ruby (first solution)

---

# Contributors

- Eliot Sykes https://eliotsykes.com/
- Your name here, contributions welcome!

---