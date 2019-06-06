pragma solidity ^0.5.9;

contract Inbox {
    string public message;
    
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
    
    function getMessage() public view returns (string memory)  {
        return message;
    }
}