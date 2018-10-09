
:command ClassHpp :let class = expand('%:t:r') |
				\:call append(line('$'), "#ifndef " . toupper(class) . "_HPP") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "# define " . toupper(class) . "_HPP") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "# include <iostream>") |
				\ :call append(line('$'), "# include <string>") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "class					" . class) |
				\ :call append(line('$'), "{") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "public:") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "	" . class . "();") |
				\ :call append(line('$'), "	" . class . "(" . class . " const & copy);") |
				\ :call append(line('$'), "	~" . class . "();") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "	" . class . " &			operator=(" . class . " const & copy);") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "private:") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "};") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "std::ostream &			operator<<(std::ostream & os, " . class . " const & inst);") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "#endif")

:command ClassCpp :let class = expand('%:t:r') |
				\ :call append(line('$'), "#include \"" . class . ".hpp\"") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), class . "::" . class . "() { }") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), class . "::" . class . "(" . class . " const & copy)") |
				\ :call append(line('$'), "{") |
				\ :call append(line('$'), "	*this = copy;") |
				\ :call append(line('$'), "}") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), class . "::~" . class . "() { }") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), class . " &						" . class . "::operator=(" . class . " const & copy)") |
				\ :call append(line('$'), "{") |
				\ :call append(line('$'), "	") |
				\ :call append(line('$'), "	return (*this);") |
				\ :call append(line('$'), "}") |
				\ :call append(line('$'), "") |
				\ :call append(line('$'), "std::ostream &				operator<<(std::ostream & os, " . class . " const & inst)") |
				\ :call append(line('$'), "{") |
				\ :call append(line('$'), "	") |
				\ :call append(line('$'), "	return (os);") |
				\ :call append(line('$'), "}") |
				\ :call append(line('$'), "") |
