pragma solidity ^0.5.1;
contract Hello {
    
    struct usr {
        uint state;
        string usrPasswd;
        string date;
    }
    
    mapping (address => usr) usrStorage;
    address[] public usrStorages;
    
    string target = "https://gateway.ipfs.io/ipfs/QmUopf5TgUk9bhPSRdRtBrSS7vhhgNxWjh5mM6wHT17rev";
    // string comp = "nam";
    
    constructor() public {
        address add = msg.sender;
        usrStorage[add].state = 1;
        usrStorage[add].usrPasswd = "_passwd";
        usrStorage[add].date = "_daytime";
        usrStorages.push(add)-1;
    }
    
    // function setMessage(string memory mes) public {
    //     message = mes;
    // }
 
    // function getMessage() public returns(string memory) {
    //     // if ( stringsEqual(message, comp)){
    //     if(keccak256(abi.encodePacked((message))) == keccak256(abi.encodePacked((comp))) ) {
    //         return target;
    //     }
    //     else {
    //          return message;
    //     }
    // }
    
    // function getMess() public returns (string memory) {
    //     return target;
    // }
    
    // ----------------------------------------------------------
    
    function confirm(address _addUsr, string memory _passwd, string memory _daytime) public returns(string memory){
        uint count = 0;
        while (count < uint(usrStorages.length)) {
            // if(keccak256(abi.encodePacked((usrStorage[count].state))) == keccak256(abi.encodePacked((msg.sender))) ) {
            if(usrStorage[_addUsr].state == 1) {
                 return target;
            }
            else if ((count + 1) == uint(usrStorages.length)) {
                addUsr(_addUsr, _passwd, _daytime);
                return target;
            }
            else {
                count ++;
                continue;
            }
            
        }
    }
    
    function addUsr(address _addUsr ,string memory _passwd, string memory _daytime) public{
        usrStorage[_addUsr].state = 1;
        usrStorage[_addUsr].usrPasswd = _passwd;
        usrStorage[_addUsr].date = _daytime;
        usrStorages.push(_addUsr)-1;
    }
    
    function countInstructors() view public returns (uint) {
        return usrStorages.length;
    }
}