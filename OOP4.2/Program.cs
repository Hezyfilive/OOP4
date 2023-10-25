namespace OOP4._2;
class Program
{
    
    class SimpleFraction 
    {
    private int _numerator;
    private int _denominator;

    public SimpleFraction(int numerator, int denominator)
    {
        this._numerator = numerator;
        this._denominator = denominator;
    }

    public static SimpleFraction operator +(SimpleFraction a, SimpleFraction b)
    {
        int num = a._numerator * b._denominator + b._numerator * a._denominator;
        int den = a._denominator * b._denominator;
        return Simplify(new SimpleFraction(num, den));
    }

    public static SimpleFraction operator -(SimpleFraction a, SimpleFraction b)
    {
        int num = a._numerator * b._denominator - b._numerator * a._denominator;
        int den = a._denominator * b._denominator;
        return Simplify(new SimpleFraction(num, den));
    }

    public static SimpleFraction operator *(SimpleFraction a, SimpleFraction b)
    {
        int num = a._numerator * b._numerator;
        int den = a._denominator * b._denominator;
        return Simplify(new SimpleFraction(num, den));
    }

    public static SimpleFraction operator /(SimpleFraction a, SimpleFraction b)
    {
        int num = a._numerator * b._denominator;
        int den = a._denominator * b._numerator;
        return Simplify(new SimpleFraction(num, den));
    }
    public static SimpleFraction operator /(SimpleFraction a, int b)
    {
        int num = a._numerator;
        int den = a._denominator * b;
        return Simplify(new SimpleFraction(num, den));
    }
    public static SimpleFraction FromDouble(double value)
    {
        int num = (int)(value * 1000);
        int den = 1000;
        int gcd = GCD(num, den);
        return new SimpleFraction(num / gcd, den / gcd);
    }
    public double ToDouble()
    {
        return (double)_numerator / _denominator;
    }


    private static int GCD(int a, int b)
    {
        if (b == 0)
            return a;
        return GCD(b, a % b);
    }

    private static SimpleFraction Simplify(SimpleFraction fraction)
    {
        int gcd = GCD(fraction._numerator, fraction._denominator);
        return new SimpleFraction(fraction._numerator / gcd, fraction._denominator / gcd);
    }

    public override string ToString()
    {
        if (_denominator == 1)
        {
            return _numerator.ToString();
        }
        return $"{_numerator}/{_denominator}";
    }
    


    static class ArrayCalculator
    {
        public static SimpleFraction CalculateAverage(SimpleFraction[] array)
        {
            if (array.Length == 0)
                return new SimpleFraction(0, 1);

            SimpleFraction sum = SimpleFraction.FromDouble(0);
            int count = 0;

            foreach (var item in array)
            {
                sum += item;
                count++;
            }

            return count > 0 ? sum / count : new SimpleFraction(0, 1);
        }

        public static SimpleFraction CalculateProduct(SimpleFraction[] array)
        {
            if (array.Length == 0)
                return new SimpleFraction(0, 1);

            SimpleFraction product = SimpleFraction.FromDouble(1);

            foreach (var item in array)
            {
                product *= item;
            }

            return product;
        }

        public static double CalculateAverage(double[] array)
        {
            if (array.Length == 0)
                return 0.0;

            double sum = 0.0;

            foreach (var item in array)
            {
                sum += item;
            }

            return sum / array.Length;
        }

        public static double CalculateProduct(double[] array)
        {
            if (array.Length == 0)
                return 0.0;

            double product = 1.0;

            foreach (var item in array)
            {
                product *= item;
            }

            return product;
        }

    }

    public static dynamic CalculateProduct(object[] array)
        {
            if (array.Length == 0)
                return 0;

            dynamic product = 1;
            foreach (var item in array)
            {
                if (item is double)
                {
                    product *= SimpleFraction.FromDouble((double)item);
                }
                else if (item is SimpleFraction)
                {
                    product *= (SimpleFraction)item;
                }
                else
                {
                    throw new ArgumentException("Invalid array element type.");
                }
            }

            return product;
        }


        static void Main()
        {
            SimpleFraction fraction1 = new SimpleFraction(1, 2);
            SimpleFraction fraction2 = new SimpleFraction(3, 4);
            SimpleFraction sum = fraction1 + fraction2;
            SimpleFraction difference = fraction1 - fraction2;
            SimpleFraction product = fraction1 * fraction2;
            SimpleFraction division = fraction1 / fraction2;

            Console.WriteLine($"Sum: {sum}");
            Console.WriteLine($"Difference: {difference}");
            Console.WriteLine($"Product: {product}");
            Console.WriteLine($"Division: {division}");

            double[] doubleArray = { 1.5, 2.0, 3.5, 4.0 };
            SimpleFraction[] fractionArray = { new SimpleFraction(1, 2), new SimpleFraction(3, 4), new SimpleFraction(1, 5) };

            double averageDouble = ArrayCalculator.CalculateAverage(doubleArray);
            double productDouble = ArrayCalculator.CalculateProduct(doubleArray);

            SimpleFraction averageFraction = ArrayCalculator.CalculateAverage(fractionArray);
            SimpleFraction productFraction = ArrayCalculator.CalculateProduct(fractionArray);

            Console.WriteLine($"Average of double array: {averageDouble}");
            Console.WriteLine($"Product of double array: {productDouble}");
            Console.WriteLine($"Average of fraction array: {averageFraction}");
            Console.WriteLine($"Product of fraction array: {productFraction}");
        }
    }
}