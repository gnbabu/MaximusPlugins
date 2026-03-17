using MaximusWebAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MaximusWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReportsController : ControllerBase
    {
        private static List<Report> Reports = new List<Report>
        {
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 01, 10), ProviderType = "Provider Type A", ProviderName = "Provider A", ProviderSpecialty = "Specialty A", MedicaidId = "123456789", ProviderNpi = new DateTime(2024, 12, 12), PrimaryCityState = "City A", PrimaryCount = "Count A", CommitDecision = new DateTime(2023, 01, 15) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 02, 14), ProviderType = "Provider Type B", ProviderName = "Provider B", ProviderSpecialty = "Specialty B", MedicaidId = "234567890", ProviderNpi = new DateTime(2024, 11, 11), PrimaryCityState = "City B", PrimaryCount = "Count B", CommitDecision = new DateTime(2023, 02, 19) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 03, 20), ProviderType = "Provider Type C", ProviderName = "Provider C", ProviderSpecialty = "Specialty C", MedicaidId = "345678901", ProviderNpi = new DateTime(2024, 10, 10), PrimaryCityState = "City C", PrimaryCount = "Count C", CommitDecision = new DateTime(2023, 03, 25) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 04, 15), ProviderType = "Provider Type D", ProviderName = "Provider D", ProviderSpecialty = "Specialty D", MedicaidId = "456789012", ProviderNpi = new DateTime(2024, 09, 09), PrimaryCityState = "City D", PrimaryCount = "Count D", CommitDecision = new DateTime(2023, 04, 20) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 05, 10), ProviderType = "Provider Type E", ProviderName = "Provider E", ProviderSpecialty = "Specialty E", MedicaidId = "567890123", ProviderNpi = new DateTime(2024, 08, 08), PrimaryCityState = "City E", PrimaryCount = "Count E", CommitDecision = new DateTime(2023, 05, 15) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 06, 05), ProviderType = "Provider Type F", ProviderName = "Provider F", ProviderSpecialty = "Specialty F", MedicaidId = "678901234", ProviderNpi = new DateTime(2024, 07, 07), PrimaryCityState = "City F", PrimaryCount = "Count F", CommitDecision = new DateTime(2023, 06, 10) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 07, 15), ProviderType = "Provider Type G", ProviderName = "Provider G", ProviderSpecialty = "Specialty G", MedicaidId = "789012345", ProviderNpi = new DateTime(2024, 06, 06), PrimaryCityState = "City G", PrimaryCount = "Count G", CommitDecision = new DateTime(2023, 07, 20) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 08, 05), ProviderType = "Provider Type H", ProviderName = "Provider H", ProviderSpecialty = "Specialty H", MedicaidId = "890123456", ProviderNpi = new DateTime(2024, 05, 05), PrimaryCityState = "City H", PrimaryCount = "Count H", CommitDecision = new DateTime(2023, 08, 10) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 09, 12), ProviderType = "Provider Type I", ProviderName = "Provider I", ProviderSpecialty = "Specialty I", MedicaidId = "901234567", ProviderNpi = new DateTime(2024, 04, 04), PrimaryCityState = "City I", PrimaryCount = "Count I", CommitDecision = new DateTime(2023, 09, 17) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 10, 20), ProviderType = "Provider Type J", ProviderName = "Provider J", ProviderSpecialty = "Specialty J", MedicaidId = "012345678", ProviderNpi = new DateTime(2024, 03, 03), PrimaryCityState = "City J", PrimaryCount = "Count J", CommitDecision = new DateTime(2023, 10, 25) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 11, 10), ProviderType = "Provider Type K", ProviderName = "Provider K", ProviderSpecialty = "Specialty K", MedicaidId = "123456790", ProviderNpi = new DateTime(2024, 02, 02), PrimaryCityState = "City K", PrimaryCount = "Count K", CommitDecision = new DateTime(2023, 11, 15) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 12, 01), ProviderType = "Provider Type L", ProviderName = "Provider L", ProviderSpecialty = "Specialty L", MedicaidId = "234567891", ProviderNpi = new DateTime(2024, 01, 01), PrimaryCityState = "City L", PrimaryCount = "Count L", CommitDecision = new DateTime(2023, 12, 06) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 01, 20), ProviderType = "Provider Type M", ProviderName = "Provider M", ProviderSpecialty = "Specialty M", MedicaidId = "345678902", ProviderNpi = new DateTime(2024, 12, 20), PrimaryCityState = "City M", PrimaryCount = "Count M", CommitDecision = new DateTime(2023, 01, 25) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 02, 10), ProviderType = "Provider Type N", ProviderName = "Provider N", ProviderSpecialty = "Specialty N", MedicaidId = "456789013", ProviderNpi = new DateTime(2024, 11, 15), PrimaryCityState = "City N", PrimaryCount = "Count N", CommitDecision = new DateTime(2023, 02, 15) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 03, 05), ProviderType = "Provider Type O", ProviderName = "Provider O", ProviderSpecialty = "Specialty O", MedicaidId = "567890124", ProviderNpi = new DateTime(2024, 10, 10), PrimaryCityState = "City O", PrimaryCount = "Count O", CommitDecision = new DateTime(2023, 03, 10) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 04, 25), ProviderType = "Provider Type P", ProviderName = "Provider P", ProviderSpecialty = "Specialty P", MedicaidId = "678901235", ProviderNpi = new DateTime(2024, 09, 05), PrimaryCityState = "City P", PrimaryCount = "Count P", CommitDecision = new DateTime(2023, 04, 30) },
            new Report { CredentialingTaskType = "License Verification", StartDate = new DateTime(2023, 05, 30), ProviderType = "Provider Type Q", ProviderName = "Provider Q", ProviderSpecialty = "Specialty Q", MedicaidId = "789012346", ProviderNpi = new DateTime(2024, 08, 15), PrimaryCityState = "City Q", PrimaryCount = "Count Q", CommitDecision = new DateTime(2023, 06, 04) }
        };


        // GET: api/reports?startDate=2023-01-01&endDate=2023-12-31

        //[FromQuery] DateTime startDate, [FromQuery] DateTime endDate
        [HttpGet("reports-by-date-range")]
        public IActionResult GetReportsByDateRange()
        {
            //var filteredReports = Reports.Where(r => r.StartDate >= startDate && r.StartDate <= endDate).ToList();

            //if (!filteredReports.Any())
            //{
            //    return NotFound("No reports found within the given date range.");
            //}

            return Ok(Reports);
        }

    }
}
