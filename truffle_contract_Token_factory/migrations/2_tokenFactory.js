const tf = artifacts.require("./Token_Factory.sol");

module.exports = function (deployer, network, accounts) {
    deployer.deploy(tf, 5000, { from: accounts[0] });
};
