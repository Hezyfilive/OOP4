using System.Xml;
using System.Xml.Serialization;

namespace SportLibrary;

[Serializable]
public class Person<T> : IComparable<Person<T>>
{
    public string Name { get; set; }
    public T AdditionalData { get; set; }

    public uint Experience { get; set; }

    public Person()
    {
    }

    public Person(string name, T additionalData, uint experience)
    {
        Name = name;
        AdditionalData = additionalData;
        Experience = experience;
    }

    public override string ToString()
    {
        return $"Name: {Name}, AdditionalData: {AdditionalData}, Experience: {Experience}";
    }

    public override bool Equals(object obj)
    {
        if (GetType() != obj.GetType()) return false;

        Person<T> other = (Person<T>)obj;
        return Name == other.Name && EqualityComparer<T>.Default.Equals(AdditionalData, other.AdditionalData) && Experience == other.Experience;
    }

    public override int GetHashCode()
    {
        unchecked
        {
            var hash = 17;
            if (Name != null)
            {
                hash = hash * 23 + Name.GetHashCode();  
            }

            if (Experience != null)
            {
                hash = hash * 23 + Experience.GetHashCode();
            }
            
            hash = hash * 23 + AdditionalData.GetHashCode();
            
            return hash;
        }
    }
    
    public int CompareTo(Person<T> other)
    {
        int nameComparison = string.Compare(Name, other.Name, StringComparison.Ordinal);
        if (nameComparison != 0)
        {
            return nameComparison;
        }
        
        return Experience.CompareTo(other.Experience);
    }
}


public class SportsClub<T>
{
    protected SportsClub()
    {
        Members = new List<Person<T>>();
    }

    protected SportsClub(List<Person<T>> members)
    {
        Members = members;
    }

    internal List<Person<T>> Members { get; set; }

    protected void AddMember(Person<T> person)
    {
        Members.Add(person);
    }

    protected void RemoveMember(Person<T> person)
    {
        Members.Remove(person);
    }

    public List<Person<T>> FindByName(string name)
    {
        return Members.Where(member => member.Name == name).ToList();
    }

    public IEnumerable<Person<T>> GetMembers()
    {
        return Members.ToList();
    }

    public void SortByName()
    {
        Members = Members.OrderBy(member => member.Name).ToList();
    }

    public void SortByAdditionalData()
    {
        Members = Members.OrderBy(member => member.AdditionalData).ToList();
    }
    
    public void SortByExperience()
    {
        Members = Members.OrderBy(member => member.Experience).ToList();
    }

    public override string ToString()
    {
        return string.Join("\n", Members.Select(member => member.ToString()));
    }

    public void SaveToXml(string fileName)
    {
        using var writer = new XmlTextWriter(fileName, null);
        var serializer = new XmlSerializer(typeof(List<Person<T>>));
        serializer.Serialize(writer, MembersForSerialization);
    }

    public void LoadFromXml(string fileName)
    {
        if (!File.Exists(fileName)) return;
        using (var reader = new XmlTextReader(fileName))
        {
            var serializer = new XmlSerializer(typeof(List<Person<T>>));
            MembersForSerialization = (List<Person<T>>)serializer.Deserialize(reader);
        }
    }

    public List<Person<T>> FindByAdditionalData(Func<T, bool> predicate)
    {
        return Members.Where(member => predicate(member.AdditionalData)).ToList();
    }

    [XmlElement("Members")]
    public List<Person<T>> MembersForSerialization
    {
        get => Members;
        set => Members = value;
    }
    public void Sort(IComparer<Person<T>> comparer)
    {
        Members.Sort(comparer);
    }
}

public class FootballClub<T> : SportsClub<T>
{
    public FootballClub(List<Person<T>> members) : base(members)
    {
    }

    public FootballClub() : base()
    {
    }

    public static FootballClub<T> operator +(FootballClub<T> club, Person<T> person)
    {
        club.AddMember(person);
        return club;
    }

    public static FootballClub<T> operator -(FootballClub<T> club, Person<T> person)
    {
        club.RemoveMember(person);
        return club;
    }

    public static FootballClub<T> operator +(FootballClub<T> club, IEnumerable<Person<T>> persons)
    {
        foreach (var person in persons) club.AddMember(person);
        return club;
    }
}