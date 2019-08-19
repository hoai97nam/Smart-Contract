pragma solidity ^0.5.1;
contract Hello {
    string message;
    string target = "https://gateway.ipfs.io/ipfs/QmUopf5TgUk9bhPSRdRtBrSS7vhhgNxWjh5mM6wHT17rev";
    string comp = "nam";
    
    constructor(string memory mes) public {
        message = mes;
    }
    
    // function stringsEqual(string storage _a, string memory _b) internal view returns (bool) {
    //     bytes storage a = bytes(_a);
    //     bytes memory b = bytes(_b);
    //     if (a.length != b.length)
    //     return false;
    //     // @todo unroll this loop
    //     for (uint i = 0; i < a.length; i ++)
    //     if (a[i] != b[i])
    //     return false;
    //     return true;
    // }
    function setMessage(string memory mes) public {
        message = mes;
    }
 
    function getMessage() public returns(string memory) {
        // if ( stringsEqual(message, comp)){
        if(keccak256(abi.encodePacked((message))) == keccak256(abi.encodePacked((comp))) ) {
            return target;
        }
        else {
             return message;
        }
    }
    // ----------------------------------------------------------
    
    struct usr {
        uint state;
        string usrPasswd;
        string date;
    }
    
    mapping (address => usr) usrStorage;
    address[] public usrStorages;
    
    function confirm(string memory _ps, string memory _dt) public returns(string memory){
        uint count = 0;
        while (count < uint(usrStorages.length)) {
            // if(keccak256(abi.encodePacked((usrStorage[count].state))) == keccak256(abi.encodePacked((msg.sender))) ) {
            if(usrStorage[msg.sender].state == 1) {
                 return message;
            }
            else if ((count + 1) == uint(usrStorages.length)) {
                addUsr(msg.sender, _ps, _dt  );
                return message;
            }
            count ++;
        }
    }
    
    function addUsr(address _addUsr ,string memory _passwd, string memory _daytime) public {
        usrStorage[_addUsr].state = 1;
        usrStorage[_addUsr].usrPasswd = _passwd;
        usrStorage[_addUsr].date = _daytime;
        usrStorages.push(_addUsr);
    }
}