@@ -0,0 +1,47 @@
// SPDX-License-Identifier: MIT License

pragma solidity >=0.7.0 <0.9.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract srch is ERC20 {


    constructor () ERC20('MetaSearch', 'SRCH') {
        _mint(msg.sender, 1000000000 * (10 ** uint256(decimals())));
    }
    function mint() public returns (bool) {
        _mint (msg.sender, 100000000000000000000000000);
        return true;
    }

}

//very simple token contract for testing purposes
