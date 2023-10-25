using System;
using System.ComponentModel;
using System.Windows;
using OxyPlot;
using OxyPlot.Series;
using OxyPlot.Axes;

namespace OOP4._7
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        public PlotModel PlotModel { get; private set; }

        public event PropertyChangedEventHandler PropertyChanged;

        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
            InitializePlotModel();
        }

        private void InitializePlotModel()
        {
            PlotModel = new PlotModel
            {
                Title = "Trigonometric Function Plot",
            };

            var xaxis = new LinearAxis
            {
                Position = AxisPosition.Bottom,
                Title = "X",
            };
            var yaxis = new LinearAxis
            {
                Position = AxisPosition.Left,
                Title = "Y",
            };

            PlotModel.Axes.Add(xaxis);
            PlotModel.Axes.Add(yaxis);

            // Call UpdatePlot initially
            UpdatePlot();
        }

        private void PlotButton_Click(object sender, RoutedEventArgs e)
        {
            UpdatePlot();
        }
        
        private void ClosePlotButton_Click(object sender, RoutedEventArgs e)
        {
            plotView.Visibility = Visibility.Collapsed;
        }

        private void UpdatePlot()
        {
            PlotModel.Series.Clear();
            var selectedFunction = GetSelectedFunction();
            if (selectedFunction == null)
                return;

            double startX, endX;
            if (!double.TryParse(StartXTextBox.Text, out startX) || !double.TryParse(EndXTextBox.Text, out endX))
            {
                return;
            }

            var series = new FunctionSeries(selectedFunction, startX, endX, 0.01);
            PlotModel.Series.Add(series);

            OnPropertyChanged("PlotModel");
            plotView.InvalidatePlot(true);
            plotView.Visibility = Visibility.Visible;
        }

        private Func<double, double> GetSelectedFunction()
        {
            if (SineRadioButton.IsChecked == true)
                return x => Math.Sin(x);
            if (CosineRadioButton.IsChecked == true)
                return x => Math.Cos(x);
            if (TangentRadioButton.IsChecked == true)
                return x => Math.Tan(x);
            return null;
        }

        private void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}