contract Overflow {
	uint public zero = 0;

	function overflows() public {
		zero -= 1;
	}
}
