---
title: TDD
layout: layout
---

# TDD All the Languages!

When I want to play around with a new language I start by trying to make a Pig Latin translator and I try to build it using Test Driven Development.

Regardless of the language, the journey is pretty much the same:

- install the language
- use a standard project structure
- use a build tool
- use a dependency management tool
- use a testing framework
- write tests to drive out the functionality
- create a `.gitignore`
- get it running on a continuous integration server
- distribute the library so that others can use it

This project is an attempt to document that process for as many languages as possible.

It assumes you are on a Mac.

## Pig Latin Rules

Here are the rules for translating words from English to Pig Latin:

- For words which begin with vowel sounds or silent letter, one just adds "way" to the end. 
- For words that begin with consonant sounds, all letters before the initial vowel are placed at the end of the word sequence. Then, "ay" (some people just add "a") is added.

## Tests

Here are the tests we will use to help us build out the Pig Latin translator:

- Words Starting with Vowels
  - The word `apple` should translate to `appleway`
  - The word `orange` should translate to `orangeway`
- Words Starting with Single Consonant
  - The word `computer` should translate to `omputercay`
  - The word `coding` should translate to `odingcay`
- Words Starting with Multilple Consonants
  - The word `programming` should translate to `ogramingpray`
  - The word `string` should translate to `ingstray`
- Maintaining Capilatizion
  - The word `Apple` should translate to `Appleway`
  - The word `Computer` should translate to `Omputercay`
  - The word `Programming` should translate to `Ogramingpray`
  - The word `String` should translate to `Ingstray`

## How would you like to proceed?

- [Java](/language/java)
- [Node](/language/node)
- [Ruby](/language/ruby)

