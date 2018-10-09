
function cppclass() {

	vim -c ":ClassCpp" -c ":wq" $1.cpp
	vim -c ":ClassHpp" -c ":wq" $1.hpp
}
