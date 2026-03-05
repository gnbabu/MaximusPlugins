namespace MaximusWebAPI.Models
{
    public class ProviderGroup
    {
        public string GroupName { get; set; }
        public string Npi { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Status { get; set; }
    }
}
