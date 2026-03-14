using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MaximusWebAPI.Models
{
    public class WorkHistory
    {
        public string EmployerName { get; set; }
        public string Address { get; set; }
        public string ZipCode { get; set; }
        public string Phone { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public string ReasonType { get; set; }
        public string ReasonText { get; set; }
    }
}