pragma solidity ^0.5.0;

contract Token_Factory {
    mapping(address => uint256) balances;
    uint256 totalSupply;

    constructor (uint256 _initialAmount) public {
        balances[msg.sender] = _initialAmount;
        totalSupply = _initialAmount;
        }

    function transfer(address _to, uint256 amount) public returns (bool) {
        require(balances[msg.sender] >= amount, "not enough funds");
        balances[msg.sender] -= amount;
        balances[_to] += amount;
        return true;
        }
    
    function get_balance(address _queryAccount) public view returns (uint256) {
        return (balances[_queryAccount]);
    }

}