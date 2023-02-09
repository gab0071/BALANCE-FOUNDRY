// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Balance.sol";

contract BalanceTest is Test {
    // calling our smart contract Balance.sol
    Balance public balanceContract;
    // Variable to storage the actual smart contract balance
    uint16 newBalance;
    function setUp() public {
        // init the contract
        balanceContract = new Balance();
    }

    function testCheckBalance() public {
        // Balance.sol  line 5 (storage variable)
        // uint16 public  BALANCE = 4;
        newBalance = balanceContract.BALANCE();
        assertEq(newBalance, 4);
    }

    function testIncrementAndDecrement() public {
        // test the increment function twice
        balanceContract.increment();
        balanceContract.increment();
        
        // check the balance storage to access the change
        newBalance = balanceContract.BALANCE();
        assertEq(newBalance, 6);

        // test decrement function just once 
        balanceContract.decrement();
        newBalance = balanceContract.BALANCE();
        assertEq(newBalance, 5);
    }
}
