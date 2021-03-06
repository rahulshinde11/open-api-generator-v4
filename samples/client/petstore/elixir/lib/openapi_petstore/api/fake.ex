# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenapiPetstore.Api.Fake do
  @moduledoc """
  API calls for all endpoints tagged `Fake`.
  """

  alias OpenapiPetstore.Connection
  import OpenapiPetstore.RequestBuilder


  @doc """
  creates an XmlItem
  this route creates an XmlItem

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - xml_item (XmlItem): XmlItem Body
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec create_xml_item(Tesla.Env.client, OpenapiPetstore.Model.XmlItem.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def create_xml_item(connection, xml_item, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/fake/create_xml_item")
    |> add_param(:body, :body, xml_item)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Test serialization of outer boolean types

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (boolean()): Input boolean as post body
  ## Returns

  {:ok, %OpenapiPetstore.Model.boolean(){}} on success
  {:error, info} on failure
  """
  @spec fake_outer_boolean_serialize(Tesla.Env.client, keyword()) :: {:ok, Boolean.t} | {:error, Tesla.Env.t}
  def fake_outer_boolean_serialize(connection, opts \\ []) do
    optional_params = %{
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/fake/outer/boolean")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Test serialization of object with outer number type

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (OuterComposite): Input composite as post body
  ## Returns

  {:ok, %OpenapiPetstore.Model.OuterComposite{}} on success
  {:error, info} on failure
  """
  @spec fake_outer_composite_serialize(Tesla.Env.client, keyword()) :: {:ok, OpenapiPetstore.Model.OuterComposite.t} | {:error, Tesla.Env.t}
  def fake_outer_composite_serialize(connection, opts \\ []) do
    optional_params = %{
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/fake/outer/composite")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenapiPetstore.Model.OuterComposite{}}
    ])
  end

  @doc """
  Test serialization of outer number types

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (float()): Input number as post body
  ## Returns

  {:ok, %OpenapiPetstore.Model.float(){}} on success
  {:error, info} on failure
  """
  @spec fake_outer_number_serialize(Tesla.Env.client, keyword()) :: {:ok, Float.t} | {:error, Tesla.Env.t}
  def fake_outer_number_serialize(connection, opts \\ []) do
    optional_params = %{
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/fake/outer/number")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Test serialization of outer string types

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (String.t): Input string as post body
  ## Returns

  {:ok, %OpenapiPetstore.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec fake_outer_string_serialize(Tesla.Env.client, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def fake_outer_string_serialize(connection, opts \\ []) do
    optional_params = %{
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/fake/outer/string")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  For this test, the body for this request much reference a schema named `File`.

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - body (FileSchemaTestClass): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec test_body_with_file_schema(Tesla.Env.client, OpenapiPetstore.Model.FileSchemaTestClass.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def test_body_with_file_schema(connection, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/fake/body-with-file-schema")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - query (String.t): 
  - body (User): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec test_body_with_query_params(Tesla.Env.client, String.t, OpenapiPetstore.Model.User.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def test_body_with_query_params(connection, query, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/fake/body-with-query-params")
    |> add_param(:query, :"query", query)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  To test \"client\" model
  To test \"client\" model

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - body (Client): client model
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %OpenapiPetstore.Model.Client{}} on success
  {:error, info} on failure
  """
  @spec test_client_model(Tesla.Env.client, OpenapiPetstore.Model.Client.t, keyword()) :: {:ok, OpenapiPetstore.Model.Client.t} | {:error, Tesla.Env.t}
  def test_client_model(connection, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/fake")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenapiPetstore.Model.Client{}}
    ])
  end

  @doc """
  Fake endpoint for testing various parameters  ?????????  ???????????????????????????  ?????? ?????? ?????????
  Fake endpoint for testing various parameters  ?????????  ???????????????????????????  ?????? ?????? ?????????

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - number (float()): None
  - double (float()): None
  - pattern_without_delimiter (String.t): None
  - byte (binary()): None
  - opts (KeywordList): [optional] Optional parameters
    - :integer (integer()): None
    - :int32 (integer()): None
    - :int64 (integer()): None
    - :float (float()): None
    - :string (String.t): None
    - :binary (String.t): None
    - :date (Date.t): None
    - :date_time (DateTime.t): None
    - :password (String.t): None
    - :callback (String.t): None
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec test_endpoint_parameters(Tesla.Env.client, float(), float(), String.t, binary(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def test_endpoint_parameters(connection, number, double, pattern_without_delimiter, byte, opts \\ []) do
    optional_params = %{
      :"integer" => :form,
      :"int32" => :form,
      :"int64" => :form,
      :"float" => :form,
      :"string" => :form,
      :"binary" => :form,
      :"date" => :form,
      :"dateTime" => :form,
      :"password" => :form,
      :"callback" => :form
    }
    %{}
    |> method(:post)
    |> url("/fake")
    |> add_param(:form, :"number", number)
    |> add_param(:form, :"double", double)
    |> add_param(:form, :"pattern_without_delimiter", pattern_without_delimiter)
    |> add_param(:form, :"byte", byte)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 400, false},
      { 404, false}
    ])
  end

  @doc """
  To test enum parameters
  To test enum parameters

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :enum_header_string_array ([String.t]): Header parameter enum test (string array)
    - :enum_header_string (String.t): Header parameter enum test (string)
    - :enum_query_string_array ([String.t]): Query parameter enum test (string array)
    - :enum_query_string (String.t): Query parameter enum test (string)
    - :enum_query_integer (integer()): Query parameter enum test (double)
    - :enum_query_double (float()): Query parameter enum test (double)
    - :enum_form_string_array ([String.t]): Form parameter enum test (string array)
    - :enum_form_string (String.t): Form parameter enum test (string)
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec test_enum_parameters(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def test_enum_parameters(connection, opts \\ []) do
    optional_params = %{
      :"enum_header_string_array" => :headers,
      :"enum_header_string" => :headers,
      :"enum_query_string_array" => :query,
      :"enum_query_string" => :query,
      :"enum_query_integer" => :query,
      :"enum_query_double" => :query,
      :"enum_form_string_array" => :form,
      :"enum_form_string" => :form
    }
    %{}
    |> method(:get)
    |> url("/fake")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 400, false},
      { 404, false}
    ])
  end

  @doc """
  Fake endpoint to test group parameters (optional)
  Fake endpoint to test group parameters (optional)

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - required_string_group (integer()): Required String in group parameters
  - required_boolean_group (boolean()): Required Boolean in group parameters
  - required_int64_group (integer()): Required Integer in group parameters
  - opts (KeywordList): [optional] Optional parameters
    - :string_group (integer()): String in group parameters
    - :boolean_group (boolean()): Boolean in group parameters
    - :int64_group (integer()): Integer in group parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec test_group_parameters(Tesla.Env.client, integer(), boolean(), integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def test_group_parameters(connection, required_string_group, required_boolean_group, required_int64_group, opts \\ []) do
    optional_params = %{
      :"string_group" => :query,
      :"boolean_group" => :headers,
      :"int64_group" => :query
    }
    %{}
    |> method(:delete)
    |> url("/fake")
    |> add_param(:query, :"required_string_group", required_string_group)
    |> add_param(:headers, :"required_boolean_group", required_boolean_group)
    |> add_param(:query, :"required_int64_group", required_int64_group)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 400, false}
    ])
  end

  @doc """
  test inline additionalProperties

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - param (%{optional(String.t) &#x3D;&gt; String.t}): request body
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec test_inline_additional_properties(Tesla.Env.client, %{optional(String.t) => String.t}, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def test_inline_additional_properties(connection, param, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/fake/inline-additionalProperties")
    |> add_param(:body, :body, param)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  test json serialization of form data

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - param (String.t): field1
  - param2 (String.t): field2
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec test_json_form_data(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def test_json_form_data(connection, param, param2, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/fake/jsonFormData")
    |> add_param(:form, :"param", param)
    |> add_param(:form, :"param2", param2)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  To test the collection format in query parameters

  ## Parameters

  - connection (OpenapiPetstore.Connection): Connection to server
  - pipe ([String.t]): 
  - ioutil ([String.t]): 
  - http ([String.t]): 
  - url ([String.t]): 
  - context ([String.t]): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec test_query_parameter_collection_format(Tesla.Env.client, list(String.t), list(String.t), list(String.t), list(String.t), list(String.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def test_query_parameter_collection_format(connection, pipe, ioutil, http, url, context, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/fake/test-query-paramters")
    |> add_param(:query, :"pipe", pipe)
    |> add_param(:query, :"ioutil", ioutil)
    |> add_param(:query, :"http", http)
    |> add_param(:query, :"url", url)
    |> add_param(:query, :"context", context)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end
end
