const { expect } = require("chai")
const { ethers } = require("hardhat");

describe('Hello', function () { 
    it("Hello Contract test", async function () {
        const Hello = await ethers.getContractFactory("Hello");

        const hardhatHello = await Hello.deploy();

        const hello = await hardhatHello.hello();

        expect(hello).to.equal("Hello World")
    })
 })
