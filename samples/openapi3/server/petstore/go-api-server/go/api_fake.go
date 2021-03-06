/*
 * OpenAPI Petstore
 *
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * API version: 1.0.0
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package petstoreserver

import (
	"encoding/json"
	"net/http"
	"strings"

	"github.com/gorilla/mux"
)

// A FakeApiController binds http requests to an api service and writes the service results to the http response
type FakeApiController struct {
	service FakeApiServicer
}

// NewFakeApiController creates a default api controller
func NewFakeApiController(s FakeApiServicer) Router {
	return &FakeApiController{ service: s }
}

// Routes returns all of the api route for the FakeApiController
func (c *FakeApiController) Routes() Routes {
	return Routes{ 
		{
			"FakeHealthGet",
			strings.ToUpper("Get"),
			"/v2/fake/health",
			c.FakeHealthGet,
		},
		{
			"FakeOuterBooleanSerialize",
			strings.ToUpper("Post"),
			"/v2/fake/outer/boolean",
			c.FakeOuterBooleanSerialize,
		},
		{
			"FakeOuterCompositeSerialize",
			strings.ToUpper("Post"),
			"/v2/fake/outer/composite",
			c.FakeOuterCompositeSerialize,
		},
		{
			"FakeOuterNumberSerialize",
			strings.ToUpper("Post"),
			"/v2/fake/outer/number",
			c.FakeOuterNumberSerialize,
		},
		{
			"FakeOuterStringSerialize",
			strings.ToUpper("Post"),
			"/v2/fake/outer/string",
			c.FakeOuterStringSerialize,
		},
		{
			"TestBodyWithFileSchema",
			strings.ToUpper("Put"),
			"/v2/fake/body-with-file-schema",
			c.TestBodyWithFileSchema,
		},
		{
			"TestBodyWithQueryParams",
			strings.ToUpper("Put"),
			"/v2/fake/body-with-query-params",
			c.TestBodyWithQueryParams,
		},
		{
			"TestClientModel",
			strings.ToUpper("Patch"),
			"/v2/fake",
			c.TestClientModel,
		},
		{
			"TestEndpointParameters",
			strings.ToUpper("Post"),
			"/v2/fake",
			c.TestEndpointParameters,
		},
		{
			"TestEnumParameters",
			strings.ToUpper("Get"),
			"/v2/fake",
			c.TestEnumParameters,
		},
		{
			"TestGroupParameters",
			strings.ToUpper("Delete"),
			"/v2/fake",
			c.TestGroupParameters,
		},
		{
			"TestInlineAdditionalProperties",
			strings.ToUpper("Post"),
			"/v2/fake/inline-additionalProperties",
			c.TestInlineAdditionalProperties,
		},
		{
			"TestJsonFormData",
			strings.ToUpper("Get"),
			"/v2/fake/jsonFormData",
			c.TestJsonFormData,
		},
		{
			"TestQueryParameterCollectionFormat",
			strings.ToUpper("Put"),
			"/v2/fake/test-query-paramters",
			c.TestQueryParameterCollectionFormat,
		},
	}
}

// FakeHealthGet - Health check endpoint
func (c *FakeApiController) FakeHealthGet(w http.ResponseWriter, r *http.Request) { 
	result, err := c.service.FakeHealthGet()
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// FakeOuterBooleanSerialize - 
func (c *FakeApiController) FakeOuterBooleanSerialize(w http.ResponseWriter, r *http.Request) { 
	body := &bool{}
	if err := json.NewDecoder(r.Body).Decode(&body); err != nil {
		w.WriteHeader(500)
		return
	}
	
	result, err := c.service.FakeOuterBooleanSerialize(*body)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// FakeOuterCompositeSerialize - 
func (c *FakeApiController) FakeOuterCompositeSerialize(w http.ResponseWriter, r *http.Request) { 
	outerComposite := &OuterComposite{}
	if err := json.NewDecoder(r.Body).Decode(&outerComposite); err != nil {
		w.WriteHeader(500)
		return
	}
	
	result, err := c.service.FakeOuterCompositeSerialize(*outerComposite)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// FakeOuterNumberSerialize - 
func (c *FakeApiController) FakeOuterNumberSerialize(w http.ResponseWriter, r *http.Request) { 
	body := &float32{}
	if err := json.NewDecoder(r.Body).Decode(&body); err != nil {
		w.WriteHeader(500)
		return
	}
	
	result, err := c.service.FakeOuterNumberSerialize(*body)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// FakeOuterStringSerialize - 
func (c *FakeApiController) FakeOuterStringSerialize(w http.ResponseWriter, r *http.Request) { 
	body := &string{}
	if err := json.NewDecoder(r.Body).Decode(&body); err != nil {
		w.WriteHeader(500)
		return
	}
	
	result, err := c.service.FakeOuterStringSerialize(*body)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// TestBodyWithFileSchema - 
func (c *FakeApiController) TestBodyWithFileSchema(w http.ResponseWriter, r *http.Request) { 
	fileSchemaTestClass := &FileSchemaTestClass{}
	if err := json.NewDecoder(r.Body).Decode(&fileSchemaTestClass); err != nil {
		w.WriteHeader(500)
		return
	}
	
	result, err := c.service.TestBodyWithFileSchema(*fileSchemaTestClass)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// TestBodyWithQueryParams - 
func (c *FakeApiController) TestBodyWithQueryParams(w http.ResponseWriter, r *http.Request) { 
	query := r.URL.Query()
	query := query.Get("query")
	user := &User{}
	if err := json.NewDecoder(r.Body).Decode(&user); err != nil {
		w.WriteHeader(500)
		return
	}
	
	result, err := c.service.TestBodyWithQueryParams(query, *user)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// TestClientModel - To test \"client\" model
func (c *FakeApiController) TestClientModel(w http.ResponseWriter, r *http.Request) { 
	client := &Client{}
	if err := json.NewDecoder(r.Body).Decode(&client); err != nil {
		w.WriteHeader(500)
		return
	}
	
	result, err := c.service.TestClientModel(*client)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// TestEndpointParameters - Fake endpoint for testing various parameters ????????? ??????????????????????????? ?????? ?????? ????????? 
func (c *FakeApiController) TestEndpointParameters(w http.ResponseWriter, r *http.Request) { 
	err := r.ParseForm()
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	number := r.FormValue("number")
	double := r.FormValue("double")
	patternWithoutDelimiter := r.FormValue("patternWithoutDelimiter")
	byte_ := r.FormValue("byte_")
	integer := r.FormValue("integer")
	int32_ := r.FormValue("int32_")
	int64_, err := parseIntParameter( r.FormValue("int64_"))
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	float := r.FormValue("float")
	string_ := r.FormValue("string_")
	binary, err := ReadFormFileToTempFile(r, "binary")
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	date := r.FormValue("date")
	dateTime := r.FormValue("dateTime")
	password := r.FormValue("password")
	callback := r.FormValue("callback")
	result, err := c.service.TestEndpointParameters(number, double, patternWithoutDelimiter, byte_, integer, int32_, int64_, float, string_, binary, date, dateTime, password, callback)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// TestEnumParameters - To test enum parameters
func (c *FakeApiController) TestEnumParameters(w http.ResponseWriter, r *http.Request) { 
	err := r.ParseForm()
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	query := r.URL.Query()
	enumHeaderStringArray := r.Header.Get("enumHeaderStringArray")
	enumHeaderString := r.Header.Get("enumHeaderString")
	enumQueryStringArray := strings.Split(query.Get("enumQueryStringArray"), ",")
	enumQueryString := query.Get("enumQueryString")
	enumQueryInteger := query.Get("enumQueryInteger")
	enumQueryDouble := query.Get("enumQueryDouble")
	enumFormStringArray := r.FormValue("enumFormStringArray")
	enumFormString := r.FormValue("enumFormString")
	result, err := c.service.TestEnumParameters(enumHeaderStringArray, enumHeaderString, enumQueryStringArray, enumQueryString, enumQueryInteger, enumQueryDouble, enumFormStringArray, enumFormString)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// TestGroupParameters - Fake endpoint to test group parameters (optional)
func (c *FakeApiController) TestGroupParameters(w http.ResponseWriter, r *http.Request) { 
	query := r.URL.Query()
	requiredStringGroup := query.Get("requiredStringGroup")
	requiredBooleanGroup := r.Header.Get("requiredBooleanGroup")
	requiredInt64Group, err := parseIntParameter(query.Get("requiredInt64Group"))
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	stringGroup := query.Get("stringGroup")
	booleanGroup := r.Header.Get("booleanGroup")
	int64Group, err := parseIntParameter(query.Get("int64Group"))
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	result, err := c.service.TestGroupParameters(requiredStringGroup, requiredBooleanGroup, requiredInt64Group, stringGroup, booleanGroup, int64Group)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// TestInlineAdditionalProperties - test inline additionalProperties
func (c *FakeApiController) TestInlineAdditionalProperties(w http.ResponseWriter, r *http.Request) { 
	requestBody := &map[string]string{}
	if err := json.NewDecoder(r.Body).Decode(&requestBody); err != nil {
		w.WriteHeader(500)
		return
	}
	
	result, err := c.service.TestInlineAdditionalProperties(*requestBody)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// TestJsonFormData - test json serialization of form data
func (c *FakeApiController) TestJsonFormData(w http.ResponseWriter, r *http.Request) { 
	err := r.ParseForm()
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	param := r.FormValue("param")
	param2 := r.FormValue("param2")
	result, err := c.service.TestJsonFormData(param, param2)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}

// TestQueryParameterCollectionFormat - 
func (c *FakeApiController) TestQueryParameterCollectionFormat(w http.ResponseWriter, r *http.Request) { 
	query := r.URL.Query()
	pipe := strings.Split(query.Get("pipe"), ",")
	ioutil := strings.Split(query.Get("ioutil"), ",")
	http := strings.Split(query.Get("http"), ",")
	url := strings.Split(query.Get("url"), ",")
	context := strings.Split(query.Get("context"), ",")
	result, err := c.service.TestQueryParameterCollectionFormat(pipe, ioutil, http, url, context)
	if err != nil {
		w.WriteHeader(500)
		return
	}
	
	EncodeJSONResponse(result, nil, w)
}
