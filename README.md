# SmartPiggy

**SmartPiggy** is a simple yet functional smart contract developed in Solidity that simulates a personal digital piggy bank. It allows users to make deposits, withdraw funds, view their balance, and apply "interest" by multiplying the accumulated value — all stored on the blockchain.

**Features:**

✅ **Secure deposits of virtual funds.**

✅ **Controlled withdrawals, validating sufficient balance.**

✅ **View current balance without modifying state.**

✅**Multiply balance to simulate interest or rewards.**

✅ **Events emitted to track every action.**

✅ **Use of modifiers to control logical conditions before running certain functions.**


 


⚙️ **Technologies Used**

 **Solidity: version 0.8.26**

 **Remix IDE: for development, testing, and deployment**



  

🚀 **Contract Usage:**




**1.📥 Deposit funds**

📌 **Example**:

Adds the specified amount to the current contract balance.

```solidity
deposit(100);
```

2. **📤 **Withdraw funds**

Subtract the amount from the balance, if it is less than or equal to the total available.

```solidity
withdraw(uint256 balance);
```


📌 **Example**:

 Process Successfully, if there is at least 50 in balance

```solidity
withdraw(50); 
```

3. **📊 Check current balance**

Returns the current balance without changing the contract status.

```solidity
viewBalance() public view returns (uint256);
```



📌 **Example**:

```solidity
viewBalance(); // -> 150
```

4. **🧮 Multiply balance (simulate interest)**

Multiply the current balance by the specified factor. It must be greater than or equal to 1.

```solitidy
multiplyBalance(uint256 factor)
```

📌 **Example**:

```solidity
multiplyBalance(2); // It will double the balance
```

**📑 Events**

    NewDeposit(uint256 balance, uint256 newBalance)

    NewWithdrawal(uint256 balance, uint256 balance)

    InterestApplied(uint256 factor, uint256 newBalance)

**🔐 Modifiers**

`validFactor(uint256 factor_)` Avoid multiplications with factors less than 1:

```solidity
require(factor_ >= 1, "The factor must be at least 1");
```
