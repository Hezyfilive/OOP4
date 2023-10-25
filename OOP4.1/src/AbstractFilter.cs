using System.Collections.Generic;
using System.Collections.ObjectModel;
using SportLibrary;

namespace OOP4._1;

public abstract class AbstractFilter : IFilter
{
    protected readonly PlayersGrid PlayersGrid = PlayersGrid.GetInstance();
    
    public abstract void Filter(string searchText);

    protected void SetGrid(List<Person<AdditionalMemberData>> collection)
    {
        var collectionObservable = new ObservableCollection<Person<AdditionalMemberData>>(collection);
        PlayersGrid.SetGridTemp(collectionObservable);
    }
}