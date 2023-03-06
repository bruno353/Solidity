//Interface name is not important, however functions in it are important
interface GreeterInterface{
  function greet() external view returns (string memory);
  function setGreeting(string memory _greeting) external;
}

contract MyContract {
  address public constant OTHER_CONTRACT = 0x8016619281F888d011c84d2E2a5348d9417c775B;
  GreeterInterface GreeterContract = GreeterInterface(OTHER_CONTRACT);
  
  function testCall() public returns (string memory) {
    //This is example and not related to your contract
    string memory greet = GreeterContract.greet();
    return greet;
  }
}
