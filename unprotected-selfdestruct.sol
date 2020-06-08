contract Greeter {
    /* Declare variable admin which will store an address */
    address payable public admin;

    /* this function is executed at initialization and sets the owner of the contract */
    function greeter() public {
        admin = msg.sender;
    }

    /* main function */
    function greet(bytes32 input) public returns (bytes32) {
        if (input == "") {  return "Hello, World"; }

        /* Try it yourself: the joker
        if (input=="Who's there?") {
            // insert a joke here
        } else if (msg.value > 1000) {
            // a trillionth of an ether. It's a cheap joke.
            return "Knock knock!";
        }
        */

        return input;
    }


    /* Function to recover the funds on the contract */
    function kill() public {
        if (msg.sender == admin) {
            selfdestruct(admin);
        }
    }
}
