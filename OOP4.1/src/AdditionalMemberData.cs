using System;
using System.Windows.Media;
using System.Xml.Serialization;

namespace OOP4._1;

[Serializable]
public class AdditionalMemberData
{
    public string Character { get; set; }
    public int Number { get; set; }
    public string Position { get; set; }
    public string Email { get; set; }
    public string Phone { get; set; }
    
    [XmlIgnore]
    public Brush BgColor { get; set; }

    public AdditionalMemberData()
    {
    }
}