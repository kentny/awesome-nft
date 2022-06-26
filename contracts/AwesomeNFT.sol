pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";


contract AwesomeNFT is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;
    
    constructor() ERC721 ("awesome NFT", "AWESOME") {
        console.log("Hello, Awesome NFT!!");
    }

    function createNFT() public {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        
        _safeMint(msg.sender, tokenId);

        console.log("TokenId (%s) has been minted by %s.", tokenId, msg.sender);
    }
}