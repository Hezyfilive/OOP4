using System;
using System.Linq;

namespace OOP4._1;

public class SortPlayers : AbstractFilter
{
    public override void Filter(string searchText)
    {
        var collection = PlayersGrid.GetCollection().ToList();
        
        if (searchText.Equals("name", StringComparison.OrdinalIgnoreCase))
        {
            collection = collection.OrderBy(item => item.Name).ToList();
        }
        else if (searchText.Equals("experience", StringComparison.OrdinalIgnoreCase))
        {
            collection = collection.OrderBy(item => item.Experience).ToList();
        }
        else if (searchText.Equals("number", StringComparison.OrdinalIgnoreCase))
        {
            collection = collection.OrderBy(item => item.AdditionalData.Number).ToList();
        }
        else if (searchText.Equals("position", StringComparison.OrdinalIgnoreCase))
        {
            collection = collection.OrderBy(item => item.AdditionalData.Position).ToList();
        }
        else if (searchText.Equals("email", StringComparison.OrdinalIgnoreCase))
        {
            collection = collection.OrderBy(item => item.AdditionalData.Email).ToList();
        }
        else if (searchText.Equals("phone", StringComparison.OrdinalIgnoreCase))
        {
            collection = collection.OrderBy(item => item.AdditionalData.Phone).ToList();
        }
        
        SetGrid(collection);
    }
}