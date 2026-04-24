using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MaximusWebAPI.Models
{
  

    public class CorrespondenceSearchResult
    {
        public int CorrespondenceId { get; set; }
        public string Subject { get; set; }

        public string MedicaidId { get; set; }
        public string RegId { get; set; }
        public string ProviderId { get; set; }
        public string Npi { get; set; }

        public DateTime DateAvailableFrom { get; set; }
        public DateTime DateAvailableTo { get; set; }
    }


    public class PageRequest
    {
        public int Page { get; set; }
        public int PageSize { get; set; }
    }

    public class CorrespondenceGridRequest
    {
        public CorrespondenceSearchRequest SearchModel { get; set; }
        public PageRequest Page { get; set; }
    }

    public class PagedResult<T>
    {
        public List<T> Data { get; set; }
        public int Total { get; set; }
    }

    public class BaseFilterRequest
    {
        public int Page { get; set; } = 1;
        public int PageSize { get; set; } = 10;

        public string? SortKey { get; set; }
        public bool SortAsc { get; set; } = true;
        public string? SearchText { get; set; }

        public List<Filter> Filters { get; set; } = new List<Filter>();
    }

    public class Filter
    {
        public string Column { get; set; }
        public string Operator { get; set; }
        public string Value { get; set; }
    }

    public class CorrespondenceSearchRequest : BaseFilterRequest
    {
        public string RegId { get; set; }
        public string ProviderId { get; set; }
        public string Npi { get; set; }

        public DateTime? DateFrom { get; set; }
        public DateTime? DateTo { get; set; }
    }
}