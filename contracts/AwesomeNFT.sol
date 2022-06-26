pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "hardhat/console.sol";


contract AwesomeNFT is ERC721 {
    constructor() ERC721 ("awesome NFT", "AWESOME") {
        console.log("Hello, Awesome NFT!!");
    }

    function createNFT() public {
        _safeMint(msg.sender, 0);

        console.log("TokenId (%s) has been minted by %s.", 0, msg.sender);
    }
}