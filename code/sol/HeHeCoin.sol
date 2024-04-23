pragma solidity ^0.8.9;

contract MyToken {
    /*
    {
        addressA: 90,
        addressB: 0,
        addressC: 20,
    }
    */

    event Transfer(address _from, address _to, uint256 _value);
    event Approval(address _owner, address _spender, uint256 _value);
    // 代币的名字与标识 数量
    uint256 _totalSupply;
    string _name;
    string _symbol;
    uint8 _decimals;
    // 创建地址与余额的映射
    mapping(address => uint256) _balanceOf;
    // 创建授权额度的结构
    mapping(address => mapping(address => uint256)) _allowance;

    /*
    address1 : {
        address11:1000w
        address22:200w
    } 
    address3:{
        address11:1000w
        address22:200w
    }
    */
    constructor() {
        _name = "HeHeCoin";
        _symbol = "HHC";
        _decimals = 18;
        _totalSupply = 100 * 10000 * 10**_decimals;
        _balanceOf[msg.sender] += _totalSupply;
    }

    // 获取一下代币的名字
    function name() public view returns (string memory) {
        return _name;
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    // 根据地址获取余额
    function balanceOf(address _owner) public view returns (uint256) {
        return _balanceOf[_owner];
    }

    // 转账
    function transfer(address _to, uint256 _value)
        public
        returns (bool success)
    {
        _balanceOf[msg.sender] -= _value;
        _balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    // token的逻辑授权 给被授权方一定的权限 可以直接转移授权方的同肯
    function approve(address _spender, uint256 _value)
        public
        returns (bool success)
    {
        //  调用这个方法的人
        _allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    // 查看额度
    function allowance(address _owner, address _spender)
        public
        view
        returns (uint256)
    {
        return _allowance[_owner][_spender];
    }

    //  被给与额度的账户主动的 划走代币
    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success) {
        // 额度减少
        _allowance[_from][_to] -= _value;
        // 被划走账户余额减少
        _balanceOf[_from] -= _value;
        // 划走账户的余额添加
        _balanceOf[_to] += _value;
        return true;
    }
}

/*
0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db
0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB

{
   0x5B38Da6a701c568545dCfcB03FcB875f56beddC4  : {
       0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2: 100w,
       0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db: 50w,
   }
   0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB : {
       0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2:666,
       0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db:777,
   }
}

0x5B38Da6a701c568545dCfcB03FcB875f56beddC4  100w 
授权   0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2  666
授权   0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db  777
*/
