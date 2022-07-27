using Xunit;

namespace DeployTest
{
    public class Tests
    {
        [Fact]
        public void TestShouldFail()
        {
            Assert.Fail("for test");
        }
    }
}