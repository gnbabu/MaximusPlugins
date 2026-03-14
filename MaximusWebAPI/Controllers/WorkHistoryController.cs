using MaximusWebAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MaximusWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class WorkHistoryController : ControllerBase
    {
        [HttpGet]
        public IActionResult GetWorkHistory()
        {
            var workHistory = new List<WorkHistory>
            {
                new WorkHistory{ EmployerName="Employer A", Address="John Smith, 123 Main Street, NY", ZipCode="10001", Phone="111-000-0001", StartDate="01/01/2023", EndDate="Present", ReasonType="Reason for Departure", ReasonText="Better opportunity Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n"},
                new WorkHistory{ EmployerName="Employer B", Address="John Smith, 123 Main Street, NY", ZipCode="10002", Phone="111-000-0002", StartDate="01/01/2022", EndDate="12/31/2022", ReasonType="Reason for Departure", ReasonText="Career growth The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n"},
                new WorkHistory{ EmployerName="Employer C", Address="John Smith, 123 Main Street, NY", ZipCode="10003", Phone="111-000-0003", StartDate="01/01/2021", EndDate="12/31/2021", ReasonType="Reason for Departure", ReasonText="Relocation"},
                new WorkHistory{ EmployerName="Employer D", Address="John Smith, 123 Main Street, NY", ZipCode="10004", Phone="111-000-0004", StartDate="01/01/2020", EndDate="12/31/2020", ReasonType="Reason for Departure", ReasonText="Contract ended"},
                new WorkHistory{ EmployerName="Gap Record", Address="--", ZipCode="--", Phone="--", StartDate="01/01/2019", EndDate="06/01/2019", ReasonType="Reason for Gap", ReasonText="Personal reasons"},

                new WorkHistory{ EmployerName="Employer E", Address="John Smith, 456 Market Street, NY", ZipCode="10005", Phone="111-000-0005", StartDate="06/02/2019", EndDate="12/31/2019", ReasonType="Reason for Departure", ReasonText="Career switch"},
                new WorkHistory{ EmployerName="Employer F", Address="John Smith, 456 Market Street, NY", ZipCode="10006", Phone="111-000-0006", StartDate="01/01/2018", EndDate="12/31/2018", ReasonType="Reason for Departure", ReasonText="Better salary"},
                new WorkHistory{ EmployerName="Employer G", Address="John Smith, 456 Market Street, NY", ZipCode="10007", Phone="111-000-0007", StartDate="01/01/2017", EndDate="12/31/2017", ReasonType="Reason for Departure", ReasonText="Project completed"},
                new WorkHistory{ EmployerName="Employer H", Address="John Smith, 456 Market Street, NY", ZipCode="10008", Phone="111-000-0008", StartDate="01/01/2016", EndDate="12/31/2016", ReasonType="Reason for Departure", ReasonText="Company closure"},
                new WorkHistory{ EmployerName="Gap Record", Address="--", ZipCode="--", Phone="--", StartDate="01/01/2015", EndDate="05/01/2015", ReasonType="Reason for Gap", ReasonText="Family reasons"},

                new WorkHistory{ EmployerName="Employer I", Address="John Smith, 789 Park Ave, NY", ZipCode="10009", Phone="111-000-0009", StartDate="05/02/2015", EndDate="12/31/2015", ReasonType="Reason for Departure", ReasonText="Contract ended"},
                new WorkHistory{ EmployerName="Employer J", Address="John Smith, 789 Park Ave, NY", ZipCode="10010", Phone="111-000-0010", StartDate="01/01/2014", EndDate="12/31/2014", ReasonType="Reason for Departure", ReasonText="Relocation"},
                new WorkHistory{ EmployerName="Employer K", Address="John Smith, 789 Park Ave, NY", ZipCode="10011", Phone="111-000-0011", StartDate="01/01/2013", EndDate="12/31/2013", ReasonType="Reason for Departure", ReasonText="Career change"},
                new WorkHistory{ EmployerName="Employer L", Address="John Smith, 789 Park Ave, NY", ZipCode="10012", Phone="111-000-0012", StartDate="01/01/2012", EndDate="12/31/2012", ReasonType="Reason for Departure", ReasonText="New opportunity"},
                new WorkHistory{ EmployerName="Gap Record", Address="--", ZipCode="--", Phone="--", StartDate="01/01/2011", EndDate="04/01/2011", ReasonType="Reason for Gap", ReasonText="Education break"},

                new WorkHistory{ EmployerName="Employer M", Address="John Smith, 900 Broadway, NY", ZipCode="10013", Phone="111-000-0013", StartDate="04/02/2011", EndDate="12/31/2011", ReasonType="Reason for Departure", ReasonText="Better opportunity"},
                new WorkHistory{ EmployerName="Employer N", Address="John Smith, 900 Broadway, NY", ZipCode="10014", Phone="111-000-0014", StartDate="01/01/2010", EndDate="12/31/2010", ReasonType="Reason for Departure", ReasonText="Contract ended"},
                new WorkHistory{ EmployerName="Employer O", Address="John Smith, 900 Broadway, NY", ZipCode="10015", Phone="111-000-0015", StartDate="01/01/2009", EndDate="12/31/2009", ReasonType="Reason for Departure", ReasonText="Relocation"},
                new WorkHistory{ EmployerName="Employer P", Address="John Smith, 900 Broadway, NY", ZipCode="10016", Phone="111-000-0016", StartDate="01/01/2008", EndDate="12/31/2008", ReasonType="Reason for Departure", ReasonText="Project completed"},
                new WorkHistory{ EmployerName="Employer Q", Address="John Smith, 900 Broadway, NY", ZipCode="10017", Phone="111-000-0017", StartDate="01/01/2007", EndDate="12/31/2007", ReasonType="Reason for Departure", ReasonText="Better salary"}
            };

            return Ok(workHistory);
        }
    }
}
