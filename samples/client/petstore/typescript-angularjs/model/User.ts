/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import * as models from './models';

/**
 * A User who is purchasing from the pet store
 */
export interface User {
    "id"?: number;
    "username"?: string;
    "firstName"?: string;
    "lastName"?: string;
    "email"?: string;
    "password"?: string;
    "phone"?: string;
    /**
     * User Status
     */
    "userStatus"?: number;
}

