---
title: TDD
layout: layout
---

# TDD All the Languages!

When I want to play around with a new language I start by trying to make a Piglatin translator and I try to build it using Test Driven Development.

Regardless of the language, the journey is pretty much the same - I need to know:

- how to install the language
- what the project structure should be
- what build tool to use
- how to automatically manage dependencies
- what testing framework to use
- writing tests to drive out the functionality
- what to put it `.gitignore`
- how to get it working in a Continuous Integration server
- how to deploy my library so others can use it
- etc.

This project is an attempt to document that process for as many languages as possible.

It assumes you are on a Mac.

## Pig Latin Rules

Here are the rules for translating words from English to Pig Latin:

- For words which begin with vowel sounds or silent letter, one just adds "yay" to the end. 
- For words that begin with consonant sounds, all letters before the initial vowel are placed at the end of the word sequence. Then, "ay" (some people just add "a") is added.

## Tests

Here are the tests we will use to help us build out the Pig Latin translator:

- Words Starting with Vowels
  - The word `apple` should translate to `appleyay`
  - The word `orange` should translate to `orangeyay`
- Words Starting with Single Consonant
  - The word `computer` should translate to `omputercay`
  - The word `coding` should translate to `odingcay`
- Words Starting with Multilple Consonants
  - The word `programming` should translate to `ogramingpray`
  - The word `string` should translate to `ingstray`
- Maintaining Capilatizion
  - The word `Apple` should translate to `Appleyay`
  - The word `Computer` should translate to `Omputercay`
  - The word `Programming` should translate to `Ogramingpray`
  - The word `String` should translate to `Ingstray`

## How would you like to proceed?

- [Java](/language/java)
- [Node](/language/node)
- [Ruby](/language/ruby)

