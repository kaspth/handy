# Handy - Finding Golden Phone Numbers

A phone number is really a string of numbers. A golden phone number adds to that by being a pleasing string of numbers.
A phone number is golden when it's easy to remember. Being easy to remember means the number satisfies people's sense of order and rhythm.

# A Golden Streak

Let's take a random series of numbers. A regular phone number: 43672895. We see the number can't hide it's random origin. It feels like anybody could have put it together. As such we don't see why we should care - it doesn't stand out from all the other phone numbers.

Now take a look at this: 45207540. There's a pattern to it. When we read a number like that the pieces stand out. It's easier to read because it doesn't feel like an 8 digit number. It feels like 4x2 numbers put together.

We can deduce a few things phone numbers must satisfy to be golden:

- We can easily split it up in our minds. I.e. 4x2.
- The sequences have a rhythm to them - a distance that feels pleasing. Like segments being 10 or 20 apart in value.
- Repeated segments. 67, is easier to remember when repeated, 67436788.
- All these pieces come together as order. Something that feels right, though we might not be able to explain it.

# The code

Instantiate a matcher and ask if the number is golden:

```ruby
Handy::Matcher.new(45207540).golden? # => true

Handy::Matcher.new(46208937).golden? # => false
```

You can also get a phone numbers score. A sign of how golden it is:

```ruby
Handy::Matcher.new(45207540).score # => 65
```

A number is considered golden if it has a score above 80.
