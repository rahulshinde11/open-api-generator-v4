/*
 * OpenAPI Petstore
 *
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * API version: 1.0.0
 */

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package petstore
import (
	"time"
)
// Order struct for Order
type Order struct {
	Id int64 `json:"id,omitempty" xml:"id"`
	PetId int64 `json:"petId,omitempty" xml:"petId"`
	Quantity int32 `json:"quantity,omitempty" xml:"quantity"`
	ShipDate time.Time `json:"shipDate,omitempty" xml:"shipDate"`
	// Order Status
	Status string `json:"status,omitempty" xml:"status"`
	Complete bool `json:"complete,omitempty" xml:"complete"`
}
