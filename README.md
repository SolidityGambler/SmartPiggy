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

Suma el monto especificado al saldo actual del contrato.

```solidity
depositar(100);
```

2. **📤 **Withdraw funds**

Resta el monto del saldo, si es menor o igual al total disponible.

```solidity
retirar(uint256 monto);
```


📌 **Example**:

 Procesar Exitosamente, si hay al menos 50 en saldo

```solidity
retirar(50); 
```

3. **📊 Check current balance**
Devuelve el saldo actual sin modificar el estado del contrato.

```solidity
verSaldo() public view returns (uint256);
```



📌 **Example**:

```solidity
verSaldo(); // -> 150
```

4. **🧮 Multiply balance (simulate interest)**

Multiplica el saldo actual por el factor especificado. Debe ser mayor o igual a 1

```solitidy
multiplicarSaldo(uint256 factor)
```

📌 **Example**:

```solidity
multiplicarSaldo(2); // Duplicará el saldo
```

**📑 Events**

    DepositoNuevo(uint256 monto, uint256 nuevoSaldo)

    RetiroNuevo(uint256 monto, uint256 saldo)

    InteresAplicado(uint256 factor, uint256 nuevoSaldo)

**🔐 Modifiers**

`soloFactorValido(uint256 factor_)` Evita multiplicaciones con factores menores a 1:

```solidity
require(factor_ >= 1, "El factor debe ser al menos 1");
```
