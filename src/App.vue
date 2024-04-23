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
