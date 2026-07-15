declare module '@apiverve/binlookup' {
  export interface binlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface binlookupResponse {
    status: string;
    error: string | null;
    data: BINLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BINLookupData {
      bin:      null | string;
      brand:    null | string;
      type:     null | string;
      category: null | string;
      country:  null | string;
      issuer:   Issuer;
      location: Location;
  }
  
  interface Issuer {
      name:    null | string;
      country: null | string;
      phone:   null | string;
      website: null | string;
  }
  
  interface Location {
      latitude:  null | string;
      longitude: null | string;
      alpha2:    null | string;
      alpha3:    null | string;
  }

  export default class binlookupWrapper {
    constructor(options: binlookupOptions);

    execute(callback: (error: any, data: binlookupResponse | null) => void): Promise<binlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: binlookupResponse | null) => void): Promise<binlookupResponse>;
    execute(query?: Record<string, any>): Promise<binlookupResponse>;
  }
}
