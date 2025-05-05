# SmartPiggy

**SmartPiggy** es un contrato inteligente simple pero funcional desarrollado en Solidity, que simula una **alcancía digital personal**. Permite realizar depósitos, retiros, visualizar el saldo y aplicar "intereses" multiplicando el valor acumulado, todo almacenado en la blockchain.

**Características:**

 ✅ **Depósito seguro** de fondos virtuales.

 ✅ **Retiro controlado**, validando que haya saldo suficiente.

 ✅ **Visualización de saldo** actual sin alterar el estado.

 ✅ **Multiplicación de saldo** para simular intereses o recompensas.

 ✅ **Eventos emitidos** para seguimiento de cada acción.

 ✅ **Uso de modifiers** para controlar condiciones lógicas antes de ejecutar ciertas funciones.


 **⚙️ Tecnologías Utilizadas**

- **Solidity**: versión `0.8.26`
- **Remix IDE**: para desarrollo, pruebas y despliegue

**🚀 Uso del Contrato**

📌 **Ejemplo**:

Suma el monto especificado al saldo actual del contrato.

```solidity
depositar(100);
```

2. **📤 Retirar fondos**

Resta el monto del saldo, si es menor o igual al total disponible.

```solidity
retirar(uint256 monto);
```


📌 **Ejemplo**:

 Procesar Exitosamente, si hay al menos 50 en saldo

```solidity
retirar(50); 
```

3. **📊 Consultar el saldo**
Devuelve el saldo actual sin modificar el estado del contrato.

```solidity
verSaldo() public view returns (uint256);
```



📌 **Ejemplo**:

```solidity
verSaldo(); // -> 150
```

4. **🧮 Multiplicar saldo (simular interés)**

Multiplica el saldo actual por el factor especificado. Debe ser mayor o igual a 1

```solitidy
multiplicarSaldo(uint256 factor)
```

📌 **Ejemplo**:

```solidity
multiplicarSaldo(2); // Duplicará el saldo
```

**📑 Eventos**

    DepositoNuevo(uint256 monto, uint256 nuevoSaldo)

    RetiroNuevo(uint256 monto, uint256 saldo)

    InteresAplicado(uint256 factor, uint256 nuevoSaldo)

**🔐 Modificadores**

`soloFactorValido(uint256 factor_)` Evita multiplicaciones con factores menores a 1:

```solidity
require(factor_ >= 1, "El factor debe ser al menos 1");
```
