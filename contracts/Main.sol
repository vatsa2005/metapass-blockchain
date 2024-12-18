// SPDX-License-Identifier: MIT
pragma solidity ^0.8;


contract Main {

    struct Passport {
        address addrs;
        string firstName;
        string sex;
        string lastName;
        string placeOfBirth;
        string DOB;
        string passportNumber;
    }
    uint256 public num = 10;

    Passport[] public passports;

    function createPassport(string memory _fName, string memory _lName, string memory _pob, string memory _dob, string memory _passNo, address _addrs, string memory _sex) public {
        Passport memory newPassport = Passport({ firstName: _fName, lastName: _lName, placeOfBirth: _pob, DOB: _dob, passportNumber: _passNo, addrs: _addrs, sex: _sex });
        passports.push(newPassport);
    }
    function getPassport() public view returns(Passport[] memory) {
        return passports;
    }
    function getInt() public view returns (uint256) {
        return num;
    }

}
