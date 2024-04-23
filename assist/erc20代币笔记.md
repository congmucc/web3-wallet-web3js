

# 什么是ERC

ERC 全称是“Ethereum Request for Comment”，表示以太坊的意见征求稿，ERC 中包含技术和组织等注意事项及标准。这套标准其实不光由以太坊官方提出，还由一些以太坊爱好者提出。是以太坊生态系统中被广泛使用的关键标准。

##  代币(token)标准

- [ERC-20](https://ethereum.org/zh/developers/docs/standards/tokens/erc-20/) - 同质化（可互换）代币的标准接口，比如投票代币、质押代币或虚拟货币。
- [ERC-721](https://ethereum.org/zh/developers/docs/standards/tokens/erc-721/) - 非同质化代币的标准接口，比如艺术作品或歌曲的契约。
- [ERC-777](https://ethereum.org/zh/developers/docs/standards/tokens/erc-777/) - 关于 ERC-20 的代币标准改进。
- [ERC-1155](https://ethereum.org/zh/developers/docs/standards/tokens/erc-1155/) - 一个能包括同质化和非同质化资产的代币标准。

## ERC-20 代币

`千言万语汇成一句话：造钱`

> 什么叫做代币  代替货币 

代币可以在以太坊中表示任何东西：

- 在线平台中的信誉积分
- 游戏中一个角色的技能
- 彩票
- 金融资产类似于公司股份的资产
- 像美元一样的法定货币
- 一克黄金
- 以及更多

> ERC-20以太坊代币标准是创建与更广泛的以太坊网络兼容的可替换代币的蓝图。以太坊，或称Ethereum，是一种加密货币，允许创建各种应用，包括代币，与大多数传统应用不同，它不需要中心化服务机构就可以运作。
>
> 简单来说，**ERC-20**就是一套**基于以太坊网络的标准代币发行协议**。有了ERC-20，**开发者们得以高效、可靠、低成本地创造专属自己项目的代币；**我们甚至可以将ERC-20视为以太坊网络为早期区块链世界做出的最重要贡献，也是以太坊网络第一个真正意义上的杀手级应用。

如果我们把众多区块链项目的开发者，看作是在一个小区门口商铺里，经营不同业态的众多商户。这些商户根据自己的专长提供各自不同的商品和服务，也都希望发行自己店铺专属的消费储值卡。方便消费者光顾的同时，也能提升用户的体验和粘性

以太坊就像是运营这个小区底商的物业公司，它提供一整套标准化的储值卡发放协议和配套服务。借助这套叫做ERC-20的整体解决方案，每个商户（开发者）都可以傻瓜式地发行专属于自己店铺的消费储值卡，同时由于这种储值卡采用了统一的协议，可以非常方便地和其他商户的储值卡做无缝兑换。

于是借助ERC-20，用户可以通过持有其中一种储值卡（token）很方便地享受整个生态的各种服务；商户（开发者）则节约了开发运营成本、同时提升了获取用户的效率；而物业公司（以太坊基金会和矿工）则可以通过做大生态体量实现更多的租金（ETH增值）和储值卡结算手续费（Gas费用）收入。

ERC-20就是用这种做大生态价值的方式，实现了用户、开发者和以太坊网络三方面的共赢。

***ERC-20的应用案例***

为了让你对ERC-20有更具象化的认识，这里援引 [Alyssa Hertig](https://link.zhihu.com/?target=https%3A//www.coindesk.com/author/alyssa.hertig) 在 [What is the ERC-20 Ethereum Token Standard?](https://link.zhihu.com/?target=https%3A//www.coindesk.com/tech/2021/02/09/what-is-the-erc-20-ethereum-token-standard/) 中列举的一些比较知名的基于ERC-20协议代币：

> Tether (USDT)
> [Chainlink](https://link.zhihu.com/?target=https%3A//www.coindesk.com/tech/2021/02/09/what-is-the-erc-20-ethereum-token-standard/) (LINK)
> Binance coin (BNB)
> [USD coin](https://link.zhihu.com/?target=https%3A//www.coindesk.com/tech/2021/02/09/what-is-the-erc-20-ethereum-token-standard/) (USDC)
> Wrapped bitcoin (WBTC)
> [Dai](https://link.zhihu.com/?target=https%3A//www.coindesk.com/tech/2021/02/09/what-is-the-erc-20-ethereum-token-standard/) (DAI)

需要特别指出的是，这上面提到的Tether发行的稳定币USDT除了基于ERC-20协议的版本之外，其实还有基于其他公链发行的多个版本，只不过ERC-20版的发行量最大，知名度也最高。

# openzeppelin 智能合约库

官网：https://www.openzeppelin.com/

GitHub：https://github.com/OpenZeppelin/openzeppelin-contracts

OpenZeppelin 是一个使用以太坊智能合约语言 Solidity 进行构建的开发框架，可以简化智能合约和 Dapp 的开发。

OpenZeppelin合约和库已成为行业标准，其开源代码模板经历了以太坊及其他区块链的实战考验，帮助开发者最大限度降低风险。OpenZeppelin代码包括使用度最高的ERC标准及拓展部署，已被社区在各类指南以及操作教程中大量使用。

## Contract Wizard

OpenZeppelin开发了一种基于网络的线上智能合约交互式工具，它可能是使用OpenZeppelin代码编写智能合约最简单快捷的方式。这一工具称为[Contracts Wizard](https://docs.openzeppelin.com/contracts/4.x/wizard)。



# ERC-20 代币实现

https://ethereum.org/zh/developers/docs/standards/tokens/erc-20/#top

https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md

https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20

https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.8.0/contracts/token/ERC20/ERC20.sol

https://www.openzeppelin.com/contracts

https://ethereum.org/zh/

https://www.osgeo.cn/solidity/units-and-global-variables.html#special-variables-and-functions

ERC-20（以太坊意见征求 20）由 Fabian Vogelsteller 提出于 2015 年 11 月。这是一个能实现智能合约中代币的应用程序接口标准。

ERC-20 的功能示例包括：

- 将代币从一个帐户转到另一个帐户
- 获取帐户的当前代币余额
- 获取网络上可用代币的总供应量
- 批准一个帐户中一定的代币金额由第三方帐户使用

如果智能合约实施了下列方法和事件，它可以被称为 ERC-20 代币合约， 一旦部署，将负责跟踪以太坊上创建的代币。

方法

```solidity
function name() public view returns (string)
function symbol() public view returns (string)
function decimals() public view returns (uint8)
function totalSupply() public view returns (uint256)
function balanceOf(address _owner) public view returns (uint256 balance)
function transfer(address _to, uint256 _value) public returns (bool success)
function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)
function approve(address _spender, uint256 _value) public returns (bool success)
function allowance(address _owner, address _spender) public view returns (uint256 remaining)

```

事件

```solidity
event Transfer(address indexed _from, address indexed _to, uint256 _value)
event Approval(address indexed _owner, address indexed _spender, uint256 _value)
```

## 代币1

```solidity

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

```

## 代币2

```solidity
// SPDX-License-Identifier: MIT
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

```



# ERC-20代币部署

1. 将环境切换切MetaMask钱包环境并选择钱包账户

![image-20221212212504003](https://gitee.com/fcjun/image/raw/master/img/image-20221212212504003.png)

2. 点击Deploy ，输入代币的名字和表示 部署合约

![image-20221212212645585](https://gitee.com/fcjun/image/raw/master/img/image-20221212212645585.png)

部署成功结果

![image-20221212213033774](https://gitee.com/fcjun/image/raw/master/img/image-20221212213033774.png)

合约地址 0x639DfECe957A8D705f028D1950890598C30789ed

交易hash 0x28aa84834efc9c787c4cd584128f456e16b933eddf250859833b395656153847



在metaMask 添加代币

![image-20221212214003856](https://gitee.com/fcjun/image/raw/master/img/image-20221212214003856.png)

![image-20221212214043557](https://gitee.com/fcjun/image/raw/master/img/image-20221212214043557.png)

智能合约初始化的时候没有规定代币的数量，所以添加结果为0MTC

![image-20221212214148279](https://gitee.com/fcjun/image/raw/master/img/image-20221212214148279.png)

后续通过mint 铸造方法，添加货币

![image-20221212214355382](https://gitee.com/fcjun/image/raw/master/img/image-20221212214355382.png)

接下来就可以在测试网络中进行代币转账了

# Web3.js 和 ether.js 介绍

Web3.js 和 ethers.js 都是 JavaScript 库，其作用是使开发者可以与以太坊区块链交互。这两个库都很实用，都能满足大多数以太坊开发者的需求。下面将重点围绕 Web3.js 和 Ethers.js 的相同点和不同点来对它们进行比较，以便你能更好地理解它们的细微区别。

 什么是 web3.js？ 

![image.png](https://cdn.nlark.com/yuque/0/2022/png/22208307/1668092876136-42492b16-2c89-4723-a4fc-812ef3804964.png?x-oss-process=image%2Fresize%2Cw_750%2Climit_0)



Web3.js 是一个由以太坊基金会开发和维护的开源JavaScript库，使用HTTP或 IPC(Inter-Process Communication进程间通信) 连接 或 WebSocket 来和本地或远程以太坊节点进行交互的库。类比于 JavaScript库 axios 对 Web 服务器进行 Ajax 调用，您可以使用Web3.js来读取和写入以太坊区块链。

web3.js。因此，有更广泛的支持，因为有更多的开发人员支持它。

Web3.js 库由一系列模块的集合，服务于以太坊生态系统的各个功能，如：

●web3-eth 用来与以太坊区块链及合约的交互；

●web3-shh Whisper 协议相关，进行p2p通信和广播；

●web3-bzz swarm 协议（去中心化文件存储）相关；

●web3-utils 包含一些对 DApp 开发者有用的方法。

官网：[https://web3js.org](https://web3js.org/)

GitHub: https://github.com/web3/web3.js

 什么是 ethers.js？ 

ETHERS.JS

![image.png](https://cdn.nlark.com/yuque/0/2022/png/22208307/1668092957247-fbe40780-c53d-4df5-b2a5-527d5c04c939.png)



ethers.js库旨在为以太坊区块链及其生态系统提供一个小而完整的 JavaScript API 库，ethers.js 对比使用 web3.js 代码量更少，接口也更简洁。

可以通过[JSON-RPC](https://github.com/ethereum/wiki/wiki/JSON-RPC)、[INFURA](https://infura.io/)、[Etherscan](https://etherscan.io/)、[Alchemy](https://alchemyapi.io/)、[Cloudflare](https://developers.cloudflare.com/distributed-web/ethereum-gateway/)或[MetaMask](https://metamask.io/)连接到以太坊节点。

与 web3.js 相似，ethers.js 常用模块有:

●Ethers.provider 封装与以太坊区块链的连接。它可以用于签发查询和发送已签名的交易，这将改变区块链的状态。

●Ethers.contract 部署智能合约并与它交互。具体来说，该模块中的函数用于侦听从智能合约发射的事件、调用智能合约提供的函数、获取有关智能合约的信息，以及部署智能合约。

●Ethers.utils 提供用于格式化数据和处理用户输入的实用程序函数。Ethers.utils 的作用方式与 web3-utils 相似，能够简化去中心化应用的构建流程。

●Ethers.wallets 提供的功能与我们目前讨论过的其他模块截然不同。Ethers.wallet 的作用是使你可以与现有钱包（以太坊地址）建立连接、创建新钱包以及对交易签名。

官网：[https://ethers.org](https://ethers.org/)

GitHub：https://github.com/ethers-io/ethers.js

 web3.js 和 ethers.js 该如何选择 

 作者对比 

Web3.js 所有者是[以太坊基金会](https://ethereum.org/en/)

ethers.js 所有者是Richard Moore

 

两个库都能够完成任务。Ethers.js 在近两年来越来越受欢迎，下载量和项目使用量都不断增加。Web3.js 一直以来都作为标杆存在，并且仍然拥有许多开发者共享资源。后面将介绍如何连接到 [Infura API](https://infura.io/dashboard) 并使用 web3.js 和 ethers.js 发送交易。





# web3 与智能合约

1. 获取合约部署后的配置文件  在 `artifacts` 下的的 `合约名.json`文件
2. ![image-20221212221505979](https://gitee.com/fcjun/image/raw/master/img/image-20221212221505979.png)

https://web3js.readthedocs.io/en/v1.8.1/

## **window.ethereum API**

MetaMask会向网页注入一个全局的API变量window.ethereum，出于历史遗留原因， 这个全局API变量也可以使用window.web3.currentProvider来访问。该API允许 网站请求用户登录，可以从用户接入的区块链读取数据，并切能够提示用户签名 要提交的交易。

你可以使用这个API来检测一个浏览器是否注入了window.ethereum：

```javascript
if (typeof window.ethereum !== 'undefined') {
  console.log('MetaMask is installed!');
}
```

ethereum API本身很简单，它同时也封装了以太坊JSON-RPC消息，就像那些流行的库例如web3、 truffle、ethjs、Embark等等一样。

### ethereum.isConnected()

如果提供者连接到当前链返回true，否则返回false。

如果提供商未连接，则必须重新加载页面才能重新建立连接。

### eth_requestAccounts - 请求用户授权

```javascript
//调用方式1
ethereum.request({ method: 'eth_requestAccounts' })
  .then(function (accounts) {
    // You now have an array of accounts!
    // Currently only ever one:
    // ['0xFDEa65C8e26263F459A1B5de9555D2931A33b825']
  })
  .catch(function (reason) {
    console.log(reason === "User rejected provider access")
  })
```

### ethereum.selectedAddress - 获取当前用户账号

ethereum.selectedAddress 属性返回表示用户当前选择的以太坊账号，16进制字符串表示

### ethereum.isMetaMask - 检测是否使用MetaMask

ethereum.isMetaMask返回true或false，表示当前用户是否安装了MetaMask。

### ethereum.autoRefreshOnNetworkChange - 网络切换时是否自动刷新

当用户切换网络时，MetaMask扩展会自动刷新。 ethereum.autoRefreshOnNetworkChange这个实验性质的属性允许你关闭 默认的网络切换自动刷新功能。

### ethereum.on() - 监听MetaMask事件

ethereum.on()方法用来监听MetaMask的事件，其原型如下：

```
ethereum.on(eventName, callback)
```

其中：

- eventName：要监听的事件名称
- callback：事件触发时的回调函数

目前支持下列事件：

- accountsChanged：当用户选中账号变化时触发
- networkChanged：当所连接网络ID变化时触发

注意：networkChanged事件只有当你禁用ethereum.autoRefreshOnNetworkChange属性时才有用。

下面的代码在用户切换MetaMask账号后输出新账号到控制台：

```javascript
ethereum.on('accountsChanged', function (accounts) {
  console.log(accounts[0])
})
```

## 调用智能合约(MetaMask)

### 实例web3

```javascript
const Web3 = require("web3");
import mtcContract from "./contracts/contract_Ballot.json";
// 链接上web3 格尔丽的环境
const geerliWS =
  "wss://goerli.infura.io/ws/v3/e4f789009c9245eeaad1d93ce9d059bb";
var web3 = new Web3(Web3.givenProvider || geerliWS);
```

### 账户链接

```javascript
 const account = await web3.eth.requestAccounts();
```

### 实例合约

```javascript
new web3.eth.Contract(智能合约abi,合约地址)
this.votoContract = new web3.eth.Contract(
      mtcContract.abi,
      "0x1D108E4B9162668e1adACD07727b3de749818d0a"
    );

```

### 方法

1. 不需要消耗gas的方法 call (不修改数据的)

   ```javascript
   myContract.methods.myMethod([param1[, param2[, ...]]]).call(options [, defaultBlock] [, callback])
   ```

   ```javascript
   // using the callback
   myContract.methods.myMethod(123).call({from: '0xde0B295669a9FD93d5F28D9Ec85E40f4cb697BAe'}, function(error, result){
       ...
   });
   
   // using the promise
   myContract.methods.myMethod(123).call({from: '0xde0B295669a9FD93d5F28D9Ec85E40f4cb697BAe'})
   .then(function(result){
       ...
   });
   
   ```

   

2. 修改数据消耗gas的方法 send

   ```javascript
   myContract.methods.myMethod([param1[, param2[, ...]]]).send(options[, callback])
   ```

   ```javascript
   // using the callback
   myContract.methods.myMethod(123).send({from: '0xde0B295669a9FD93d5F28D9Ec85E40f4cb697BAe'}, function(error, transactionHash){
       ...
   });
   
   // using the promise
   myContract.methods.myMethod(123).send({from: '0xde0B295669a9FD93d5F28D9Ec85E40f4cb697BAe'})
   .then(function(receipt){
       // receipt can also be a new contract instance, when coming from a "contract.deploy({...}).send()"
   });
   
   ```

   注意:数据修改完成后根据需求监听`receipt`事件

### 事件

```soli
myContract.events.MyEvent([options][, callback])
```

```javascript
myContract.events.MyEvent({
    filter: {myIndexedParam: [20,23], myOtherIndexedParam: '0x123456789...'}, // Using an array means OR: e.g. 20 or 23
    fromBlock: 0
}, function(error, event){ console.log(event); })
.on("connected", function(subscriptionId){
    console.log(subscriptionId);
})
.on('data', function(event){
    console.log(event); // same results as the optional callback above
})
.on('changed', function(event){
    // remove event from local database
})
.on('error', function(error, receipt) { // If the transaction was rejected by the network with a receipt, the second parameter will be the receipt.
    ...
});

```

### 完整代码

```vue
<template>
  <div>
    <h1>web3 与智能合约</h1>
    <h1>代币信息</h1>
    名称: {{ name  }} <br>
    标识: {{ symbol }} <br>
    发行量 {{ web3.utils.fromWei(totalSupply,"ether" ) }} <br>
    <hr>
    <h2>账户信息</h2>
    地址: {{ accounts[0] }} <br>
    余额: {{web3.utils.fromWei(balanceOf,"ether")}} <br>
    <hr>
    <h2>操作</h2>
    收款方: <input type="text" v-model="toAddress"> <br>
    金额:<input type="text" v-model="money"> <br>
    <button @click="send">转账</button>
  </div>
</template>
<script>
const Web3 = require("web3");
import { abi } from "./contracts/HHC.json";
console.log(abi);
export default {
  data() {
    return {
      name:"",
      symbol:"",
      totalSupply: "",
      balanceOf: "",
      accounts:[],
      toAddress: "0xE251ddBe6191594922bfd3d338529EC9C613eB67",
      money:1,
    }
  },
  methods: {
    // 初始化web3实例
    async initWeb3() {
      const geerliWS =
        "wss://goerli.infura.io/ws/v3/e4f789009c9245eeaad1d93ce9d059bb";
      this.web3 = new Web3(Web3.givenProvider || geerliWS);
      // 获取metamask钱包使用的用户
      this.accounts = await this.web3.eth.requestAccounts();
      console.log( this.accounts)
      this.initContract();
    },
    // 初始化智能合约
    initContract() {
      // 代币 hhc 智能合约地址
      this.HccCont = new this.web3.eth.Contract(
        abi,
        "0x18dAaC8e2E422fDB5e26715eF1EcDca11F78eDE5"
      );
      this.getCoinInfo();
      this.addEvents();
    },
    // 获取代币的信息
    async getCoinInfo() {
      // 不修改状态数据 不消耗gas
      this.name = await this.HccCont.methods.name().call();
      this.symbol = await this.HccCont.methods.symbol().call();
      this.totalSupply = await this.HccCont.methods.totalSupply().call();
      this.balanceOf = await this.HccCont.methods.balanceOf(this.accounts[0]).call();
    },
    send() {
      // 修改状态数据
      const weiNum = this.web3.utils.toWei(String(this.money), 'ether');
      console.log(weiNum)
      this.HccCont.methods.transfer(this.toAddress,weiNum).send({
        from: this.accounts[0],
      })
      .on('receipt', function(receipt){
        console.log("交易成功")
        console.log(receipt)
      })
    },
    addEvents() {
      this.HccCont.events.Transfer({
        filter: {},
        fromBlock: 8161338,
      })
      .on("data",(event) => {
        console.log("events transfer");
        console.log(event)
      })
    }
  },
  created() {
    if (typeof window.ethereum !== "undefined") {
      console.log("MetaMask is installed!");
    }
    this.initWeb3();

   
  },
};
</script>

```

## 调用智能合约(纯web3)

> 调用智能合约也相当于是通过web3 发起一个交易
>
> 核心在于  web3.eth.sendSignedTransaction(transHash)
>
> 在构建hash数据时候将调用的合约信息添加进入

### 构建调用智能合约交易hash

将智能合约的方法调用 通过`encodeABI`进行转化

```javascript
 const contractData = await contract.methods.transfer("转账地址",web3.utils.toWei('转账金额')).encodeABI()
```



```javascript
    // 构建交易hash
    async createTransationHx(key, fromAddress, toAddress, money) {
      // key 私钥
      // fromAddress 发送方地址
      // toAddress 接受方地址
      // money 转账金额
      // 当前地址交易次数
      const nonce = await web3.eth.getTransactionCount(fromAddress);
      var privateKey = new Buffer(key, "hex");
      // 获取预计转账gas费
      let gasPrice = await web3.eth.getGasPrice();
      // 转账金额以wei为单位
      let balance = await web3.utils.toWei(money);
    const contractData = await contract.methods.transfer("0x9B0DbF610175F5c783ec169DAdDa5E8B17055626",web3.utils.toWei('30000')).encodeABI()
      // 转账的记录对象
      var rawTx = {
        from: fromAddress,
        nonce: nonce,
        gasPrice: gasPrice,
        to:"",//智能合约地址,
        value: 0,
        data: contractData, //转Token代币会用到的一个字段
      };
      //需要将交易的数据进行预估gas计算，然后将gas值设置到数据参数中
      let gas = await web3.eth.estimateGas(rawTx);
      rawTx.gas = gas;
      // 通过tx实现交易对象的加密操作
      var tx = new Tx(rawTx);
      tx.sign(privateKey);
      var serializedTx = tx.serialize();
      var transationHx = "0x" + serializedTx.toString("hex");
      return transationHx;
    },
```

### 常规转账发起

```javascript
 async sendToken() {
      let pass = prompt("请输入密码");
      let keystore = this.walletInfo.keystore;
      let wallet;
      try {
        wallet = await ethwallet.fromV3(keystore, pass);
      } catch (error) {
        alert("密码错误");
        return false;
      }
      let prikey = wallet.getPrivateKey().toString("hex");
      console.log(prikey)
      const from  = this.walletInfo.lowerCaseAddress;
      const to = this.to;
      const money = this.money;
      // 获取交易hx
      const transHash = await this.createTransationHx(prikey,from,to,money)
      // 发布交易信息
      web3.eth
        .sendSignedTransaction(transHash)
        .on("transactionHash", (txid) => {
          console.log("交易成功,请在区块链浏览器查看");
          console.log("交易id", txid);
          console.log(`https://goerli.etherscan.io/tx/${txid}`);
        })
         .on("receipt", (ret) => {
          console.log("receipt", ret);
          const { transactionHash } = ret;
          // 从区块节点中获取交易hash
          this.createOrderData(transactionHash);
        })
        .on('confirmation', (ret)=>{
          console.log('confirmation',ret)
        })
        .on("error", (err) => {
          console.log("error:" + err);
        });
    },
```

### 完整代码

```javascript
<template>
  <div>
    <h1>web3 与智能合约</h1>
    <h1>代币信息</h1>
    名称: {{ name }} <br />
    标识: {{ symbol }} <br />
    发行量 {{ web3.utils.fromWei(totalSupply, "ether") }} <br />
    <hr />
    <h2>账户信息</h2>
    地址: {{ accounts[0] }} <br />
    eth余额: {{ web3.utils.fromWei(ethBalance, "ether") }}<br />
    代币余额: {{ web3.utils.fromWei(balanceOf, "ether") }} <br />
    <hr />
    <h2>操作</h2>
    收款方: <input type="text" v-model="toAddress" /> <br />
    金额:<input type="text" v-model="money" /> <br />
    <button @click="send">代币转账</button>
    <button @click="sendEth">转账Eth</button>
  </div>
</template>
<script>
const Web3 = require("web3");
const Tx = require("ethereumjs-tx");
import { abi } from "./contracts/HHC.json";
console.log(abi);
export default {
  data() {
    return {
      name: "",
      symbol: "",
      totalSupply: "",
      balanceOf: "",
      accounts: [],
      toAddress: "0xE251ddBe6191594922bfd3d338529EC9C613eB67",
      money: "1",
      ethBalance: "0",
    };
  },
  methods: {
    // 初始化web3实例
    async initWeb3() {
      const geerliWS =
        "wss://goerli.infura.io/ws/v3/e4f789009c9245eeaad1d93ce9d059bb";
      this.web3 = new Web3(Web3.givenProvider || geerliWS);
      // 获取metamask钱包使用的用户
      this.accounts = await this.web3.eth.requestAccounts();
      console.log(this.accounts);
      this.ethBalance = await this.web3.eth.getBalance(this.accounts[0]);
      console.log(this.ethBalance);
      this.initContract();
    },
    // 初始化智能合约
    initContract() {
      // 代币 hhc 智能合约地址
      this.HccCont = new this.web3.eth.Contract(
        abi,
        "0x18dAaC8e2E422fDB5e26715eF1EcDca11F78eDE5"
      );
      this.getCoinInfo();
      this.addEvents();
    },
    // 获取代币的信息
    async getCoinInfo() {
      // 不修改状态数据 不消耗gas
      this.name = await this.HccCont.methods.name().call();
      this.symbol = await this.HccCont.methods.symbol().call();
      this.totalSupply = await this.HccCont.methods.totalSupply().call();
      this.balanceOf = await this.HccCont.methods
        .balanceOf(this.accounts[0])
        .call();
    },
    // 通过metamask 调用智能合约
    send() {
      // 修改状态数据
      const weiNum = this.web3.utils.toWei(String(this.money), "ether");
      console.log(weiNum);
      this.HccCont.methods
        .transfer(this.toAddress, weiNum)
        .send({
          from: this.accounts[0],
        })
        .on("receipt", function (receipt) {
          console.log("交易成功");
          console.log(receipt);
        });
    },
    // 生成交易的hash 数据
    async createTransationHx(prikey,from,to,money) {
      console.log("money",typeof money, money)
       // 当前地址交易次数
      const nonce = await this.web3.eth.getTransactionCount(from);
      var privateKey = new Buffer(prikey, "hex");
      // 获取预计转账gas费
      let gasPrice = await this.web3.eth.getGasPrice();
      // 转账金额以wei为单位
      let value = await this.web3.utils.toWei(money);
      // 转账的记录对象
      var rawTx = {
        from,
        nonce: nonce,
        gasPrice: gasPrice,
        to,//智能合约地址,
        value: value,
        data:"", //转Token代币会用到的一个字段
      };
       //需要将交易的数据进行预估gas计算，然后将gas值设置到数据参数中
       let gas = await this.web3.eth.estimateGas(rawTx);
       rawTx.gas = gas;
        // 通过tx实现交易对象的加密操作
      var tx = new Tx(rawTx);
      tx.sign(privateKey);
      var serializedTx = tx.serialize();
      var transationHx = "0x" + serializedTx.toString("hex");
      return transationHx;
    },
    // 代币转账
    async createCoinTransationHx(prikey,from,to,money) {
      console.log("money",typeof money, money)
       // 当前地址交易次数
      const nonce = await this.web3.eth.getTransactionCount(from);
      var privateKey = new Buffer(prikey, "hex");
      // 获取预计转账gas费
      let gasPrice = await this.web3.eth.getGasPrice();
      // 转账金额以wei为单位
      let value = await this.web3.utils.toWei(money);
      // 转账的记录对象
      // 代币转账
      const contractAbi = await this.HccCont.methods.transfer(to,value).encodeABI();
      var rawTx = {
        from,
        nonce: nonce,
        gasPrice: gasPrice,
        to:'0x18dAaC8e2E422fDB5e26715eF1EcDca11F78eDE5',//eth 转账 to 目标地址 ，智能合约 to 智能合约地址
        value: 0, //eth 转账 数量
        data:contractAbi, //智能合约方法的abi编码
      };
       //需要将交易的数据进行预估gas计算，然后将gas值设置到数据参数中
       let gas = await this.web3.eth.estimateGas(rawTx);
       rawTx.gas = gas;
        // 通过tx实现交易对象的加密操作
      var tx = new Tx(rawTx);
      tx.sign(privateKey);
      var serializedTx = tx.serialize();
      var transationHx = "0x" + serializedTx.toString("hex");
      return transationHx;
    },
    // 通过纯web3调用智能合约
    async sendEth() {
      const prikey =
        "71676f2ff44e36e78a276b16ac389ee8536790c8dfb12392c002050d6f162902";
      // 获取转账的hash
      const from = this.accounts[0];
      // 代币hash
      const transHash = await this.createCoinTransationHx(prikey, from, this.toAddress, this.money);
      // 珠链币的hash
      // const transHash = await this.createTransationHx(prikey, from, this.toAddress, this.money);
      console.log("transHash",transHash);
      // 发起交易
      this.web3.eth
        .sendSignedTransaction(transHash)
        .on("transactionHash", (txid) => {
          console.log("交易成功,请在区块链浏览器查看");
          console.log("交易id", txid);
          console.log(`https://goerli.etherscan.io/tx/${txid}`);
        })
        .on("receipt", (ret) => {
          console.log("receipt", ret);
        });
    },

    addEvents() {
      this.HccCont.events
        .Transfer({
          filter: {},
          fromBlock: 8161338,
        })
        .on("data", (event) => {
          console.log("events transfer");
          console.log(event);
        });
    },
  },
  created() {
    if (typeof window.ethereum !== "undefined") {
      console.log("MetaMask is installed!");
    }
    this.initWeb3();
  },
};
</script>

```





