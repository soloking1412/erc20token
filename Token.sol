// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Token name is defined 
    string public name = "MyToken";
    // Token symbol is defined below
    string public symbol = "MTK";
    // Token supply is mentioned below
    uint256 public totalSupply = 1000000;

    mapping(address => uint256) public balances;
    // creating a function to mind the tokens
    function mint(address recipient, uint256 amount) public {
        require(amount <= totalSupply);
        totalSupply += amount;
        balances[recipient] += amount;
    }
    // create a function to burn tokens
    function burn(address sender, uint256 amount) public {
        require(amount <= balances[sender]);
        balances[sender] -= amount;
        totalSupply -= amount;
    }

}
