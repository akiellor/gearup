[ABANDONED] GearUp!
===============================================

**If your thinking of using something like this gem. Look at [Middleman](http://middlemanapp.com)**

GearUp is a simple Gem that will start a thin server running sprockets (rails asset-pipeline).

What does this means for you?
-----------------------------

1. You have "some-directory" with some assets:
```
$ ls <some-directory>
javascripts/application.js.coffee
stylesheets/application.css.less
```

2. Switch to that directory:
```
$ cd <some-directory>
```

3. Gem install 'gearup':
```
$ gem install gearup
```

4. GearUp!
```
$ gearup
```

5. Open "http://localhost:3000/javascripts/application.js" in your favourite browser and note the compilation

NOTES
=====
Played with on JRuby 1.6.7.2, 1.9.2, 1.9.3.

Feedback
========
Let me know, if your using it and/or if you have any trouble.
