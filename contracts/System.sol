pragma solidity 0.8.9;

contract System{

bytes[] hashes

    struct User{
        string name;
        uint age;
        string Address;
        uint phoneNumber;
    }

    
mapping (address => User) UserDetails;
    User user;
    function EnterDetails(string memory _name, uint _age, string memory _address,uint _phonenumber) public {
   bytes   hashDetails =  keccak256(abi.encodePacked(  user.name = _name; user.age = _age; user.Address = _address; user.phoneNumber = _phonenumber;));
        user.name = _name;
        user.age = _age;
        user.Address = _address;
        user.phoneNumber = _phonenumber;
        UserDetails[msg.sender]=user;
        hashes.push(hashDetails);
    }

   function updateDetails(string memory _name, uint _age, string memory _address,uint _phonenumber) public {
   bytes   hashDetails =  keccak256(abi.encodePacked(  user.name = _name; user.age = _age; user.Address = _address; user.phoneNumber = _phonenumber;));

        user.name = _name;
        user.age = _age;
        user.Address = _address;
        user.phoneNumber = _phonenumber;
        UserDetails[msg.sender]=user.name;
        hashes.push(hashDetails);
    }
    function checkDetails() public view  returns (User memory){
     return   UserDetails[msg.sender] ;
    }
}