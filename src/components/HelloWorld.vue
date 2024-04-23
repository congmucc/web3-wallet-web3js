<script setup>
import Web3 from 'web3';
import { ref } from 'vue';
import Tx from 'ethereumjs-tx';
import { Buffer } from 'buffer'



const account = ref({
    address: "0x1f6681cFDcb5995487be6430d6aca371fb35c11b",
    privateKey: "lst1c924c6",
    balance: null
})

// 构建web3对象
var web3 = new Web3(Web3.givenProvider || "https://sepolia.infura.io/v3/9467064d7fac436fa1cc7eb159712a52");
// console.log('web3 :>> ', web3);

// 创建账户
// let account =  web3.eth.accounts.create('entropy')
// console.log('account :>> ', account);

// 获取账户余额
// let balance = web3.eth.getBalance(account.address)
// console.log('balance :>> ', balance);

web3.eth.getBalance(account.value.address).then((balance) => {
    console.log('balance :>> ', balance);
    account.value.balance = web3.utils.fromWei(balance, 'ether')
})

// 转账
const transaction = async() => {
    console.log('进行转账 :>> ');
    // 1. 构建转账参数
    // 获取账户交易次数
    const nonce = await web3.eth.getTransactionCount(account.value.address)
    console.log('nonce :>> ', nonce);
    // 获取预计转账的费用
    const gasPrice = await web3.eth.getGasPrice()
    console.log('gasPrice :>> ', gasPrice);
    // 转账金额： 以 wei 为单位
    const price = web3.utils.toWei('0.01', 'ether')
    const rawTx = {
        from: account.value.address,
        to: '0x4b85623666F34D081c08C1cBd1185a681a92594d',
        nonce,
        gasPrice: gasPrice,
        price,
        data: '0x0000'
    }
    // 2. 生成 serializedTx

    // 转化私钥  将密码转换为16进制数，再转换为buffer
    const pKey16 = Buffer(account.value.privateKey, 'utf8').toString('hex');
    // console.log('pKey16 :>> ', pKey16);
    const pKey = Buffer(pKey16, 'hex');
    // console.log('pKey :>> ', pKey);

    // gas 估算
    const gas = await web3.eth.estimateGas(rawTx)
    // console.log('gas :>> ', gas);
    rawTx.gas = gas
    const tx = new Tx(rawTx)
    console.log('tx :>> ', tx);
    tx.sign(pKey) // 签名
    // 生成 serializedTx
    const serializedTx = tx.serializedTx()
    console.log('serializedTx :>> ', serializedTx);
    

}

</script>

<template>
<h3>地址： {{ account.address }}</h3>
<h3>私钥： {{ account.privateKey }}</h3>
<h3>账户余额： {{ account.balance }}</h3>

<hr/>

<button @click="transaction">转账</button>

</template>

<style scoped>
</style>
