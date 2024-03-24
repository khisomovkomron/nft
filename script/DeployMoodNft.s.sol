// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {MoodNft} from "../src/MoodNft.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";


contract DeployMoodNft is Script {
    function run() external returns (MoodNft) {
        vm.startBroadcast();
        MoodNft moodcNft = new MoodNft();
        vm.stopBroadcast();
        return moodcNft;
    }

    function svgToImageURI(string memory svg) public pure returns(string memory){
        string memory baseURL = "data:image/svg+xml;base64,";
        string memory svgBase64Encoded = Base64.encode(bytest(string(abi.encodePacked(svg))));
        return string(abi.encodePacked(baseURL, svgBase64Encoded));
    }
}
