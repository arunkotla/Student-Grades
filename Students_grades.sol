// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <=0.9.0;

// Using a mapping to store student grades
contract StudentGrades {
 mapping(address => uint) public studentGrades;

function addGrade(uint grade) public {
    studentGrades[msg.sender] = grade;
}

function getGrade(address studentAddress) public view returns (uint) {
    return studentGrades[studentAddress];
}
}
