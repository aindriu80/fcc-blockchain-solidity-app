// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.0;

// Importing from online
// import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// Importing locally.
import "./AggregatorV3Interface.sol";

contract FundMe {
    uint256 public minimumUsd = 50 * 1e18; // 1 * 10 * 18

    function fund() public payable {
        // Want to be able to set a minimum amount in USD
        // 1. How do we send ETH to this contract

        require(msg.value >= minimumUsd, "Didn't send enough"); // 1e18 == 1 * 10 ** 18 == 1000000000000000000 (18 zeros)

        //  What is reverting? -> it undos any action before, and sends remaining gas back
    }

    function getPrice() public view returns (uint256){
        // need ABI & address of contact
        // Address = 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);
        (,int256 price,,,) = priceFeed.latestRoundData();
        //  ETH in terms of USD
        // 300.00000000 with 8 decimal palces
        return uint256(price * 1e10); // 1**10 = 10000000000
    }

    function getVersion() public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
        );
        return priceFeed.version();
    }

    function getConversionRate(uint256 ethAmount) public view returns(uint256) {
        uint256 ethPrice = getPrice();
        //  eth price = $3000 = 3000_000000000000000000 = ETH / USD price
        //  1_000000000000000000 ETH

        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18; 
        //  equals 2.999e21 or 2999.99999999999999999
        // use round numbers in Ethereum
        return ethAmountInUsd;
    }

    // function withdraw(){

    // }
}
