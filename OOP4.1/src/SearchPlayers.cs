using System.Linq;

namespace OOP4._1;

public class SearchPlayers : AbstractFilter
{
    public override void Filter(string searchText)
    {
        var collection = PlayersGrid.GetCollection().ToList();
        
        collection = collection.Where(item => item.Name.ToLower().Equals(searchText.ToLower())).ToList();
        
        SetGrid(collection);
    }
}