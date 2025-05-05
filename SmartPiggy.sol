// Licencia
// SPDX-License-Identifier: LGPL-3.0-only

// Versión Solidity

pragma solidity 0.8.26;

// Contrato

 contract SmartPiggy {

//variables
uint256 saldo = 0;

//eventos

event DepositoNuevo (uint256 monto, uint256 nuevoSaldo);

event RetiroNuevo (uint256 monto, uint256 saldo);

event InteresAplicado (uint256 factor, uint256 nuevoSaldo);

// functions

function depositar (uint256 monto_) public {
    saldo += monto_;

emit DepositoNuevo (monto_, saldo); 
}

function retirar (uint256 monto_) public {
    require(monto_ <= saldo, "No tenes suficiente saldo");
saldo -=monto_;

emit RetiroNuevo (monto_, saldo);


}


function verSaldo() public view returns (uint256) {
    return saldo;
}

function multiplicarSaldo (uint256 factor_) public {
saldo *= factor_;

   emit InteresAplicado(factor_, saldo);
    

 }   

modifier soloFactorValido(uint256 factor_) {

    require(factor_ >= 1, "El factor debe ser al menos 1");

_;
}

  }
