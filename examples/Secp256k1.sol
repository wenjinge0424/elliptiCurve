pragma solidity ^0.5.0;

import "../contracts/EllipticCurve.sol";

contract Secp256k1 is EllipticCurve {

  uint256 constant GX = 0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798;
  uint256 constant GY = 0x483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8;
  uint256 constant PP = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F;
  uint256 constant AA = 0;
  uint256 constant BB = 7;

  function deriveKey(uint256 privKey) public pure returns(uint256 qx, uint256 qy) {
    (qx, qy) = ecMul(
      privKey,
      GX,
      GY,
      AA,
      PP
    );
  }
}