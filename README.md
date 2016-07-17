# MemoHelper
Add one liner method memoization to ruby classes.  This is solely syntactic prettiness and does not add much functionality over basic ruby.

# Purpose/Examples
I wrote this gem to help reduce boilerplate in some code where memoization was common and to ensure that memoization was consistent across a project and handled the "falsey" case correctly.

First, the simple example:
```
def french_articles
  @french_articles ||= Article.where(language: 'french')
end
```
becomes the slightly shorter
```
memo(:french_articles) { Article.where(language: 'french') }
```

Falsey error prone case:
```
def bad_memo
  @bad_memo ||= expensive_method
end

def expensive_method
  sleep 5
  false
end
```
The "memoized" value would be loaded each time through since its value is falsey.  This gem handles that case well:
```
memo(:good_memo) { expensive_method }
```

# Installation
Add the following to your Gemfile and bundle install:
```
gem "memo_helper", '~> 0.0.1'
```

# Other related (and much more feature filled!) gems
[Memoist](https://github.com/matthewrudy/memoist)

[Decent Exposure](https://github.com/hashrocket/decent_exposure)
