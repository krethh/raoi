contract Gamble {
    uint privSeed;
    uint pot;

    function bet() public payable {
        pot += msg.value;
        
        //generate bad pseudorand
        privSeed = (privSeed*3 + 1) / 2;
        privSeed = privSeed % 10**9;
        uint rand = (privSeed + block.timestamp) % 37;

        if (rand > 100) {
            msg.sender.transfer(pot);
        }
    }
}

