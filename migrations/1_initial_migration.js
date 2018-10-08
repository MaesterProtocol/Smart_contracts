var Migrations = artifacts.require("./Migrations.sol");
var MAP = artifacts.require("./MAP.sol");
var Crowdsale = artifacts.require("./Crowdsale.sol");

module.exports = function(deployer) 
{
  deployer.deploy(Migrations);
  deployer.deploy(MAP,0x10a6ec6764ea2c1515cdbdc4b8692c9538c86689,0x10a6ec6764ea2c1515cdbdc4b8692c9538c86689,0x10a6ec6764ea2c1515cdbdc4b8692c9538c86689,0x10a6ec6764ea2c1515cdbdc4b8692c9538c86689);
};
