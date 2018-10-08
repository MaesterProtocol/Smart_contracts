pragma solidity ^0.4.24;
/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {

  /**
  * @dev Multiplies two numbers, throws on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  /**
  * @dev Integer division of two numbers, truncating the quotient.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  /**
  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  /**
  * @dev Adds two numbers, throws on overflow.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}

/**
 * @title ERC20Basic
 * @dev Simpler version of ERC20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/179
 */
contract ERC20Basic {
  function totalSupply() public view returns (uint256);
  function balanceOf(address who) public view returns (uint256);
  function transfer(address to, uint256 value) public returns (bool);
  event Transfer(address indexed from, address indexed to, uint256 value);
}

/**
 * @title ERC20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/20
 */
contract ERC20 is ERC20Basic {
  function allowance(address owner, address spender) public view returns (uint256);
  function transferFrom(address from, address to, uint256 value) public returns (bool);
  function approve(address spender, uint256 value) public returns (bool);
  event Approval(address indexed owner, address indexed spender, uint256 value);
}

/**
 * @title Basic token
 * @dev Basic version of StandardToken, with no allowances.
 */
contract BasicToken is ERC20Basic {
  using SafeMath for uint256;

  mapping(address => uint256) balances;

  uint256 totalSupply_;

  /**
  * @dev total number of tokens in existence
  */
  function totalSupply() public view returns (uint256) {
    return totalSupply_;
  }

  /**
  * @dev transfer token for a specified address
  * @param _to The address to transfer to.
  * @param _value The amount to be transferred.
  */
  function transfer(address _to, uint256 _value) public returns (bool) {
    require(_to != address(0));
    require(_value <= balances[msg.sender]);

    // SafeMath.sub will throw if there is not enough balance.
    balances[msg.sender] = balances[msg.sender].sub(_value);
    balances[_to] = balances[_to].add(_value);
    Transfer(msg.sender, _to, _value);
    return true;
  }

  /**
  * @dev Gets the balance of the specified address.
  * @param _owner The address to query the the balance of.
  * @return An uint256 representing the amount owned by the passed address.
  */
  function balanceOf(address _owner) public view returns (uint256 balance) {
    return balances[_owner];
  }

}

/**
 * @title Standard ERC20 token
 *
 * @dev Implementation of the basic standard token.
 * @dev https://github.com/ethereum/EIPs/issues/20
 * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
 */
contract StandardToken is ERC20, BasicToken {

  mapping (address => mapping (address => uint256)) internal allowed;


  /**
   * @dev Transfer tokens from one address to another
   * @param _from address The address which you want to send tokens from
   * @param _to address The address which you want to transfer to
   * @param _value uint256 the amount of tokens to be transferred
   */
  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    require(_to != address(0));
    require(_value <= balances[_from]);
    require(_value <= allowed[_from][msg.sender]);

    balances[_from] = balances[_from].sub(_value);
    balances[_to] = balances[_to].add(_value);
    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    Transfer(_from, _to, _value);
    return true;
  }

  /**
   * @dev Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.
   *
   * Beware that changing an allowance with this method brings the risk that someone may use both the old
   * and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this
   * race condition is to first reduce the spender's allowance to 0 and set the desired value afterwards:
   * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
   * @param _spender The address which will spend the funds.
   * @param _value The amount of tokens to be spent.
   */
  function approve(address _spender, uint256 _value) public returns (bool) {
    allowed[msg.sender][_spender] = _value;
    Approval(msg.sender, _spender, _value);
    return true;
  }

  /**
   * @dev Function to check the amount of tokens that an owner allowed to a spender.
   * @param _owner address The address which owns the funds.
   * @param _spender address The address which will spend the funds.
   * @return A uint256 specifying the amount of tokens still available for the spender.
   */
  function allowance(address _owner, address _spender) public view returns (uint256) {
    return allowed[_owner][_spender];
  }

  /**
   * @dev Increase the amount of tokens that an owner allowed to a spender.
   *
   * approve should be called when allowed[_spender] == 0. To increment
   * allowed value is better to use this function to avoid 2 calls (and wait until
   * the first transaction is mined)
   * From MonolithDAO Token.sol
   * @param _spender The address which will spend the funds.
   * @param _addedValue The amount of tokens to increase the allowance by.
   */
  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    return true;
  }

  /**
   * @dev Decrease the amount of tokens that an owner allowed to a spender.
   *
   * approve should be called when allowed[_spender] == 0. To decrement
   * allowed value is better to use this function to avoid 2 calls (and wait until
   * the first transaction is mined)
   * From MonolithDAO Token.sol
   * @param _spender The address which will spend the funds.
   * @param _subtractedValue The amount of tokens to decrease the allowance by.
   */
  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    uint oldValue = allowed[msg.sender][_spender];
    if (_subtractedValue > oldValue) {
      allowed[msg.sender][_spender] = 0;
    } else {
      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    }
    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    return true;
  }

}

