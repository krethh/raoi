contract ReentrancyVulnerable {
	mapping (address => uint) public balances;


	function withdraw() public {
		(bool result, ) = msg.sender.call.value(balances[msg.sender])("");
		if (!result) {
			revert();
		}
	

		balances[msg.sender] = 0;
	}


}
