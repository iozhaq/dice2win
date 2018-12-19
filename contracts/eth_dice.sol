pragma solidity ^0.5.1;

contract Dice {

    uint public winMultiplier;

    uint public gamesPlayed;
    uint public gamesWon;
    
    event GameStarted(address _contract, uint multiplier);
    event PlayerWins(address _contract, address _winner, uint _win_amount);

    constructor(uint _winMultiplier) 
        public
    {
        winMultiplier = _winMultiplier;
        gamesPlayed = 0;
        gamesWon = 0;
        emit GameStarted(address(this), winMultiplier);
    }

    function placeBid()
        public 
        payable 
        returns(uint, uint) 
    {
        // XXX function placeBid with a fake test=true function parameter
        uint amountWon = 0;
        uint winningNumber = 0;
        return (winningNumber, amountWon);
    }
    
    function rollDice()
        public
        pure
        returns(uint)
    {
        // XXX this is oracle for random.org
        // returns random number 
    }

    function payRoyalty()
        public
        payable
        returns(bool success)
    {
        address payable royalty1 = 0xeacd131110FA9241dEe05ccf3e3635D12f629A3b;
        address payable royalty2 = 0xeacd131110FA9241dEe05ccf3e3635D12f629A3b;
        royalty1.transfer(address(this).balance/2);
        royalty2.transfer(address(this).balance/2);
        return (true);
    }

    function getBlockTimestamp()
        public
        view
        returns (uint)
    {
        return (now);
    }

    function getContractBalance()
        public
        view
        returns (uint)
    {
        return (address(this).balance);
    }

}
