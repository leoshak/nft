pragma solidity ^0.8.0;

//Import ERC1155 token contract from Openzeppelin

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract NFTContract is ERC1155 {

    uint256 public constant ARTWORK = 0;
    uint256 public constant PHOTO = 1;

    constructor() ERC1155("") {
        _mint(msg.sender, ARTWORK, 1, "")
        _mint(msg.sender, PHOTO, 2, "")
    }

    function mint(address account, uint256 id, uint256 amount) public onlyOwner {
        _mint(account, id, amount);
    }
}
