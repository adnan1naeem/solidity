// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.4.18;
contract Tokenmart{
     struct NftInfo{
     string totalItems;
     string url;
     string nftName;
     }
    mapping (uint => NftInfo) AllNfts;
     function setNftInfo (uint id,string name, string items, string link) public {
         AllNfts[id].totalItems = items;
         AllNfts[id].url = link;
         AllNfts[id].nftName = name;
         
     }
     function getNftInfo (uint id) public view returns (string, string, string){
         return (AllNfts[id].totalItems, AllNfts[id].url, AllNfts[id].nftName);
     }

}