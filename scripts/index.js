const main = async () => {
    const awesomeNFT = await ethers.getContractFactory("AwesomeNFT");
    const awesomeNFTContract = await awesomeNFT.deploy();
    
    await awesomeNFTContract.deployed();
    
    console.log(`Contract Address: ${awesomeNFTContract.address}`);

    const transaction = await awesomeNFTContract.createNFT();
    await transaction.wait();
}

main();