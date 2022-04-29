/*
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.File;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * InlineObject1
 */
@JsonPropertyOrder({
  InlineObject1.JSON_PROPERTY_ADDITIONAL_METADATA,
  InlineObject1.JSON_PROPERTY_FILE
})

public class InlineObject1   {
  public static final String JSON_PROPERTY_ADDITIONAL_METADATA = "additionalMetadata";
  @JsonProperty(JSON_PROPERTY_ADDITIONAL_METADATA)
  private String additionalMetadata;

  public static final String JSON_PROPERTY_FILE = "file";
  @JsonProperty(JSON_PROPERTY_FILE)
  private File file;

  public InlineObject1 additionalMetadata(String additionalMetadata) {
    this.additionalMetadata = additionalMetadata;
    return this;
  }

  /**
   * Additional data to pass to server
   * @return additionalMetadata
   **/
  @JsonProperty("additionalMetadata")
  @ApiModelProperty(value = "Additional data to pass to server")
  
  public String getAdditionalMetadata() {
    return additionalMetadata;
  }

  public void setAdditionalMetadata(String additionalMetadata) {
    this.additionalMetadata = additionalMetadata;
  }

  public InlineObject1 file(File file) {
    this.file = file;
    return this;
  }

  /**
   * file to upload
   * @return file
   **/
  @JsonProperty("file")
  @ApiModelProperty(value = "file to upload")
  
  public File getFile() {
    return file;
  }

  public void setFile(File file) {
    this.file = file;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject1 inlineObject1 = (InlineObject1) o;
    return Objects.equals(this.additionalMetadata, inlineObject1.additionalMetadata) &&
        Objects.equals(this.file, inlineObject1.file);
  }

  @Override
  public int hashCode() {
    return Objects.hash(additionalMetadata, file);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject1 {\n");
    
    sb.append("    additionalMetadata: ").append(toIndentedString(additionalMetadata)).append("\n");
    sb.append("    file: ").append(toIndentedString(file)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

