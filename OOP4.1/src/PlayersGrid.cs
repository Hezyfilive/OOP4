using System;
using System.Collections.ObjectModel;
using System.Linq;
using SportLibrary;
namespace OOP4._1;

public class PlayersGrid
{
    
    private ObservableCollection<Person<AdditionalMemberData>> _observableCollection = null!;
    
    private static PlayersGrid? _instance = null;
    
    public event EventHandler<ObservableCollection<Person<AdditionalMemberData>>>? GridEvent;
    public void LoadGrid()
    { 
        FootballClub<AdditionalMemberData> footballTeam = new();
        
        try
        {
            footballTeam.LoadFromXml("TeamData.xml");
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
            throw;
        }
        
        _observableCollection = new ObservableCollection<Person<AdditionalMemberData>>(footballTeam.GetMembers());
        
        GridEvent?.Invoke(this, _observableCollection);
    }

    public void SaveGrid()
    {
        FootballClub<AdditionalMemberData> footballTeam = new(_observableCollection.ToList());
        footballTeam.SaveToXml("TeamData.xml");
    }

    public void UpdateGrid(Person<AdditionalMemberData> person)
    {
        _observableCollection.Add(person);
        GridEvent?.Invoke(this, _observableCollection);
    }
    public void UpdateGrid(Person<AdditionalMemberData> person, int index)
    {
        _observableCollection[index] = person;
        GridEvent?.Invoke(this, _observableCollection);
    }
    
    public void UpdateGrid(ObservableCollection<Person<AdditionalMemberData>> persons)
    {
        foreach (var item in persons)
        {
            _observableCollection.Add(item);
        }
        GridEvent?.Invoke(this, _observableCollection);
    }
    public void UpdateGrid(FootballClub<AdditionalMemberData> footballTeam)
    {
        foreach (var item in footballTeam.GetMembers())
        {
            _observableCollection.Add(item);
        }
        GridEvent?.Invoke(this, _observableCollection);
    }
    public void SetGrid(ObservableCollection<Person<AdditionalMemberData>> collection)
    {
        _observableCollection = collection;
        GridEvent?.Invoke(this, _observableCollection);
    }

    public void SetGridTemp(ObservableCollection<Person<AdditionalMemberData>> collection)
    {
        GridEvent?.Invoke(this, collection);
    }

    public void RemoveFromGrid(int index)
    {
        _observableCollection.RemoveAt(index);
        GridEvent?.Invoke(this, _observableCollection);
    }

    public void ResetGrid()
    {
        GridEvent?.Invoke(this, _observableCollection);
    }
    public ObservableCollection<Person<AdditionalMemberData>> GetCollection()
    {
        return _observableCollection;
    }
    public static PlayersGrid GetInstance()
    {
        if (_instance == null)
        {
            _instance = new PlayersGrid();
        }

        return _instance;
    }
}