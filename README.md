BroDCPU
=======
[![Build Status](https://travis-ci.org/fniephaus/BroDCPU.svg?branch=master)](https://travis-ci.org/fniephaus/BroDCPU)

DCPU-16 emulator written in Squeak Smalltalk

![BroDCPU Screenshot](https://raw.github.com/fniephaus/BroDCPU/master/screenshot.gif)

## How to install
1. Make sure you have [metacello-work](https://github.com/dalehenrich/metacello-work) installed.
2. Load the project with:
```smalltalk
Metacello new
  baseline: 'BroDCPU';
  repository: 'github://fniephaus/BroDCPU:master/packages';
  onConflict: [:ex | ex allow];
  load
```
3. Now you can just run the following code in your workspace:
```smalltalk
BroDCPU new openInHand
```

## Features

- Compatible to [DCPU-16 Specification v1.7](http://dcpu.com/dcpu-16/)
- Parser compatible to many ROMs
- +90% code coverage


## Contributors

[Fabio Niephaus](https://github.com/fniephaus), [Philipp Otto](https://github.com/philippotto), [Max Reimann](https://github.com/MaxReimann) and [Daniel Werner](https://github.com/daniel-wer)
