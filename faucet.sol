// SPDX-License-Identifier: MIT License

pragma solidity >=0.7.0 <0.9.0;

import ''; //insert token contract here



contract Faucet {


    srch public token;      //"srch" must be changed to reflect your token contract
    bool public activeFaucet;
    mapping(address => bool) public hasClaimed;         //map addresses to determine if it has been claimbed later in the code

    function activateFaucet() public {      //function to power on the fuacet
    activeFaucet = true;        //must remain true
  }


  function deactivateFaucet() public {          //function to power off the faucet
    activeFaucet = false;           //must remain false
  }

    function drip(address _tokenAddr) public {          //function to use the faucet
        token = srch(_tokenAddr);        //replace srch to reflect your token contract
    }

    function getAirdrop() public {      //function to receive airdrop
        require(activeFaucet = true);       //requires faucet to be active
        require(hasClaimed[msg.sender] == false);       // hasClaimed must be false. User's who have claimed will not be able to claim.
        token.transfer(msg.sender, 10000000000000000000000);        //initiate token transfer, change to desired amount.)
        hasClaimed[msg.sender] == true;         //hasClaimed = true is mapped for the address, they are no longer able to use the faucet.
    }
}
