using MaximusWebAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MaximusWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CorrespondenceController : ControllerBase
    {

        private static readonly List<CorrespondenceSearchResult> MockData =
            new List<CorrespondenceSearchResult>
{
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 1,
        Subject = "Provider Credentialing – Initial Request",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 01, 01),
        DateAvailableTo = new DateTime(2024, 01, 05)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 2,
        Subject = "Provider Credentialing – Second Request",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 01, 10),
        DateAvailableTo = new DateTime(2024, 01, 15)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 3,
        Subject = "Provider Credentialing – Final Request",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 02, 01),
        DateAvailableTo = new DateTime(2024, 02, 05)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 4,
        Subject = "Revalidation Notice",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 02, 10),
        DateAvailableTo = new DateTime(2024, 02, 15)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 5,
        Subject = "Missing Documentation Notification",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 02, 20),
        DateAvailableTo = new DateTime(2024, 02, 25)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 6,
        Subject = "Enrollment Status Update",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 03, 01),
        DateAvailableTo = new DateTime(2024, 03, 05)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 7,
        Subject = "Application Returned – Action Required",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 03, 10),
        DateAvailableTo = new DateTime(2024, 03, 15)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 8,
        Subject = "DEA Information Required",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 03, 20),
        DateAvailableTo = new DateTime(2024, 03, 25)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 9,
        Subject = "CAQH Attestation Pending",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 04, 01),
        DateAvailableTo = new DateTime(2024, 04, 05)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 10,
        Subject = "Work History Clarification Required",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 04, 10),
        DateAvailableTo = new DateTime(2024, 04, 15)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 11,
        Subject = "Enrollment Approval Notification",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 04, 20),
        DateAvailableTo = new DateTime(2024, 04, 25)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 12,
        Subject = "Revalidation Reminder",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 05, 01),
        DateAvailableTo = new DateTime(2024, 05, 05)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 13,
        Subject = "Credentialing Review in Progress",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 05, 10),
        DateAvailableTo = new DateTime(2024, 05, 15)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 14,
        Subject = "Additional Information Requested",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 05, 20),
        DateAvailableTo = new DateTime(2024, 05, 25)
    },
    new CorrespondenceSearchResult
    {
        CorrespondenceId = 15,
        Subject = "Provider Credentialing – Final Determination",
        MedicaidId = "987654321",
        RegId = "REG002",
        ProviderId = "PROV002",
        Npi = "1184662099",
        DateAvailableFrom = new DateTime(2024, 06, 01),
        DateAvailableTo = new DateTime(2024, 06, 05)
    }
};

        [HttpPost]
        [Route("search")]
        public IActionResult Search([FromBody] CorrespondenceSearchRequest request)
        {
            return Ok(MockData);
        }

    }
}