/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {
  address public owner;


  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


  /**
   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
   * account.
   */
  function Ownable() public {
    owner = msg.sender;
  }

  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  /**
   * @dev Allows the current owner to transfer control of the contract to a newOwner.
   * @param newOwner The address to transfer ownership to.
   */
  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));
    OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

}

contract ConfigurableToken is StandardToken, Ownable
{
  uint256 public totalTokens = uint256(1000000000).mul(1 ether); //Total MAP Tokens
  uint256 public tokensForSale = uint256(300000000).mul(1 ether); //Token for crowdsale 30%
  uint256 public bountyTokens = uint256(30000000).mul(1 ether); //bounty Tokens 3%
  uint256 public teamTokens = uint256(100000000).mul(1 ether); //Team Tokens 10%
  uint256 public teamReleased = 0;
  uint256 public companyHeldTokens = uint256(500000000).mul(1 ether);//Company held Tokens 50%
  uint256 public advisorsTokens = uint256(7000000).mul(1 ether);//Advisors token 7%
  uint256 public advisorsReleased = 0;
  uint256 public listingDate = 0;
  uint256 tokensUnlockPeriod = 4838400; // 56 days (8th Oct-2nd Dec)
  uint256 vestingPeriod = 47260800; // 547 days (18 months)//only for Team tokens
  address public saleContract;
  address public advisors;
  address public companyAddress;
  address public team;
  bool public tokensLocked = true;

  event SaleContractActivation(address saleContract, uint256 tokensForSale);

  event Burn(address tokensOwner, uint256 burnedTokensAmount);

  modifier tokenNotLocked() {
    if (tokensLocked && msg.sender != owner) 
    {
      if (listingDate > 0 && now.sub(listingDate) > tokensUnlockPeriod) 
      {
        tokensLocked = false;
      } 
      else
      {
        revert();
      }
    }
    _;
  }
 ///@dev transfer token to sale contract
///@param _saleContract ,address of a sale contract
  
  function activateSaleContract(address _saleContract) public onlyOwner //transfer sale tokens to crowdsale contract
  
  {
    require(_saleContract != address(0));
    saleContract = _saleContract;
    balances[saleContract] = balances[saleContract].add(tokensForSale);
    totalSupply_ = totalSupply_.add(tokensForSale);
    require(totalSupply_ <= totalTokens);
    Transfer(address(this), saleContract, tokensForSale);
    SaleContractActivation(saleContract, tokensForSale);
  }

  function isListing() public onlyOwner//Timestamp for listing or vestingPeriod
  {
    require(listingDate==0);  
    listingDate = now;
  }

  function transfer(address _to, uint256 _value) public tokenNotLocked returns (bool) {
    return super.transfer(_to, _value);
  }

  function transferFrom(address _from, address _to, uint256 _value) public tokenNotLocked returns (bool) {
    return super.transferFrom(_from, _to, _value);
  }

  function approve(address _spender, uint256 _value) public tokenNotLocked returns (bool) {
    return super.approve(_spender, _value);
  }

  function increaseApproval(address _spender, uint _addedValue) public tokenNotLocked returns (bool success) {
    return super.increaseApproval(_spender, _addedValue);
  }

  function decreaseApproval(address _spender, uint _subtractedValue) public tokenNotLocked returns (bool success) {
    return super.decreaseApproval(_spender, _subtractedValue);
  }

  function saleTransfer(address _to, uint256 _value) public returns (bool) {
    require(saleContract != address(0));
    require(msg.sender == saleContract);
    return super.transfer(_to, _value);
  }
  
///@dev Send bounty tokens 
///@param _to address to which bounty token send
///@param _value amount of tokens 
  
  function sendBounty(address _to, uint256 _value) public onlyOwner returns (bool) //Function to send Bounty tokens
  {
    uint256 value = _value.mul(1 ether);
    require(bountyTokens >= value);
    totalSupply_ = totalSupply_.add(value);
    require(totalSupply_ <= totalTokens);
    balances[_to] = balances[_to].add(value);
    bountyTokens = bountyTokens.sub(value);
    Transfer(address(this), _to, value);
    return true;
  }
/// @dev burn tokens of a given value
///@dev _value , no of tokens to burn
  
  function burn(uint256 _value) public  returns (bool) {
    uint256 value = _value.mul(1 ether);
    require(balances[msg.sender] >= value);
    require(totalSupply_ >= value);
    balances[msg.sender] = balances[msg.sender].sub(value);
    totalSupply_ = totalSupply_.sub(value);
    Burn(msg.sender, value);
    return true;
  }
  
/// @dev burn tokens of crowdsale contract 
  function burnTokensForSale() public returns (bool) {
    require(saleContract != address(0));
    require(msg.sender == saleContract);
    uint256 tokens = balances[saleContract];
    require(tokens > 0);
    require(tokens <= totalSupply_);
    balances[saleContract] =0;
    totalSupply_ = totalSupply_.sub(tokens);
    Burn(saleContract, tokens);
    return true;
  }
 /// @dev Display vesting period 
  
  function getVestingPeriodNumber() public view returns (uint256) 
  {
    if (listingDate == 0) return 0;
    return (now.sub(listingDate)).div(vestingPeriod);
  }

 /// @dev release Advisors tokens on advisors address
  function releaseAdvisorsTokens() public onlyOwner returns (bool) 
  {
    
    uint256 tokensToRelease = advisorsTokens.sub(advisorsReleased);
    require(tokensToRelease > 0);
    totalSupply_ = totalSupply_.add(tokensToRelease);
    require(totalSupply_ <= totalTokens);
    balances[advisors] = balances[advisors].add(tokensToRelease);
    advisorsReleased = advisorsReleased.add(tokensToRelease);
    require(advisorsReleased <= advisorsTokens);
    Transfer(address(this), advisors, tokensToRelease);
    return true;
  }

   /// @dev release team tokens after vesting period
  

  function releaseTeamTokens() public returns (bool) 
  {
    uint256 vestingPeriodNumber = getVestingPeriodNumber();
    if(vestingPeriodNumber>=1)
{
    uint256 tokensToRelease = teamTokens.sub(teamReleased);
    require(tokensToRelease > 0);
    totalSupply_ = totalSupply_.add(tokensToRelease);
    require(totalSupply_ <= totalTokens);
    balances[team] = balances[team].add(tokensToRelease);
    teamReleased = teamReleased.add(tokensToRelease);
    require(teamReleased <= teamTokens);
    Transfer(address(this), team, tokensToRelease);
    return true;
  }
  else {return false;}
  }
}

/**
 * @title maesterprotocol token
 */

contract MAP is ConfigurableToken
{
  string public constant name = "maesterprotocol";
  string public constant symbol = "MAP";
  uint32 public constant decimals = 18;

   /// @dev Initialize the token contract 
   /// @param _newOwner ,owner of the token contract 
 /// @param _team ,team token holded by this address 
  /// @param _advisors , advisors token hold buy this address
   /// @param _companyAddress ,Hold 50% token for retail sale in application 

  function MAP(address _newOwner, address _team, address _advisors, address _companyAddress) public 
  {
    require(_newOwner != address(0));
    require(_team != address(0));
    require(_advisors != address(0));
    require(_companyAddress != address(0));
    totalSupply_ = totalSupply_.add(companyHeldTokens); 
    owner = _newOwner;
    team = _team;
    advisors = _advisors;
    companyAddress=_companyAddress;
    balances[companyAddress] = balances[companyAddress].add(companyHeldTokens);
    Transfer(address(this), companyAddress, companyHeldTokens);
  }
}