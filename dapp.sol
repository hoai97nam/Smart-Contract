pragma solidity ^0.5.0;
contract dapp {
    struct usr {
        uint state;
        string usrPasswd;
        string date;
    }
    mapping (address => usr) usrStorage;
    address[] public usrStorages;
    string target = "https://www.youtube.com/watch?v=ZAYZmIfHEiU";
    string target2 = "";
    constructor() public {
        address add = msg.sender;
        usrStorage[add].state = 1;
        usrStorage[add].usrPasswd = "_passwd";
        usrStorage[add].date = "_daytime";
        usrStorages.push(add)-1;
    }
    // process funcs
    function confirm(address _addUsr, string memory _passwd, string memory _daytime) public view returns(string memory){
        uint count = 0;
        while (count < uint(usrStorages.length)) {
            if(usrStorage[_addUsr].state == 1) {
                 return target;
            }
            else if ((count + 1) == uint(usrStorages.length)) {
                return target2;
            }
            else {
                count ++;
                continue;
        }
    }
}
    function addUsr(address _addUsr,string memory _passwd, string memory _daytime) public {
        usrStorage[_addUsr].state = 1;
        usrStorage[_addUsr].usrPasswd = _passwd;
        usrStorage[_addUsr].date = _daytime;
        usrStorages.push(_addUsr)-1;
    }
    function countInstructors() public view returns (uint) {
        return usrStorages.length;
    }
    // require(not init-account) send eth to init account
    // event Sent(address from, address to, uint amount );

    //  function send(address payable _sender, address _receiver, uint _amount) public payable{
    //     _sender.transfer(msg.value);
    //     emit Sent(_sender, _receiver, msg.value);
    //  }
}