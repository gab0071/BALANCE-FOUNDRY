// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Balance {
    uint16 public  BALANCE = 4;

    function increment() external {
        BALANCE = BALANCE + 1;
    }

    function decrement() external {
        BALANCE = BALANCE - 1;
    }
}
