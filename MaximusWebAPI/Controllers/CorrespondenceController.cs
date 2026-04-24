using MaximusWebAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MaximusWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CorrespondenceController : ControllerBase
    {

        //        private static readonly List<CorrespondenceSearchResult> MockData =
        //            new List<CorrespondenceSearchResult>
        //{
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 1,
        //        Subject = "Provider Credentialing – Initial Request",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 01, 01),
        //        DateAvailableTo = new DateTime(2024, 01, 05)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 2,
        //        Subject = "Provider Credentialing – Second Request",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 01, 10),
        //        DateAvailableTo = new DateTime(2024, 01, 15)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 3,
        //        Subject = "Provider Credentialing – Final Request",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 02, 01),
        //        DateAvailableTo = new DateTime(2024, 02, 05)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 4,
        //        Subject = "Revalidation Notice",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 02, 10),
        //        DateAvailableTo = new DateTime(2024, 02, 15)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 5,
        //        Subject = "Missing Documentation Notification",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 02, 20),
        //        DateAvailableTo = new DateTime(2024, 02, 25)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 6,
        //        Subject = "Enrollment Status Update",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 03, 01),
        //        DateAvailableTo = new DateTime(2024, 03, 05)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 7,
        //        Subject = "Application Returned – Action Required",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 03, 10),
        //        DateAvailableTo = new DateTime(2024, 03, 15)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 8,
        //        Subject = "DEA Information Required",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 03, 20),
        //        DateAvailableTo = new DateTime(2024, 03, 25)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 9,
        //        Subject = "CAQH Attestation Pending",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 04, 01),
        //        DateAvailableTo = new DateTime(2024, 04, 05)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 10,
        //        Subject = "Work History Clarification Required",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 04, 10),
        //        DateAvailableTo = new DateTime(2024, 04, 15)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 11,
        //        Subject = "Enrollment Approval Notification",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 04, 20),
        //        DateAvailableTo = new DateTime(2024, 04, 25)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 12,
        //        Subject = "Revalidation Reminder",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 05, 01),
        //        DateAvailableTo = new DateTime(2024, 05, 05)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 13,
        //        Subject = "Credentialing Review in Progress",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 05, 10),
        //        DateAvailableTo = new DateTime(2024, 05, 15)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 14,
        //        Subject = "Additional Information Requested",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 05, 20),
        //        DateAvailableTo = new DateTime(2024, 05, 25)
        //    },
        //    new CorrespondenceSearchResult
        //    {
        //        CorrespondenceId = 15,
        //        Subject = "Provider Credentialing – Final Determination",
        //        MedicaidId = "987654321",
        //        RegId = "REG002",
        //        ProviderId = "PROV002",
        //        Npi = "1184662099",
        //        DateAvailableFrom = new DateTime(2024, 06, 01),
        //        DateAvailableTo = new DateTime(2024, 06, 05)
        //    }
        //};

        private static readonly List<CorrespondenceSearchResult> MockData = GenerateMockData(1000);

        private static List<CorrespondenceSearchResult> GenerateMockData(int count = 1000)
        {
            var list = new List<CorrespondenceSearchResult>();

            for (int i = 1; i <= count; i++)
            {
                list.Add(new CorrespondenceSearchResult
                {
                    CorrespondenceId = i,
                    Subject = $"Correspondence Subject {i}",
                    MedicaidId = $"MD{i:0000}",
                    RegId = $"REG{(i % 50 + 1):000}",
                    ProviderId = $"PROV{(i % 30 + 1):000}",
                    Npi = $"1{100000000 + i}",
                    DateAvailableFrom = DateTime.Today.AddDays(-i),
                    DateAvailableTo = DateTime.Today.AddDays(i % 30)
                });
            }

            return list;
        }

        private IQueryable<CorrespondenceSearchResult> ApplyFilters(
    IQueryable<CorrespondenceSearchResult> query,
    List<Filter> filters)
        {
            if (filters == null || !filters.Any())
                return query;

            foreach (var f in filters)
            {
                if (string.IsNullOrEmpty(f.Value)) continue;

                switch (f.Column?.ToLower())
                {
                    case "subject":
                        query = ApplyStringFilter(query, x => x.Subject, f);
                        break;

                    case "medicaidid":
                        query = ApplyStringFilter(query, x => x.MedicaidId, f);
                        break;

                    case "regid":
                        query = ApplyStringFilter(query, x => x.RegId, f);
                        break;

                    case "providerid":
                        query = ApplyStringFilter(query, x => x.ProviderId, f);
                        break;

                    case "npi":
                        query = ApplyStringFilter(query, x => x.Npi, f);
                        break;

                    case "dateavailablefrom":
                        query = ApplyDateFilter(query, x => x.DateAvailableFrom, f);
                        break;

                    case "dateavailableto":
                        query = ApplyDateFilter(query, x => x.DateAvailableTo, f);
                        break;
                }
            }

            return query;
        }

        private IQueryable<CorrespondenceSearchResult> ApplySorting(
    IQueryable<CorrespondenceSearchResult> query,
    string sortKey,
    bool sortAsc)
        {
            if (string.IsNullOrWhiteSpace(sortKey))
                return query.OrderByDescending(x => x.CorrespondenceId); // default

            switch (sortKey.ToLower())
            {
                case "subject":
                    return sortAsc ? query.OrderBy(x => x.Subject)
                                   : query.OrderByDescending(x => x.Subject);

                case "medicaidid":
                    return sortAsc ? query.OrderBy(x => x.MedicaidId)
                                   : query.OrderByDescending(x => x.MedicaidId);

                case "regid":
                    return sortAsc ? query.OrderBy(x => x.RegId)
                                   : query.OrderByDescending(x => x.RegId);

                case "providerid":
                    return sortAsc ? query.OrderBy(x => x.ProviderId)
                                   : query.OrderByDescending(x => x.ProviderId);

                case "npi":
                    return sortAsc ? query.OrderBy(x => x.Npi)
                                   : query.OrderByDescending(x => x.Npi);

                case "dateavailablefrom":
                    return sortAsc ? query.OrderBy(x => x.DateAvailableFrom)
                                   : query.OrderByDescending(x => x.DateAvailableFrom);

                case "dateavailableto":
                    return sortAsc ? query.OrderBy(x => x.DateAvailableTo)
                                   : query.OrderByDescending(x => x.DateAvailableTo);

                default:
                    return query; // fallback (no crash)
            }
        }

        private IQueryable<CorrespondenceSearchResult> ApplyStringFilter(
    IQueryable<CorrespondenceSearchResult> query,
    Func<CorrespondenceSearchResult, string> selector,
    Filter f)
        {
            var val = f.Value.ToLower();

            return f.Operator switch
            {
                "eq" => query.Where(x => selector(x).ToLower() == val),
                "neq" => query.Where(x => selector(x).ToLower() != val),
                "contains" => query.Where(x => selector(x).ToLower().Contains(val)),
                "startsWith" => query.Where(x => selector(x).ToLower().StartsWith(val)),
                "endsWith" => query.Where(x => selector(x).ToLower().EndsWith(val)),
                _ => query
            };
        }

        private IQueryable<CorrespondenceSearchResult> ApplyDateFilter(
    IQueryable<CorrespondenceSearchResult> query,
    Func<CorrespondenceSearchResult, DateTime> selector,
    Filter f)
        {
            var parts = f.Value.Split('|');

            DateTime.TryParse(parts[0], out var d1);
            DateTime.TryParse(parts.Length > 1 ? parts[1] : null, out var d2);

            return f.Operator switch
            {
                "eq" => query.Where(x => selector(x).Date == d1.Date),
                "lt" => query.Where(x => selector(x).Date < d1.Date),
                "gt" => query.Where(x => selector(x).Date > d1.Date),
                "lte" => query.Where(x => selector(x).Date <= d1.Date),
                "gte" => query.Where(x => selector(x).Date >= d1.Date),
                "between" => query.Where(x => selector(x).Date >= d1.Date && selector(x).Date <= d2.Date),
                _ => query
            };
        }

        [HttpPost]
        [Route("search")]
        public IActionResult Search([FromBody] CorrespondenceSearchRequest search)
        {
            var query = MockData.AsQueryable();

            // 🔥 1. BUSINESS FILTERS
            if (!string.IsNullOrEmpty(search.RegId))
                query = query.Where(x => x.RegId == search.RegId);

            if (!string.IsNullOrEmpty(search.ProviderId))
                query = query.Where(x => x.ProviderId == search.ProviderId);

            if (!string.IsNullOrEmpty(search.Npi))
                query = query.Where(x => x.Npi == search.Npi);

            if (search.DateFrom.HasValue)
                query = query.Where(x => x.DateAvailableFrom >= search.DateFrom.Value);

            if (search.DateTo.HasValue)
                query = query.Where(x => x.DateAvailableTo <= search.DateTo.Value);

            // 🔥 2. GLOBAL SEARCH (plugin → searchText)
            if (!string.IsNullOrWhiteSpace(search.SearchText))
            {
                var s = search.SearchText.ToLower();

                query = query.Where(x =>
                    x.Subject.ToLower().Contains(s) ||
                    x.MedicaidId.ToLower().Contains(s) ||
                    x.RegId.ToLower().Contains(s) ||
                    x.ProviderId.ToLower().Contains(s) ||
                    x.Npi.ToLower().Contains(s)
                );
            }

            // 🔥 3. COLUMN FILTERS (plugin filters[])
            query = ApplyFilters(query, search.Filters);

            // 🔥 4. TOTAL COUNT (before paging)
            var total = query.Count();

            // 🔥 5. SORTING
            query = ApplySorting(query, search.SortKey, search.SortAsc);

            // 🔥 6. PAGING
            var data = query
                .Skip((search.Page - 1) * search.PageSize)
                .Take(search.PageSize)
                .ToList();

            return Ok(new
            {
                data,
                total
            });
        }
    }
}
