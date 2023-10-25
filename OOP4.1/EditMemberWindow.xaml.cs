using System;
using System.Windows;
using SportLibrary;

namespace OOP4._1;

public partial class EditMemberWindow
{
    public Person<AdditionalMemberData> EditedMember { get; set; }
    public EditMemberWindow()
    {
        InitializeComponent();
        var member = new Person<AdditionalMemberData>
        {
            AdditionalData = new AdditionalMemberData()
        };
        EditedMember = member;
        DataContext = EditedMember;
    }
    public EditMemberWindow(Person<AdditionalMemberData> member)
    {
        InitializeComponent();
        EditedMember = member;
        DataContext = EditedMember;
    }
    

    private void SaveButton_Click(object sender, RoutedEventArgs e)
    {
        DialogResult = true;
        Close();
    }

    private void CloseButton_Click(object sender, RoutedEventArgs e)
    {
        Close();
    }
}