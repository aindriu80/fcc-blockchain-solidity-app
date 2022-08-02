// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.0;

interface AggregatorV3Interface {
    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

    function getRoundData(uint80 _roundId)
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );

    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );
}

contract FundMe {
    uint256 public minimumUsd = 50;

    function fund() public payable {
        // Want to be able to set a minimum amount in USD
        // 1. How do we send ETH to this contract

        require(msg.value >= minimumUsd, "Didn't send enough"); // 1e18 == 1 * 10 ** 18 == 1000000000000000000 (18 zeros)

        //  What is reverting? -> it undos any action before, and sends remaining gas back
    }

    function getPrice() public {
        // need ABI & address of contact
        // Address = 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
    }

    function getVersion() public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
        );
        return priceFeed.version();
    }

    function getConversionRate() public {}

    // function withdraw(){

    // }
}
