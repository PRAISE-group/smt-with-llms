
#include <cassert>
#include <iostream>
#include <sstream>
#include <cinttypes>


uint32_t _mul(uint32_t a, uint32_t b) {
  return a * b;
}


int main(int argc, const char *argv[])
{

	if(argc!=3 || !(isdigit(*argv[1]) && isdigit(*argv[2])))
	{
		std::cout<<"This is an input-output oracle for the function\n"
		<< "(synth-fun _lt ((x Int)(y Int))(z Int)).";
		return 1;
	}

	uint32_t x;
	uint32_t y;

	// arg 1 is x
	x = atoi(argv[1]);	
	y = atoi(argv[2]);

	// std::cout << "x : " << (uint64_t) x << std::endl;
	// std::cout << "y : " << (uint64_t) y << std::endl;
	std::cout << "(_ bv" << _mul(x,y) << " 32)" << std::endl;

	return 0;

}
