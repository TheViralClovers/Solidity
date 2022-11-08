const ethers = require("ethers");
const fs = require("fs-extra");
require("dotenv").config();

async function main() {
    const provider = new ethers.providers.JsonRpcProvider(
        process.env.RPC_URL //connects to the blockchain runnign locally
    );
    const wallet = new ethers.Wallet(process.env.PRIVATE_KEY, provider);
    const abi = fs.readFileSync(
        "./SimpleStorage_sol_SimpleStorage.abi",
        "utf8"
    );

    const binary = fs.readFileSync(
        "./SimpleStorage_sol_SimpleStorage.bin",
        "utf8"
    );

    const contractFactory = new ethers.ContractFactory(abi, binary, wallet);
    const contract = await contractFactory.deploy();

    const transactionReceipt = await contract.deployTransaction.wait(1);
    // console.log(transactionReceipt);

    //get number
    const currentFavouriteNumber = await contract.retrieve(); //call retreive function
    console.log(`current favorite number: ${currentFavouriteNumber.toString()}`) //default value is 0
    //update favourite number
    const transactionResponse = await contract.store("7") //call store function , this changes state
    const updatedFavouriteNumber = await contract.retrieve()
    console.log(`Updated favourite number: ${updatedFavouriteNumber}`)
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });