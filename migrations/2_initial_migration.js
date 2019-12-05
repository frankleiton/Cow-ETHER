const Migrations = artifacts.require("./Cow");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
