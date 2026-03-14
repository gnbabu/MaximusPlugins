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
    new WorkHistory{ EmployerName="Employer A", Address="John Smith, 123 Main Street, NY", ZipCode="10001", Phone="111-000-0001",
        StartDate=DateTime.Now, EndDate=DateTime.Now, ReasonType="Reason for Departure",
        ReasonText="Better opportunity The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n"},

    new WorkHistory{ EmployerName="Employer B", Address="John Smith, 123 Main Street, NY", ZipCode="10002", Phone="111-000-0002",
        StartDate=new DateTime(2022,1,1), EndDate=new DateTime(2022,12,31),
        ReasonType="Reason for Departure", ReasonText="Career growth The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n"},

    new WorkHistory{ EmployerName="Employer C", Address="John Smith, 123 Main Street, NY", ZipCode="10003", Phone="111-000-0003",
        StartDate=new DateTime(2021,1,1), EndDate=new DateTime(2021,12,31),
        ReasonType="Reason for Departure", ReasonText="Relocation"},

    new WorkHistory{ EmployerName="Employer D", Address="John Smith, 123 Main Street, NY", ZipCode="10004", Phone="111-000-0004",
        StartDate=new DateTime(2020,1,1), EndDate=new DateTime(2020,12,31),
        ReasonType="Reason for Departure", ReasonText="Contract ended"},

    new WorkHistory{ EmployerName="Gap Record", Address="--", ZipCode="--", Phone="--",
        StartDate=new DateTime(2019,1,1), EndDate=new DateTime(2019,6,1),
        ReasonType="Reason for Gap", ReasonText="Personal reasons"},

    new WorkHistory{ EmployerName="Employer E", Address="John Smith, 456 Market Street, NY", ZipCode="10005", Phone="111-000-0005",
        StartDate=new DateTime(2019,6,2), EndDate=new DateTime(2019,12,31),
        ReasonType="Reason for Departure", ReasonText="Career switch The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n"},

    new WorkHistory{ EmployerName="Employer F", Address="John Smith, 456 Market Street, NY", ZipCode="10006", Phone="111-000-0006",
        StartDate=new DateTime(2018,1,1), EndDate=new DateTime(2018,12,31),
        ReasonType="Reason for Departure", ReasonText="Better salary"},

    new WorkHistory{ EmployerName="Employer G", Address="John Smith, 456 Market Street, NY", ZipCode="10007", Phone="111-000-0007",
        StartDate=new DateTime(2017,1,1), EndDate=new DateTime(2017,12,31),
        ReasonType="Reason for Departure", ReasonText="Project completed"},

    new WorkHistory{ EmployerName="Employer H", Address="John Smith, 456 Market Street, NY", ZipCode="10008", Phone="111-000-0008",
        StartDate=new DateTime(2016,1,1), EndDate=new DateTime(2016,12,31),
        ReasonType="Reason for Departure", ReasonText="Company closure"},

    new WorkHistory{ EmployerName="Gap Record", Address="--", ZipCode="--", Phone="--",
        StartDate=new DateTime(2015,1,1), EndDate=new DateTime(2015,5,1),
        ReasonType="Reason for Gap", ReasonText="Family reasons"},

    new WorkHistory{ EmployerName="Employer I", Address="John Smith, 789 Park Ave, NY", ZipCode="10009", Phone="111-000-0009",
        StartDate=new DateTime(2015,5,2), EndDate=new DateTime(2015,12,31),
        ReasonType="Reason for Departure", ReasonText="Contract ended"},

    new WorkHistory{ EmployerName="Employer J", Address="John Smith, 789 Park Ave, NY", ZipCode="10010", Phone="111-000-0010",
        StartDate=new DateTime(2014,1,1), EndDate=new DateTime(2014,12,31),
        ReasonType="Reason for Departure", ReasonText="Relocation"},

    new WorkHistory{ EmployerName="Employer K", Address="John Smith, 789 Park Ave, NY", ZipCode="10011", Phone="111-000-0011",
        StartDate=new DateTime(2013,1,1), EndDate=new DateTime(2013,12,31),
        ReasonType="Reason for Departure", ReasonText="Career change"},

    new WorkHistory{ EmployerName="Employer L", Address="John Smith, 789 Park Ave, NY", ZipCode="10012", Phone="111-000-0012",
        StartDate=new DateTime(2012,1,1), EndDate=new DateTime(2012,12,31),
        ReasonType="Reason for Departure", ReasonText="New opportunity"},

    new WorkHistory{ EmployerName="Gap Record", Address="--", ZipCode="--", Phone="--",
        StartDate=new DateTime(2011,1,1), EndDate=new DateTime(2011,4,1),
        ReasonType="Reason for Gap", ReasonText="Education break"},

    new WorkHistory{ EmployerName="Employer M", Address="John Smith, 900 Broadway, NY", ZipCode="10013", Phone="111-000-0013",
        StartDate=new DateTime(2011,4,2), EndDate=new DateTime(2011,12,31),
        ReasonType="Reason for Departure", ReasonText="Better opportunity"},

    new WorkHistory{ EmployerName="Employer N", Address="John Smith, 900 Broadway, NY", ZipCode="10014", Phone="111-000-0014",
        StartDate=new DateTime(2010,1,1), EndDate=new DateTime(2010,12,31),
        ReasonType="Reason for Departure", ReasonText="Contract ended"},

    new WorkHistory{ EmployerName="Employer O", Address="John Smith, 900 Broadway, NY", ZipCode="10015", Phone="111-000-0015",
        StartDate=new DateTime(2009,1,1), EndDate=new DateTime(2009,12,31),
        ReasonType="Reason for Departure", ReasonText="Relocation"},

    new WorkHistory{ EmployerName="Employer P", Address="John Smith, 900 Broadway, NY", ZipCode="10016", Phone="111-000-0016",
        StartDate=new DateTime(2008,1,1), EndDate=new DateTime(2008,12,31),
        ReasonType="Reason for Departure", ReasonText="Project completed"},

    new WorkHistory{ EmployerName="Employer Q", Address="John Smith, 900 Broadway, NY", ZipCode="10017", Phone="111-000-0017",
        StartDate=new DateTime(2007,1,1), EndDate=new DateTime(2007,12,31),
        ReasonType="Reason for Departure", ReasonText="Better salary"}
};

            return Ok(workHistory);
        }
    }
}
