using System.Linq;


namespace OOP4._1;

public class FilterPlayers : AbstractFilter
{

    public override void Filter(string searchText)
    {
        var collection = PlayersGrid.GetCollection().ToList();
        
        string[] parts = searchText.Split(' ');

        if (parts.Length == 2)
        {
            string propertyName = parts[0].ToLower();
            string filterValue = parts[1];

            switch (propertyName)
            {
                case "name":
                    collection = collection.Where(item => item.Name.ToLower().Contains(filterValue.ToLower())).ToList();
                    break;
                case "experience":
                {
                    string[] rangeParts = filterValue.Split('-');
                    if (rangeParts.Length == 2 && int.TryParse(rangeParts[0], out int minExperience) &&
                        int.TryParse(rangeParts[1], out int maxExperience))
                    {
                        collection = collection.Where(item =>
                            item.Experience >= minExperience && item.Experience <= maxExperience).ToList();
                    }
                    else if (int.TryParse(filterValue, out int experienceFilter))
                    {
                        collection = collection.Where(item => item.Experience == experienceFilter).ToList();
                    }
                    break;
                }
                case "number":
                    if (filterValue.Contains('-'))
                    {
                        string[] rangeParts = filterValue.Split('-');
                        if (rangeParts.Length == 2 && int.TryParse(rangeParts[0], out int minNumber) && int.TryParse(rangeParts[1], out int maxNumber))
                        {
                            collection = collection.Where(item => item.AdditionalData.Number >= minNumber && item.AdditionalData.Number <= maxNumber).ToList();
                        }
                    }
                    break;
                case "position":
                    collection = collection.Where(item => item.AdditionalData.Position.ToLower() == filterValue.ToLower()).ToList();
                    break;
                case "email":
                    collection = collection.Where(item => item.AdditionalData.Email.ToLower().Contains(filterValue.ToLower())).ToList();
                    break;
                case "phone":
                    collection = collection.Where(item => item.AdditionalData.Phone.Contains(filterValue)).ToList();
                    break;
            }

            SetGrid(collection);
        }
    }
}