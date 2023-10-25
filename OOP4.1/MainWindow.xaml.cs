using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using SportLibrary;

namespace OOP4._1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        private readonly PlayersGrid _playersGrid = PlayersGrid.GetInstance();
        public MainWindow()
        {
            InitializeComponent();
            _playersGrid.GridEvent += OnGridDataChange;
            _playersGrid.LoadGrid();
        }
        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
        }
        
        private void Border_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            if (MembersDataGrid.SelectedItem is Person<AdditionalMemberData> selectedMember)
            {
                int index = _playersGrid.GetCollection().IndexOf(selectedMember);
                
                var copiedMember = new Person<AdditionalMemberData>
                {
                    Name = selectedMember.Name,
                    Experience = selectedMember.Experience,
                    AdditionalData = new AdditionalMemberData
                    {
                        Number = selectedMember.AdditionalData.Number,
                        Position = selectedMember.AdditionalData.Position,
                        Email = selectedMember.AdditionalData.Email,
                        Phone = selectedMember.AdditionalData.Phone
                    }
                };
                
                EditMemberWindow editMemberWindow = new EditMemberWindow(copiedMember);
                if (editMemberWindow.ShowDialog() == true)
                {
                    var editedMember = editMemberWindow.EditedMember;
                    _playersGrid.UpdateGrid(editedMember, index);
                }
            }
        }

        private void Logout_Click(object sender, RoutedEventArgs e)
        {
            _playersGrid.SaveGrid();
           Close();
        }

        private void OnGridDataChange(object? sender, ObservableCollection<Person<AdditionalMemberData>> collection)
        {
            MembersDataGrid.ItemsSource = null;
            Dictionary<char, Color> colors= GetUniqueColorsForLetters();
            foreach (var item in collection)
            {
                item.AdditionalData.Character = item.Name.ToLower()[0].ToString();
                var color = colors[item.Name.ToUpper()[0]];

                item.AdditionalData.BgColor = new SolidColorBrush(color);
            }
            MembersDataGrid.ItemsSource = collection;
        }

        private void TxtSearch_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                SearchButton_Click(sender, e);
            }
        }

        private void TxtFilter_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                FindButton_Click(sender, e);
            }
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            if (MembersDataGrid.SelectedItem is Person<AdditionalMemberData> selectedMember)
            {
                int index = _playersGrid.GetCollection().IndexOf(selectedMember);
                
                _playersGrid.RemoveFromGrid(index);
            }
        }

        private void AddPlayer_Click(object sender, RoutedEventArgs e)
        {
            EditMemberWindow editMemberWindow = new EditMemberWindow();
            if (editMemberWindow.ShowDialog() == true)
            {
                var editedMember = editMemberWindow.EditedMember;
                _playersGrid.UpdateGrid(editedMember);
            }
        }
        
        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            string text = TxtSearch.Text;
            if (TxtSearch.Text.Length == 0 || !char.IsLetter(TxtSearch.Text[0] ) )
            {
                _playersGrid.ResetGrid();
                return;
            }
            new SearchPlayers().Filter(text);
        }
        
        private void FindButton_Click(object sender, RoutedEventArgs e)
        {
            string searchText = TxtFilter.Text;
            if (searchText.StartsWith("order by", StringComparison.OrdinalIgnoreCase))
            {
                new SortPlayers().Filter(searchText.Substring(8).Trim());
            }else if(searchText.StartsWith("filter by", StringComparison.OrdinalIgnoreCase))
            {
                new FilterPlayers().Filter(searchText.Substring(9).Trim());
            }
            else
            {
                _playersGrid.ResetGrid();
            }
        }
        
        private static Dictionary<char, Color> GetUniqueColorsForLetters()
        {
            Dictionary<char, Color> letterColors = new Dictionary<char, Color>();
            
            List<Color> colors = new List<Color>
            {
                Colors.Red, Colors.Green, Colors.Blue, Colors.Orange, Colors.Purple,
                Colors.Yellow, Colors.Cyan, Colors.Magenta, Colors.Brown, Colors.Gray
            };
            
            for (int i = 0; i < 26; i++)
            {
                char letter = (char)('A' + i);
                letterColors[letter] = colors[i % colors.Count];
            }

            return letterColors;
        }
        
    }
}