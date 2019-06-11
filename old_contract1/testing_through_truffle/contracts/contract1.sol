pragma solidity ^0.5.8;
// for truffle the solidity version has to be set to 0.5.8

contract Inbox {
    string public message;
    
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
    
    function getMessage() public view returns (string memory)  {
        return message;
    }
}