// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply = 1000000;

    mapping(address => uint256) public balances;

    function mint(address recipient, uint256 amount) public {
        require(amount <= totalSupply);
        totalSupply += amount;
        balances[recipient] += amount;
    }

    function burn(address sender, uint256 amount) public {
        require(amount <= balances[sender]);
        balances[sender] -= amount;
        totalSupply -= amount;
    }

}
