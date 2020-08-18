pragma solidity 0.5.7;

contract IPlotus {

    enum MarketType {
      HourlyMarket,
      DailyMarket,
      WeeklyMarket
    }
    address public owner;
    address public tokenController;
    address public marketConfig;
    function() external payable{}

    /**
    * @dev Initialize the Plotus.
    * @param _owner The address of owner.
    * @param _marketImplementation The address of market implementation.
    * @param _marketConfig The address of market config.
    * @param _plotusToken The address of plotus token.
    */
    function initiatePlotus(address _owner, address _marketImplementation, address _marketConfig, address _plotusToken) public;

    /**
    * @dev Create proposal if user wants to raise the dispute.
    * @param proposalTitle The title of proposal created by user.
    * @param description The description of dispute.
    * @param solutionHash The ipfs solution hash.
    * @param actionHash The action hash for solution.
    * @param stakeForDispute The token staked to raise the diospute.
    * @param user The address who raises the dispute.
    */
    function createGovernanceProposal(string memory proposalTitle, string memory description, string memory solutionHash, bytes memory actionHash, uint256 stakeForDispute, address user) public {
    }

    /**
    * @dev Emits the PlacePrediction event.
    * @param _user The address who placed prediction.
    * @param _value The amount of ether user staked.
    * @param _predictionPoints The positions user will get.
    * @param _predictionAsset The prediction assets user will get.
    * @param _prediction The option range on which user placed prediction.
    * @param _leverage The leverage selected by user at the time of place prediction.
    */
    function callPlacePredictionEvent(address _user,uint _value, uint _predictionPoints, uint _predictionAsset, uint _prediction,uint _leverage) public{
    }

    /**
    * @dev Emits the claimed event.
    * @param _user The address who claim their reward.
    * @param _reward The reward which is claimed by user.
    * @param incentives The incentives of user.
    * @param incentiveTokens The incentive tokens of user.
    */
    function callClaimedEvent(address _user , uint[] memory _reward, address[] memory predictionAssets, uint[] memory incentives, address[] memory incentiveTokens) public {
    }

        /**
    * @dev Emits the MarketResult event.
    * @param _totalReward The amount of reward to be distribute.
    * @param _winningOption The winning option of the market.
    */
    function callMarketResultEvent(uint[] memory _totalReward, uint _winningOption) public {
    }
}