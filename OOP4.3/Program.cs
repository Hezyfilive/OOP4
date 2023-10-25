namespace OOP4._3;

class Program
{
    static void Main()
    {
        string startDirectory = Environment.CurrentDirectory;
        int minLength = 3;
        
        SearchFiles(startDirectory, minLength);
    }

    static void SearchFiles(string directory, int minLength)
    {
        try
        {
            string[] files = Directory.GetFiles(directory);

            foreach (string file in files)
            {
                FileInfo fileInfo = new FileInfo(file);

                if (fileInfo.Name.Length > minLength)
                {
                    Console.WriteLine($"Path: {fileInfo.FullName}");
                    Console.WriteLine($"File name: {fileInfo.Name}");
                    Console.WriteLine($"File size (bytes): {fileInfo.Length}");
                    Console.WriteLine($"Last access: {fileInfo.LastAccessTime}");
                    Console.WriteLine();
                }
            }
            
            string[] subdirectories = Directory.GetDirectories(directory);
            foreach (string subdirectory in subdirectories)
            {
                SearchFiles(subdirectory, minLength);
            }
        }
        catch (Exception e)
        {
            Console.WriteLine($"Error: {e.Message}");
        }
    }
}