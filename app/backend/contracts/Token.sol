// SPDX-License-Identifier: MIT
pragma solidity >=0.7.1 <0.9.0;

import "contracts/openzeppelin-contracts-4.9.2/token/ERC20/ERC20.sol";
import "contracts/openzeppelin-contracts-4.9.2/access/Ownable.sol";

contract BottleDrops is ERC20("BottleDrops", "DROP"), Ownable {
    function mint(address receiver, uint amount) public onlyOwner {
        _mint(receiver, amount * 10 ** 18);
    }
}
