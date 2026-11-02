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

        /// <summary>
        /// Optional IP address of the customer paying with the card. When given, customerIp says which country the IP is in and whether it matches the country that issued the card
        /// </summary>
        [JsonProperty("ip")]
        public string Ip { get; set; }
    }
}
