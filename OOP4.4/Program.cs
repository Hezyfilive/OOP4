namespace OOP4._4
{
    public delegate double FunctionDelegate(double x);

    public abstract class RootFinder
    {
        private FunctionDelegate Function;

        protected RootFinder(FunctionDelegate function)
        {
            Function = function;
        }

        public void FindRoots(double start, double end, double step)
        {
            double x = start;
            double fx = Function(x);

            while (x <= end)
            {
                double nextX = x + step;
                double nextFx = Function(nextX);

                if (fx * nextFx < 0)
                {
                    double root = (x + nextX) / 2;
                    Console.WriteLine($"Root found at x = {root}");
                }

                x = nextX;
                fx = nextFx;
            }
        }
    }

    public class QuadraticEquationSolver : RootFinder
    {
        public QuadraticEquationSolver(double a, double b, double c) : base(x => a * x * x + b * x + c)
        {
        }
    }

    class Program
    {
        static void Main()
        {
            QuadraticEquationSolver solver = new QuadraticEquationSolver(1, -3, 2);
            solver.FindRoots(-10, 10, 0.1);
        }
    }
}