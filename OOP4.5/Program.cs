namespace OOP4._5;

public static class ListHelper
{
    public static List<int> FindPerfectSquares(List<int> numbers)
    {
        return numbers.Where(num => Math.Sqrt(num) % 1 == 0).ToList();
    }

    public static List<int> SortByAbsoluteValueDescending(List<int> numbers)
    {
        return numbers.OrderByDescending(num => Math.Abs(num)).ToList();
    }
}

class Program
{
    static void Main()
    {
        List<int> numbers = new List<int> { 25, 16, 9, 4, 1, -1, -4, -9, -16 };
        
        List<int> perfectSquares = ListHelper.FindPerfectSquares(numbers);
        Console.WriteLine("Exact squares:");
        foreach (int square in perfectSquares)
        {
            Console.WriteLine(square);
        }
        
        List<int> sortedByAbsoluteValue = ListHelper.SortByAbsoluteValueDescending(numbers);
        Console.WriteLine("Sorting by decreasing absolute values:");
        foreach (int num in sortedByAbsoluteValue)
        {
            Console.WriteLine(num);
        }
    }
}