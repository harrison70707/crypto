//SPDX-License-Identifier: MIT
 
pragma solidity 0.8.14;

contract SendWithdrawMoney {
    uint public balancereceived;
    function deposit() public payable{
        balancereceived = balancereceived + msg.value;
    }
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
    function withdraw() public payable{
        payable(msg.sender).transfer(address(this).balance);
    }
}