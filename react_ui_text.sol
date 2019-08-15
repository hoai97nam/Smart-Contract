pragma solidity ^0.5.1;
contract Hello {
    string message;
    string target = "https://gateway.ipfs.io/ipfs/QmUopf5TgUk9bhPSRdRtBrSS7vhhgNxWjh5mM6wHT17rev";
    string comp = "nam";
    
    constructor(string memory mes) public {
        message = mes;
    }
    
    function stringsEqual(string storage _a, string memory _b) internal view returns (bool) {
        bytes storage a = bytes(_a);
        bytes memory b = bytes(_b);
        if (a.length != b.length)
        return false;
        // @todo unroll this loop
        for (uint i = 0; i < a.length; i ++)
        if (a[i] != b[i])
        return false;
        return true;
    }
    function setMessage(string memory mes) public {
        message = mes;
    }
 
    function getMessage() public returns(string memory) {
        if ( stringsEqual(message, comp)){
            return target;
        }
        else {
             return message;
        }
    }
}