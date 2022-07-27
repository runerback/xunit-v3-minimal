using System.Threading.Tasks;
using Xunit.Runner.InProc.SystemConsole;

namespace DeployTest
{
    public class Program
    {
        public static async Task<int> Main(string[] args)
        {
            return await ConsoleRunner.Run(args);
        }
    }
}