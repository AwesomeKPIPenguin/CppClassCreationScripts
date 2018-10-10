# CppClassCreationScripts

These couple scripts will provide you with a handy shortcut for creating standart C++ class (.cpp and .hpp files).

## Instalation and Usage

First script, located in **.vimrc**, obviously, is for vim editor.
Just copy it's content to your .vimrc (vim configurational file) and you will get **:ClassCpp** and **:ClassHpp** commands
in your vim, which will fill your file with .cpp or .hpp file basic content respectively.

Second one is a shell script, in **.zshrc**. Same to vim script, you should copy it's content, but not exactly into .zshrc file - 
configuration file depends on your shell. It will provide you with **cppclass** command.

The usage is next:

```
name% cppclass TestClass
name%
name% ls
TestClass.cpp TestClass.hpp
name%
name% cat TestClass.hpp

#ifndef TESTCLASS_HPP

# define TESTCLASS_HPP

# include <iostream>
# include <string>

class					TestClass
{

public:

	TestClass();
	TestClass(TestClass const & copy);
	~TestClass();

	TestClass &			operator=(TestClass const & copy);

private:

};

std::ostream &			operator<<(std::ostream & os, TestClass const & inst);

#endif
name%
name% cat TestClass.cpp

#include "TestClass.hpp"

TestClass::TestClass() { }

TestClass::TestClass(TestClass const & copy)
{
	*this = copy;
}

TestClass::~TestClass() { }



TestClass &						TestClass::operator=(TestClass const & copy)
{

	return (*this);
}

std::ostream &				operator<<(std::ostream & os, TestClass const & inst)
{

	return (os);
}
```
