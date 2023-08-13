// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract CompanyLeakExchange {

    string private secretDataFromCompany;
    address private beneficiary;

    constructor(string memory _secretDataFromCompany, address _beneficiary) {
        secretDataFromCompany = _secretDataFromCompany;
        beneficiary = _beneficiary;
    }

    function retrieve() public view returns (string memory) {
        require(tx.origin == beneficiary, "Not beneficiary");
        return secretDataFromCompany;
    }

}
