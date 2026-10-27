// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/simpleStorage.sol";

contract SimpleStorageTest is Test{
    SimpleStorage newSimpleStorage;

    function setUp() public {
        newSimpleStorage = new SimpleStorage();
    }

    function testStoresNumber() public{
        newSimpleStorage.store(42);
        assertEq(newSimpleStorage.retrieve(), 42);
    }
    

}