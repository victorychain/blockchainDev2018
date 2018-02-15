pragma solidity ^0.4.0;
contract Greeter {
    
    address owner;
    
    function Greeter() public {
        owner = msg.sender;
    }
    
    function Greet() constant returns (string){
        return "hello, World!";
    }
    
    function myGreet(string x) public returns (string){
        return x;
    }
    
    function fib(uint n) public returns (uint){
        uint a = 0;
        uint b = 1;
        uint i = 0;
        while (i++ < n) {
            uint temp = a;
            a = b;
            b = temp + b;
        }
        return a;
    }
    
    function xor(string x, string y) public returns (uint){
        if (keccak256(x) == keccak256(y)) {
            return 0;
        }
        else {
            return 1;
        }
    }
    
    function xor1(uint x, uint y) public returns (uint){
        if (x == y) {
            return 0;
        }
        else {
            return 1;
        }
    }
    
    function concat(string x, string y) public returns (string){
        bytes memory _x = bytes(x);
        bytes memory _y = bytes(y);
        string memory xy = new string(_x.length + _y.length);
        bytes memory bxy = bytes(xy);
        uint k = 0;
        for (uint i = 0; i < _x.length; i++) bxy[k++] = _x[i];
        for (i = 0; i < _y.length; i++) bxy[k++] = _y[i];
        return string(bxy);
    }
    
    function () {
        revert();
    }

}