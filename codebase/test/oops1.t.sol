
contract oops1Test{
    A a;
    
    function setUp() public {
        a = new A();
    }

    function testNormalFn() public {
        require(a.theNum() == 0, "must be zero at the start");
        foo.changeNum();
        require(a.theNum()==1,"number must increase by 1 only");
    }

    function testOtherFn() public {
        uint x = 4;
        require(a.theNum(x)==0,"must be zero at the start");
        a.changeNum();
        require(a.theNum()==x,"it needs to be increased by x");
    }
}