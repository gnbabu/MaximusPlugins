using MaximusWebAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MaximusWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProviderGroupController : ControllerBase
    {
        [HttpGet("groups")]
        public IActionResult GetGroups()
        {
            var data = new List<ProviderGroup>
            {
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1083982888", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1750650776", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2024-02-19T12:26:18"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1053795088", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1689062440", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Driscoll Bathurst", Npi="1194215111", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1558851568", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1710477724", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1104572841", StartDate=DateTime.Parse("2022-04-01"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1467918938", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2024-02-24T16:33:59"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1588640791", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1003433384", StartDate=DateTime.Parse("2020-08-11"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1366428575", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Dante Gunn", Npi="1366741738", StartDate=DateTime.Parse("2019-08-27"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1750650776", StartDate=DateTime.Parse("2024-02-20"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"},
                new ProviderGroup{ GroupName="Romanth Foss", Npi="1467918938", StartDate=DateTime.Parse("2024-02-25"), EndDate=DateTime.Parse("2299-12-31"), Status="Confirmed"}
            };

            return Ok(data);
        }
    }
}
