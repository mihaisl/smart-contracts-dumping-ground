// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VoteCounter {
    uint256 public voteCount;
    mapping(address => bool) public hasVoted;

    // Function to vote
    function vote() public {
        // Check if the sender has already voted
        require(!hasVoted[msg.sender], "You have already voted.");

        // Increment the vote count
        voteCount += 1;

        // Record that the sender has voted
        hasVoted[msg.sender] = true;
    }

    // Function to check if an address has voted
    function checkIfVoted(address _address) public view returns (bool) {
        return hasVoted[_address];
    }
}
