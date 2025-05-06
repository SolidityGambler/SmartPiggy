// License
// SPDX-License-Identifier: LGPL-3.0-only

// Solidity Version
pragma solidity 0.8.26;

// Contract
contract SmartPiggy {

// Variables
uint256 balance = 0;

// Events
event NewDeposit(uint256 amount, uint256 newBalance);
event NewWithdrawal(uint256 amount, uint256 balance);
event InterestApplied(uint256 factor, uint256 newBalance);

// Functions

function deposit(uint256 amount_) public {
    balance += amount_;
    emit NewDeposit(amount_, balance); 
}

function withdraw(uint256 amount_) public {
    require(amount_ <= balance, "Insufficient balance");
    balance -= amount_;
    emit NewWithdrawal(amount_, balance);
}

function viewBalance() public view returns (uint256) {
    return balance;
}

function multiplyBalance(uint256 factor_) public validFactor(factor_) {
    balance *= factor_;
    emit InterestApplied(factor_, balance);
}

// Modifier
modifier validFactor(uint256 factor_) {
    require(factor_ >= 1, "The factor must be at least 1");
    _;
}

}
