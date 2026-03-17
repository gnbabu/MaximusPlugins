namespace MaximusWebAPI.Models
{
    public class Report
    {
        public string CredentialingTaskType { get; set; }
        public DateTime StartDate { get; set; }
        public string ProviderType { get; set; }
        public string ProviderName { get; set; }
        public string ProviderSpecialty { get; set; }
        public string MedicaidId { get; set; }
        public DateTime ProviderNpi { get; set; }
        public string PrimaryCityState { get; set; }
        public string PrimaryCount { get; set; }
        public DateTime CommitDecision { get; set; }
    }
}
