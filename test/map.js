const MAP = artifacts.require("./MAP.sol");
//const Crowdsale = artifacts.require("./Crowdsale");

contract('MAP', function ([owner,team,advisor,teamheld]) 
  {   
      let map
      beforeEach('setup contract for each test', async function () {
        map = await MAP.new(owner,team,advisor,teamheld);

    })

  it('should return total supply of a Token ',() => {
  
const initialSupply = 500000000000000000000000000;

  let app;
    
  return MAP.deployed().then((instance) => {
      app =  instance;
      let owner_ =  instance.owner.call();
    }).then(() => {
     
        return app.totalSupply.call();
      }).then((data) => {
        assert.equal(data.toNumber(),initialSupply,'Initial Supply must be equal to passed value in the constructor');
        
      });
  });
 it("should be able to burn tokens",async function() {
  let app ;
  return MAP.deployed().then(function(instance){
   app = instance;   

   return  app.burn(20000000000000000000);
  });
}); 

it("should not transfer tokens to TEAM before vesting period", function() {
  var token;
  return MAP.deployed().then(function(instance){
    token = instance;
    return token.releaseTeamTokens();
  })
  .catch((error)=>{
    assert.equal(error.message,'VM Exception while processing transaction: revert');
   })
});

it("should revert if user tries to transfer negative tokens", function() {
  var token;
  return MAP.deployed().then(function(instance){
    token = instance;
    return token.transfer(advisor, -100000);
  }).catch((error)=>{
    assert.equal(error.message,'VM Exception while processing transaction: revert');
  
  })

});

it("should transfer Bounty Tokens", function() {
  var token;
  
  return MAP.deployed({from: owner}).then(function(instance){
    token = instance;
   
  }).then(function(){
    return token.sendBounty(0xebf5b3bbbd3dd489727e2a1b344e1c6494b3606f,100);
  })
});

it("should transfer Advisors Tokens", function() {
  var token;
  return MAP.deployed().then(function(instance){
    token = instance;
  }).then(function(){
    return token.releaseAdvisorsTokens.call();
  })
});

it('should activate sale contract',() => {
      let app;
      
 return MAP.deployed().then((instance) => {
        app =  instance;
      }).then(() => {
          return app.activateSaleContract.call(0xe9cf7fab6802e573619700789fba58a508df9803,{from:owner});
        })
    });


  it('should return Bounty Tokens ',() => {
  
    const Bounty_tokens = 30000000000000000000000000;
    
      let app;
        
      return MAP.deployed().then((instance) => {
          app =  instance;
          
        }).then(() => {
         
            return app.bountyTokens.call();
          }).then((data) => {
            assert.equal(data.toNumber(),Bounty_tokens,'Bounty Tokens are available');
            
          });
      });
})