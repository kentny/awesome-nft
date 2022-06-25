const { expect } = require("chai")
const { ethers } = require("hardhat");

describe('Hello', function () { 
    it("Hello Contract test", async function () {
        const Hello = await ethers.getContractFactory("Hello");

        const helloContract = await Hello.deploy();

        const hello = await helloContract.hello();
        
        console.log(`Contract Address: ${helloContract.address}`)
        expect(hello).to.equal("Hello World")
    })
 })
