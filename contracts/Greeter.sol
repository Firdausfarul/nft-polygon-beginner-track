//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract UInft is ERC721URIStorage {
    constructor() ERC721("UI", "UInft") {}
    uint private current_id = 0;

    function mint() external{
        ++current_id;
        _mint(msg.sender, current_id);
        _setTokenURI(current_id, "ipfs://QmRhfAjDXD7SpcV9oeLqMcfaYoRo8zDV2uDCbCgHMhsDuX");
    }

}