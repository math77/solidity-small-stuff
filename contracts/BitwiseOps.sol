pragma solidity 0.8.19;

//@author promatheus
contract BitwiseOps {

  /*
    x   =  1110 = 8 + 4 + 2 + 0 = 14
    y   =  1011 = 8 + 0 + 2 + 1 = 11
    x&y =  1010 = 8 + 0 + 2 + 0 = 10
  */
  function and(uint256 x, uint256 y) external pure returns (uint256) {
    return x & y;
  }

  /*
    x   =  1110 = 8 + 4 + 2 + 0 = 14
    y   =  1011 = 8 + 0 + 2 + 1 = 11
    x|y =  1111 = 8 + 4 + 2 + 1 = 15
  */
  function or(uint256 x, uint256 y) external pure returns (uint256) {
    return x | y;
  }

  /*
    x   =  1100 = 8 + 4 + 0 + 0 = 12
    y   =  0101 = 0 + 4 + 0 + 1 = 5
    x^y =  1001 = 8 + 0 + 0 + 1 = 9 
  */
  function xor(uint256 x, uint256 y) external pure returns (uint256) {
    return x ^ y;
  }

  /*
    x    =  1100 = 8 + 4 + 0 + 0 = 12
    ~x   =  0011 = 0 + 0 + 2 + 1 = 3 
  */
  function not(uint256 x) external pure returns (uint256) {
    return ~x;
  }

  /* 
  
  1 << 0 = 0001 --> 0001 = 1
  1 << 1 = 0001 --> 0010 = 2
  1 << 2 = 0001 --> 0100 = 4
  1 << 3 = 0001 --> 1000 = 8
  3 << 2 = 0011 --> 1100 = 12
  
  */
  function shiftLeft(uint256 x, uint256 bits) external pure returns (uint256) {
    return x << bits;
  }

  /*

  8  >> 0 = 1000 --> 1000 = 8
  8  >> 1 = 1000 --> 0100 = 4
  8  >> 2 = 1000 --> 0010 = 2
  8  >> 3 = 1000 --> 0001 = 1
  8  >> 4 = 1000 --> 0000 = 0
  12 >> 1 = 1100 --> 0110 = 6

  */
  function shiftRight(uint256 x, uint256 bits) external pure returns (uint256) {
    return x >> bits;
  }
}
