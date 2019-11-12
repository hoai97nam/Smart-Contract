pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;
contract SimpleStorage1 {
    string[] storedData;
    string[] storedData1;
    address[] storedData2;

    // send ether to contract to in deploy step
    constructor() public payable{
    }
    function set(string memory x, string memory y, address z) public {
        storedData.push(x);
        storedData1.push(y);
        storedData2.push(z);
    }

    function get() public view returns (string[] memory, string[] memory, address[] memory) {
        return (storedData, storedData1, storedData2);
    }
    function length() public view returns (uint)
    {
        return storedData.length;
    }
    mapping(address => uint) public count;
    function upVote(address x) public 
    {
        count[x] ++;
    }
    function grant(address payable x) public
    {
        x.transfer(1 ether);
    }
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}