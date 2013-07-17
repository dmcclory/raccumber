## Purpose

This is an example project that uses Racc to parse [Gherkin files](http://www.lysator.liu.se/c/ANSI-C-grammar-y.html#statement), a nice simple language used by [Cucumber](http://cukes.info/), a behavior-driven developnent tool. Gherkin describes the features of a program as a collection of scenarios, which are in turn a collection of steps. In Cucumber, the steps are paired with step definitions - regular expressions paired with blocks of code. Cucumber parses the scenarios, and executes the blocks that correspond to each step. If all of the blocks return 'Ruby true' - ie, anything other than false or nil - then a scenario passes.

Raccumber also implements a toy Cucumber. Once the feature files are parsed and the Feature objects are created, Raccumber tries to match the steps to step definition blocks and it records whether each scenario succeeds, fails, or has an undefined step.

## Racc Resources
Most of the resources for learning Racc that are out there assume familiarity with [Yacc], the compiler compiler that Racc is based on. But if you aren't already familiar with Racc, and want to start writing a Grammar & Parser, it can be tough. A lot of threads point to the [ANSI C Yacc Grammar](http://www.lysator.liu.se/c/ANSI-C-grammar-y.html); which is a mighty thing, and I've used it for guidance here and there ... but introductory it is not.

There are a few good resources: 
  * [Tom Lee's Rapid Programming Language Prototypes with Ruby & Racc] (http://confreaks.com/videos/1319-rubyconf2012-rapid-programming-language-prototypes-with-ruby-racc) at RubyConf 2012
  * [Martin Fowler's blik post](http://martinfowler.com/bliki/HelloRacc.html)
  * [Jeff Nyman has some posts about it](http://testerstories.com/a-tester-learns-rex-and-racc-part-1/)

## Intro to Racc

Racc is a tool for converting grammar files (.racc) into ruby files which can parse text. Parsing has 2 phases:

#### 1. scanning - the program splits an input file into words that it recognizes.
* in C this is achieved with a tool called Lex
* there is a tool Rex, but you don't have to use it.
* the important thing is that you generate an array filled with 2 element arrays:
* the type of the token is the first element. it should be a symbol
* the text of the token is the second element. it should be a string

#### 2. Racc grammar
Racc uses a grammarfile to generates a class which can parse text according to the rules you've defined.

##### Rules section
* first you name the class the will generated. It knows about modules, so you can prepend ModuleName:: 
* then you define list of rules, take a quick look at [Backus-Naur Form](https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_Form)
* each rule can have a block of code associated with it which will get run when the conditions for the rule are satisfied.
* you can store the results for later
* honestly, this part is very complicated.

##### Inner section
There is also an inner secion, where code is inserted into your class.
 
* it is set off with ---- inner ----
* there are two methods of the Racc interface that you need to include here:
* do_parse, which kicks off the parsing
  * put this in a public function like Parser#parse(tokens)
* next_token, which just asks for the next token
  * this is sufficient: 
``` 
def next_token 
  @tokens.shift
end
```
* you can include other code in the inner section.
* if your input is already split into tokens, you can skip the scanner step, and just pass your array of tokens to parse

## Installing and using raccumber:

to install: 

```
$ gem build raccumber.gemspec
$ gem install raccumber-0.0.1.gemspec

or

$ bundle install
```

to run:

```
$ raccumber features
```

(I haven't actually connected it to Rspec or MiniTest, so you might have to play around with including some of their modules if you actually want to run Raccumber on some Cucumber features & step definitions)

to rebuild the Parser class:

```
$ rake
```

## Now you know a little bit about parsers.

You know about as much as I do! Go read those resources, watch that video.

### Future ideas

* Maybe try making an XML parser. 
* parser for Lisp, which is syntatically simple.
* whatever you feel like, gosh.
