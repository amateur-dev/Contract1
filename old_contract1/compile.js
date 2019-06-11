const path = require('path');
const fs = require('fs');
const solc = require('solc');

const contract1path = path.resolve(__dirname, "contracts", "contract1.sol");
const source = fs.readFileSync(contract1path, 'utf8');

let jsonContractSource = JSON.stringify({
    language: 'Solidity',
    sources: {
        'Task': {
            content: source,
        },
    },
    settings: {
        outputSelection: {
            '*': {
                '*': ['abi', "evm.bytecode"],
                // here point out the output of the compiled result
            },
        },
    },
});

var json = JSON.parse(solc.compile(jsonContractSource));
console.log(json.contracts["Task"]["Inbox"])
// console.log(solc.compile(jsonContractSource)['contracts'])
module.exports = json.contracts["Task"]["Inbox"];

