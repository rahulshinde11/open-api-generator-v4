#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


#import "SWGTagManagedObject.h"
#import "SWGTag.h"

/**
* OpenAPI Petstore
* This is a sample server Petstore server. For this sample, you can use the api key \"special-key\" to test the authorization filters
*
* OpenAPI spec version: 1.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


@interface SWGTagManagedObjectBuilder : NSObject



-(SWGTagManagedObject*)createNewSWGTagManagedObjectInContext:(NSManagedObjectContext*)context;

-(SWGTagManagedObject*)SWGTagManagedObjectFromSWGTag:(SWGTag*)object context:(NSManagedObjectContext*)context;

-(void)updateSWGTagManagedObject:(SWGTagManagedObject*)object withSWGTag:(SWGTag*)object2;

-(SWGTag*)SWGTagFromSWGTagManagedObject:(SWGTagManagedObject*)obj;

-(void)updateSWGTag:(SWGTag*)object withSWGTagManagedObject:(SWGTagManagedObject*)object2;

@end
