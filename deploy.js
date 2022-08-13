const ethers = require('ethers')
const fs = require('fs')

async function main() {
  // compile them in our code
  // compile them seperately
  // http://127.0.0.1:7545
  const provider = new ethers.providers.JsonRpcProvider('http://127.0.0.1:7545')
  const wallet = new ethers.Wallet(
    'b5730d249aaa30db0d83bf7c29eed06e1ebdf0af6bd2840dcc12ba68bd0bd4c3',
    provider
  )
  const abi = fs.readFileSync(
    './contracts_SimpleStorage_sol_SimpleStorage.abi',
    'utf8'
  )
  const binary = fs.readFileSync(
    './contracts_SimpleStorage_sol_SimpleStorage.bin',
    'utf8'
  )
  const contractFactory = new ethers.ContractFactory(abi, binary, wallet)
  console.log('Deploying, please wait....')
  const contract = await contractFactory.deploy() // Stop here - waiting for code to deploy
  console.log(contract)
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.log(error)
    process.exit(1)
  })
