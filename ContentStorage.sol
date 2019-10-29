pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;
contract Test3 {
    string[] hashCode;
    string[] title;
    string[] description;
    address[] account;
    // constructor() public {
    //     // usrStorage[usrStorage.length-1].hashCode = _hashCode;
    //     // usrStorage[usrStorage.length-1].title = _title;
    //     // usrStorage[usrStorage.length-1].description = _description;
    //     // usrStorage[usrStorage.length-1].account = _usrAddress;
    // }
     function addContent(string memory _hashCode, string memory _title, string memory _description, address _usrAddress) public{
        hashCode.push(_hashCode);
        title.push(_title);
        description.push(_description);
        account.push(_usrAddress);
    }
    function inspect() public view returns (uint) {
        return hashCode.length;
    }
    function get() public view returns (string[] memory hashCode, string[] memory title, string[] memory description, address[] memory account)
    {}
}