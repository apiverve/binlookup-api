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
      number:   Number;
  }
  
  interface Issuer {
      name:    null | string;
      country: null | string;
      phone:   null | string;
      website: null | string;
  }
  
  interface Location {
      latitude:   null | string;
      longitude:  null | string;
      alpha2:     null | string;
      alpha3:     null | string;
      numeric:    null | string;
      currency:   null | string;
      currencies: (null | string)[];
      flag:       null | string;
  }
  
  interface Number {
      scheme:  null | string;
      lengths: (number | null)[];
      luhn:    boolean | null;
      code:    Code;
  }
  
  interface Code {
      name: null | string;
      size: number | null;
  }

  export default class binlookupWrapper {
    constructor(options: binlookupOptions);

    execute(callback: (error: any, data: binlookupResponse | null) => void): Promise<binlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: binlookupResponse | null) => void): Promise<binlookupResponse>;
    execute(query?: Record<string, any>): Promise<binlookupResponse>;
  }
}
