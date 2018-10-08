* [MAP](#map)
  * [name](#function-name)
  * [approve](#function-approve)
  * [tokensForSale](#function-tokensforsale)
  * [listingDate](#function-listingdate)
  * [releaseTeamTokens](#function-releaseteamtokens)
  * [totalSupply](#function-totalsupply)
  * [bountyTokens](#function-bountytokens)
  * [burnTokensForSale](#function-burntokensforsale)
  * [transferFrom](#function-transferfrom)
  * [releaseAdvisorsTokens](#function-releaseadvisorstokens)
  * [decimals](#function-decimals)
  * [sendBounty](#function-sendbounty)
  * [burn](#function-burn)
  * [advisorsReleased](#function-advisorsreleased)
  * [getVestingPeriodNumber](#function-getvestingperiodnumber)
  * [companyAddress](#function-companyaddress)
  * [advisorsTokens](#function-advisorstokens)
  * [decreaseApproval](#function-decreaseapproval)
  * [companyHeldTokens](#function-companyheldtokens)
  * [balanceOf](#function-balanceof)
  * [totalTokens](#function-totaltokens)
  * [team](#function-team)
  * [owner](#function-owner)
  * [symbol](#function-symbol)
  * [tokensLocked](#function-tokenslocked)
  * [saleTransfer](#function-saletransfer)
  * [transfer](#function-transfer)
  * [teamTokens](#function-teamtokens)
  * [increaseApproval](#function-increaseapproval)
  * [saleContract](#function-salecontract)
  * [allowance](#function-allowance)
  * [isListing](#function-islisting)
  * [advisors](#function-advisors)
  * [transferOwnership](#function-transferownership)
  * [teamReleased](#function-teamreleased)
  * [activateSaleContract](#function-activatesalecontract)
  * [SaleContractActivation](#event-salecontractactivation)
  * [Burn](#event-burn)
  * [OwnershipTransferred](#event-ownershiptransferred)
  * [Approval](#event-approval)
  * [Transfer](#event-transfer)

# MAP


## *function* name

MAP.name() `view` `06fdde03`





## *function* approve

MAP.approve(_spender, _value) `nonpayable` `095ea7b3`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | undefined |
| *uint256* | _value | undefined |


## *function* tokensForSale

MAP.tokensForSale() `view` `12aef8c3`





## *function* listingDate

MAP.listingDate() `view` `141c9422`





## *function* releaseTeamTokens

MAP.releaseTeamTokens() `nonpayable` `14c411c7`

> release team tokens after vesting period




## *function* totalSupply

MAP.totalSupply() `view` `18160ddd`

> total number of tokens in existence




## *function* bountyTokens

MAP.bountyTokens() `view` `1a9bf9cf`





## *function* burnTokensForSale

MAP.burnTokensForSale() `nonpayable` `1b65144d`

> burn tokens of crowdsale contract 




## *function* transferFrom

MAP.transferFrom(_from, _to, _value) `nonpayable` `23b872dd`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _from | undefined |
| *address* | _to | undefined |
| *uint256* | _value | undefined |


## *function* releaseAdvisorsTokens

MAP.releaseAdvisorsTokens() `nonpayable` `2e5a6f17`

> release Advisors tokens on advisors address




## *function* decimals

MAP.decimals() `view` `313ce567`





## *function* sendBounty

MAP.sendBounty(_to, _value) `nonpayable` `404704b9`

> Send bounty tokens 

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _to | address to which bounty token send |
| *uint256* | _value | amount of tokens  |


## *function* burn

MAP.burn(_value) `nonpayable` `42966c68`

> burn tokens of a given value_value , no of tokens to burn

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | _value | undefined |


## *function* advisorsReleased

MAP.advisorsReleased() `view` `44ae0567`





## *function* getVestingPeriodNumber

MAP.getVestingPeriodNumber() `view` `45fa4045`

> Display vesting period 




## *function* companyAddress

MAP.companyAddress() `view` `53e1ead9`





## *function* advisorsTokens

MAP.advisorsTokens() `view` `6078268b`





## *function* decreaseApproval

MAP.decreaseApproval(_spender, _subtractedValue) `nonpayable` `66188463`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | undefined |
| *uint256* | _subtractedValue | undefined |


## *function* companyHeldTokens

MAP.companyHeldTokens() `view` `6b2cdc11`





## *function* balanceOf

MAP.balanceOf(_owner) `view` `70a08231`

> Gets the balance of the specified address.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _owner | The address to query the the balance of. |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | balance | undefined |

## *function* totalTokens

MAP.totalTokens() `view` `7e1c0c09`





## *function* team

MAP.team() `view` `85f2aef2`





## *function* owner

MAP.owner() `view` `8da5cb5b`





## *function* symbol

MAP.symbol() `view` `95d89b41`





## *function* tokensLocked

MAP.tokensLocked() `view` `a1feba42`





## *function* saleTransfer

MAP.saleTransfer(_to, _value) `nonpayable` `a51a8682`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _to | undefined |
| *uint256* | _value | undefined |


## *function* transfer

MAP.transfer(_to, _value) `nonpayable` `a9059cbb`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _to | undefined |
| *uint256* | _value | undefined |


## *function* teamTokens

MAP.teamTokens() `view` `c3e3c7bc`





## *function* increaseApproval

MAP.increaseApproval(_spender, _addedValue) `nonpayable` `d73dd623`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | undefined |
| *uint256* | _addedValue | undefined |


## *function* saleContract

MAP.saleContract() `view` `daf6ca30`





## *function* allowance

MAP.allowance(_owner, _spender) `view` `dd62ed3e`

> Function to check the amount of tokens that an owner allowed to a spender.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _owner | address The address which owns the funds. |
| *address* | _spender | address The address which will spend the funds. |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* |  | undefined |

## *function* isListing

MAP.isListing() `nonpayable` `e06ec0bb`





## *function* advisors

MAP.advisors() `view` `edcfd050`





## *function* transferOwnership

MAP.transferOwnership(newOwner) `nonpayable` `f2fde38b`

> Allows the current owner to transfer control of the contract to a newOwner.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | newOwner | The address to transfer ownership to. |


## *function* teamReleased

MAP.teamReleased() `view` `f6f0fa8d`





## *function* activateSaleContract

MAP.activateSaleContract(_saleContract) `nonpayable` `fdd080a4`

> transfer token to sale contract

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _saleContract | ,address of a sale contract |


## *event* SaleContractActivation

MAP.SaleContractActivation(saleContract, tokensForSale) `9ca62f58`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | saleContract | not indexed |
| *uint256* | tokensForSale | not indexed |

## *event* Burn

MAP.Burn(tokensOwner, burnedTokensAmount) `cc16f5db`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | tokensOwner | not indexed |
| *uint256* | burnedTokensAmount | not indexed |

## *event* OwnershipTransferred

MAP.OwnershipTransferred(previousOwner, newOwner) `8be0079c`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | previousOwner | indexed |
| *address* | newOwner | indexed |

## *event* Approval

MAP.Approval(owner, spender, value) `8c5be1e5`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | owner | indexed |
| *address* | spender | indexed |
| *uint256* | value | not indexed |

## *event* Transfer

MAP.Transfer(from, to, value) `ddf252ad`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *address* | to | indexed |
| *uint256* | value | not indexed |


---
* [Crowdsale](#crowdsale)
  * [setEthPriceInCents](#function-setethpriceincents)
  * [startPresale](#function-startpresale)
  * [endCrowdSaleStageOne](#function-endcrowdsalestageone)
  * [transferSoldTokens](#function-transfersoldtokens)
  * [__callback](#function-__callback)
  * [__callback](#function-__callback)
  * [weiRaised](#function-weiraised)
  * [RaisedInCents](#function-raisedincents)
  * [wallet](#function-wallet)
  * [startCrowdSaleStageOne](#function-startcrowdsalestageone)
  * [restartSale](#function-restartsale)
  * [updatePeriodically](#function-updateperiodically)
  * [pause](#function-pause)
  * [owner](#function-owner)
  * [isSoftcapReached](#function-issoftcapreached)
  * [update](#function-update)
  * [startCrowdSaleStageThree](#function-startcrowdsalestagethree)
  * [endCrowdSaleStageThree](#function-endcrowdsalestagethree)
  * [endCrowdSaleStageTwo](#function-endcrowdsalestagetwo)
  * [startCrowdSaleStageTwo](#function-startcrowdsalestagetwo)
  * [updateTime](#function-updatetime)
  * [buyTokens](#function-buytokens)
  * [endPreSale](#function-endpresale)
  * [transferOwnership](#function-transferownership)
  * [token](#function-token)
  * [getStage](#function-getstage)
  * [ethPrice](#function-ethprice)
  * [TokenPurchase](#event-tokenpurchase)
  * [LogConstructorInitiated](#event-logconstructorinitiated)
  * [newOraclizeQuery](#event-neworaclizequery)
  * [newPriceTicker](#event-newpriceticker)
  * [OwnershipTransferred](#event-ownershiptransferred)

# Crowdsale


## *function* setEthPriceInCents

Crowdsale.setEthPriceInCents(_ethPriceInCents) `nonpayable` `044f9afe`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | _ethPriceInCents | undefined |


## *function* startPresale

Crowdsale.startPresale() `nonpayable` `04c98b2b`





## *function* endCrowdSaleStageOne

Crowdsale.endCrowdSaleStageOne() `nonpayable` `0c03631a`





## *function* transferSoldTokens

Crowdsale.transferSoldTokens(_beneficiary, _tokenAmount) `nonpayable` `0fab459c`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _beneficiary | undefined |
| *uint256* | _tokenAmount | undefined |


## *function* __callback

Crowdsale.__callback(myid, result) `nonpayable` `27dc297e`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *bytes32* | myid | undefined |
| *string* | result | undefined |


## *function* __callback

Crowdsale.__callback(myid, result, proof) `nonpayable` `38bbfa50`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *bytes32* | myid | undefined |
| *string* | result | undefined |
| *bytes* | proof | undefined |


## *function* weiRaised

Crowdsale.weiRaised() `view` `4042b66f`





## *function* RaisedInCents

Crowdsale.RaisedInCents() `view` `434c471e`





## *function* wallet

Crowdsale.wallet() `view` `521eb273`





## *function* startCrowdSaleStageOne

Crowdsale.startCrowdSaleStageOne() `nonpayable` `6868a22c`





## *function* restartSale

Crowdsale.restartSale() `view` `74711285`





## *function* updatePeriodically

Crowdsale.updatePeriodically(_updateTime) `nonpayable` `82428323`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | _updateTime | undefined |


## *function* pause

Crowdsale.pause() `nonpayable` `8456cb59`





## *function* owner

Crowdsale.owner() `view` `8da5cb5b`





## *function* isSoftcapReached

Crowdsale.isSoftcapReached() `view` `962f0215`





## *function* update

Crowdsale.update() `nonpayable` `a2e62045`





## *function* startCrowdSaleStageThree

Crowdsale.startCrowdSaleStageThree() `nonpayable` `ae17ec2b`





## *function* endCrowdSaleStageThree

Crowdsale.endCrowdSaleStageThree() `nonpayable` `b951ef94`





## *function* endCrowdSaleStageTwo

Crowdsale.endCrowdSaleStageTwo() `nonpayable` `c485d471`





## *function* startCrowdSaleStageTwo

Crowdsale.startCrowdSaleStageTwo() `nonpayable` `d16f5665`





## *function* updateTime

Crowdsale.updateTime() `view` `dc555090`





## *function* buyTokens

Crowdsale.buyTokens(_beneficiary) `payable` `ec8ac4d8`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _beneficiary | Address performing the token purchase |


## *function* endPreSale

Crowdsale.endPreSale() `nonpayable` `ee889ed0`





## *function* transferOwnership

Crowdsale.transferOwnership(newOwner) `nonpayable` `f2fde38b`

> Allows the current owner to transfer control of the contract to a newOwner.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | newOwner | The address to transfer ownership to. |


## *function* token

Crowdsale.token() `view` `fc0c546a`





## *function* getStage

Crowdsale.getStage() `view` `fcaa7664`

> Get stage of contract .




## *function* ethPrice

Crowdsale.ethPrice() `view` `ff186b2e`






## *event* TokenPurchase

Crowdsale.TokenPurchase(purchaser, beneficiary, value, amount) `623b3804`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | purchaser | indexed |
| *address* | beneficiary | indexed |
| *uint256* | value | not indexed |
| *uint256* | amount | not indexed |

## *event* LogConstructorInitiated

Crowdsale.LogConstructorInitiated(nextStep) `11a3fca6`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *string* | nextStep | not indexed |

## *event* newOraclizeQuery

Crowdsale.newOraclizeQuery(description) `46cb989e`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *string* | description | not indexed |

## *event* newPriceTicker

Crowdsale.newPriceTicker(myid, price, proof) `bbb1d35a`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *bytes32* | myid | not indexed |
| *string* | price | not indexed |
| *bytes* | proof | not indexed |

## *event* OwnershipTransferred

Crowdsale.OwnershipTransferred(previousOwner, newOwner) `8be0079c`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | previousOwner | indexed |
| *address* | newOwner | indexed |


---
