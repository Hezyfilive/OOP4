using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace OOP4._6
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private int[,] array;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void CreateArray_Click(object sender, RoutedEventArgs e)
        {
            int rows = int.Parse(TxtRows.Text);
            int columns = int.Parse(TxtColumns.Text);

            array = new int[rows, columns];
            dataGrid.ItemsSource = CreateMatrixData(rows, columns);
            CreateColumns(columns);
            dataGrid.Visibility = Visibility.Visible;
        }



        private void FillRandom_Click(object sender, RoutedEventArgs e)
        {
            if (array != null)
            {
                Random random = new Random();
                List<MatrixRow> matrixData = (List<MatrixRow>)dataGrid.ItemsSource;

                for (int i = 0; i < array.GetLength(0); i++)
                {
                    for (int j = 0; j < array.GetLength(1); j++)
                    {
                        array[i, j] = random.Next(-1000, 1001);
                        matrixData[i].Row[j] = array[i, j];
                    }
                }
                dataGrid.Items.Refresh();
            }
        }



        private void CalculateSum_Click(object sender, RoutedEventArgs e)
        {
            if (array != null)
            {
                int sum = 0;
                for (int i = 0; i < array.GetLength(0); i++)
                {
                    int product = 1;
                    for (int j = 0; j < array.GetLength(1); j++)
                    {
                        product *= array[i, j];
                    }
                    sum += product;
                }
                ResultLabel.Content = "Результат: " + sum;
                if (ShowInDialog.IsChecked == true)
                {
                    MessageBox.Show(ResultLabel.Content.ToString(), "Результат");
                }
                else
                {
                    ResultLabel.Visibility = Visibility.Visible; 
                }
                
            }
        }

        private void ShowResult_Click(object sender, RoutedEventArgs e)
        {
            if (ShowInDialog.IsChecked == true)
            {
                MessageBox.Show(ResultLabel.Content.ToString(), "Результат");
            }
            else
            {
                ResultLabel.Visibility = Visibility.Visible;
            }
        }

        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
        
        private List<MatrixRow> CreateMatrixData(int rows, int columns)
        {
            List<MatrixRow> matrixData = new List<MatrixRow>();

            for (int i = 0; i < rows; i++)
            {
                int[] row = new int[columns];
                for (int j = 0; j < columns; j++)
                {
                    row[j] = 0; // You can initialize with default values here
                }
                matrixData.Add(new MatrixRow { Row = row });
            }

            return matrixData;
        }

        private void CreateColumns(int columns)
        {
            dataGrid.Columns.Clear();
            for (int i = 0; i < columns; i++)
            {
                DataGridTextColumn column = new DataGridTextColumn
                {
                    Header = $"Column {i + 1}",
                    Binding = new Binding($"Row[{i}]")
                };
                dataGrid.Columns.Add(column);
            }
        }

    }
    public class MatrixRow
    {
        public int[] Row { get; set; }
    }

}