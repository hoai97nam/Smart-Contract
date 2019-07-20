pragma solidity ^0.5.1;

contract Election {
    string storedData = "https://gateway.ipfs.io/ipfs/QmXKXp8cWWh1ghbHDHiTFTP5R9g9zWcnh3Lw6EHRTmPuY4";
    // struct s1{
    //     string c;
    //     uint x;
    // }
    function get() public view returns (string memory) {
        return storedData;
    }
}