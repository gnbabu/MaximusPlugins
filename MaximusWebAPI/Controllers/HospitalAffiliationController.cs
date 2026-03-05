using MaximusWebAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MaximusWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HospitalAffiliationController : ControllerBase
    {
        [HttpGet("list")]
        public IActionResult GetHospitalAffiliations()
        {
            var hospitalAffiliations = new List<HospitalAffiliationDTO>
        {
            new HospitalAffiliationDTO
            {
                FacilityName = "Freeport Sulphur",
                StaffCategory = "Active",
                StatusofPrivileges = "Full and unrestricted",
                Is_Primary_Facility = false,
                StartDate = DateTime.Parse("2020-09-01"),
                EndDate = null
            },
            new HospitalAffiliationDTO
            {
                FacilityName = "Seeger Refrigerator",
                StaffCategory = "Active",
                StatusofPrivileges = "Full and unrestricted",
                Is_Primary_Facility = true,
                StartDate = DateTime.Parse("2020-09-01"),
                EndDate = null
            },
            new HospitalAffiliationDTO
            {
                FacilityName = "Gilfillan Bros.",
                StaffCategory = "Active",
                StatusofPrivileges = "Full and unrestricted",
                Is_Primary_Facility = false,
                StartDate = DateTime.Parse("2020-09-01"),
                EndDate = null
            },
            new HospitalAffiliationDTO
            {
                FacilityName = "Baldwin-Lima-Hamilton",
                StaffCategory = "Active",
                StatusofPrivileges = "Full and unrestricted",
                Is_Primary_Facility = true,
                StartDate = null,
                EndDate = null
            }
        };
            hospitalAffiliations = new List<HospitalAffiliationDTO>();
            return Ok(hospitalAffiliations);
        }
    }
}
