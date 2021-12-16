// SPDX-License-Identifier: MIT License

pragma solidity >=0.7.0 <0.9.0;

import '//insert token contract here';



contract Faucet {


    srch public token;
    bool public activeFaucet;
    mapping(address => bool) public hasClaimed;

    function activateFaucet() public {
    activeFaucet = true;
  }


  function deactivateFaucet() public {
    activeFaucet = false;
  }

    function drip(address _tokenAddr) public {
        token = srch(_tokenAddr);
    }

    function getAirdrop() public {
        require(activeFaucet = true);
        require(hasClaimed[msg.sender] == false);
        token.transfer(msg.sender, 10000000000000000000000);
        hasClaimed[msg.sender] == true;
    }
}
