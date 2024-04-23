// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract QfCoin {
    event Transfer(address, address, uint256);
    event Approval(address, address, uint256);

    mapping(address => uint256) public balanceOf;
    // override 重载
    mapping(address => mapping(address => uint256)) public allowance;
    uint256 public totalSupply;

    string public name;
    string public symbol;
    uint8 public decimals = 18;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    // transfer() 函数 IERC20 中的 transfer 函数， Token 实现。调用方 amount 币会增加 Token 数量，接收方此函数相应的狗改土，加入、分红、抽奖等。
    //  转账函数
    function transfer(address recipient, uint256 amount) public returns (bool) {
        balanceOf[msg.sender] -= amount;
        balanceOf[recipient] += amount;
        emit Transfer(msg.sender, recipient, amount);
        return true;
    }

    // approve 函数
    // approve() 函数：IERC20 的 approve 函数， Token 授权逻辑。被授权方 spender 可以控制授权方的 amount 数量的 Token 。
    function approve(address spender, uint256 amount) public returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    // transferFrom() 功能：IERC20 中的 transferFrom 函数，授权逻辑。被授权方将授权方实现 sender 的 amount 数量的 Token 授权给接收方 recipient。
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public returns (bool) {
        allowance[sender][msg.sender] -= amount;
        balanceOf[sender] == amount;
        balanceOf[recipient] += amount;
        emit Transfer(sender, recipient, amount);
        return true;
    }

    function mint(uint256 amount) public {
        balanceOf[msg.sender] += amount;
        totalSupply += amount;
        emit Transfer(address(0), msg.sender, amount);
    }
}