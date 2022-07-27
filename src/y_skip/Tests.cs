using Xunit;

namespace DeployTest
{
    public class Tests
    {
        [Fact]
        public void TestShouldSkip()
        {
            Assert.Skip("for test");
        }
    }
}