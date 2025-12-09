declare module '@apiverve/binlookup' {
  export interface binlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface binlookupResponse {
    status: string;
    error: string | null;
    data: BINLookupData;
    code?: number;
  }


  interface BINLookupData {
      bin:      string;
      brand:    string;
      type:     string;
      category: string;
      issuer:   Issuer;
      location: Location;
  }
  
  interface Issuer {
      name:    string;
      country: string;
      phone:   string;
      website: string;
  }
  
  interface Location {
      country:   string;
      latitude:  string;
      longitude: string;
      alpha2:    string;
      alpha3:    string;
  }

  export default class binlookupWrapper {
    constructor(options: binlookupOptions);

    execute(callback: (error: any, data: binlookupResponse | null) => void): Promise<binlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: binlookupResponse | null) => void): Promise<binlookupResponse>;
    execute(query?: Record<string, any>): Promise<binlookupResponse>;
  }
}
