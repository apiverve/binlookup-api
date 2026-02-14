using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BINLookup
{
    /// <summary>
    /// Query options for the BIN Lookup API
    /// </summary>
    public class BINLookupQueryOptions
    {
        /// <summary>
        /// The first six digits of the credit card number (BIN)
        /// </summary>
        [JsonProperty("bin")]
        public string Bin { get; set; }
    }
}
