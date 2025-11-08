#define assume(x) if(!(x)) return -1;
/**
 * @brief Digit Data.
 * This array here is just for reference to show what the actual
 * digit_data image array is.
 *
 * The actual digit_data[] images array is a C++ std::vector<> type
 * of elements type torch::data::Example<> template type.
 *
 * digit_data[i] --> Image (i / 10)
 */
int digits_data[100] = {
	9,  5,  8,  0,  3,  4,  7,  6,  1,  2,  // All handwritten digits corresponding to 0.
	12, 15, 18, 19, 16, 10, 11, 14, 17, 13,	// All handwritten digits corresponding to 1.
	23, 20, 26, 21, 22, 29, 27, 28, 24, 25, // All handwritten digits corresponding to 2.
	36, 34, 32, 30, 33, 35, 39, 37, 31, 38, // All handwritten digits corresponding to 3
	41, 48, 45, 43, 46, 42, 44, 47, 49, 40, // All handwritten digits corresponding to 4.
	59, 55, 54, 50, 57, 53, 58, 51, 57, 56, // All handwritten digits corresponding to 5.
	69, 60, 64, 63, 68, 65, 61, 67, 62, 66, // All handwritten digits corresponding to 6.
	75, 70, 79, 73, 71, 74, 72, 76, 78, 77, // All handwritten digits corresponding to 7.
	85, 84, 87, 89, 80, 81, 86, 82, 88, 83, // All handwritten digits corresponding to 8.
	96, 90, 95, 99, 98, 93, 94, 92, 99, 91  // All handwritten digits corresponding to 9.
};

// Closed-box function predict takes a image data representing a digit between 0 and 9 
// Returns a value between 0 and 9, if the image prdicted by the neural network is correct.
// else it returns a zero.
int predict_cb(int index) {
	if ((index < 0) || (index >= 100))
		return 0;
    return (digits_data[index] / 10);
}