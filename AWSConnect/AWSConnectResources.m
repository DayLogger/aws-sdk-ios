//
// Copyright 2010-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
// http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

#import "AWSConnectResources.h"
#import <AWSCore/AWSCocoaLumberjack.h>

@interface AWSConnectResources ()

@property (nonatomic, strong) NSDictionary *definitionDictionary;

@end

@implementation AWSConnectResources

+ (instancetype)sharedInstance {
    static AWSConnectResources *_sharedResources = nil;
    static dispatch_once_t once_token;

    dispatch_once(&once_token, ^{
        _sharedResources = [AWSConnectResources new];
    });

    return _sharedResources;
}

- (NSDictionary *)JSONObject {
    return self.definitionDictionary;
}

- (instancetype)init {
    if (self = [super init]) {
        //init method
        NSError *error = nil;
        _definitionDictionary = [NSJSONSerialization JSONObjectWithData:[[self definitionString] dataUsingEncoding:NSUTF8StringEncoding]
                                                                options:kNilOptions
                                                                  error:&error];
        if (_definitionDictionary == nil) {
            if (error) {
                AWSDDLogError(@"Failed to parse JSON service definition: %@",error);
            }
        }
    }
    return self;
}

- (NSString *)definitionString {
    return @"{\
  \"version\":\"2.0\",\
  \"metadata\":{\
    \"apiVersion\":\"2017-08-08\",\
    \"endpointPrefix\":\"connect\",\
    \"jsonVersion\":\"1.1\",\
    \"protocol\":\"rest-json\",\
    \"serviceAbbreviation\":\"Amazon Connect\",\
    \"serviceFullName\":\"Amazon Connect Service\",\
    \"serviceId\":\"Connect\",\
    \"signatureVersion\":\"v4\",\
    \"signingName\":\"connect\",\
    \"uid\":\"connect-2017-08-08\"\
  },\
  \"operations\":{\
    \"CreateUser\":{\
      \"name\":\"CreateUser\",\
      \"http\":{\
        \"method\":\"PUT\",\
        \"requestUri\":\"/users/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"CreateUserRequest\"},\
      \"output\":{\"shape\":\"CreateUserResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"DuplicateResourceException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Creates a user account for the specified Amazon Connect instance.</p>\"\
    },\
    \"DeleteUser\":{\
      \"name\":\"DeleteUser\",\
      \"http\":{\
        \"method\":\"DELETE\",\
        \"requestUri\":\"/users/{InstanceId}/{UserId}\"\
      },\
      \"input\":{\"shape\":\"DeleteUserRequest\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Deletes a user account from the specified Amazon Connect instance.</p>\"\
    },\
    \"DescribeUser\":{\
      \"name\":\"DescribeUser\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/users/{InstanceId}/{UserId}\"\
      },\
      \"input\":{\"shape\":\"DescribeUserRequest\"},\
      \"output\":{\"shape\":\"DescribeUserResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Describes the specified user account.</p>\"\
    },\
    \"DescribeUserHierarchyGroup\":{\
      \"name\":\"DescribeUserHierarchyGroup\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}\"\
      },\
      \"input\":{\"shape\":\"DescribeUserHierarchyGroupRequest\"},\
      \"output\":{\"shape\":\"DescribeUserHierarchyGroupResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Describes the specified hierarchy group.</p>\"\
    },\
    \"DescribeUserHierarchyStructure\":{\
      \"name\":\"DescribeUserHierarchyStructure\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/user-hierarchy-structure/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"DescribeUserHierarchyStructureRequest\"},\
      \"output\":{\"shape\":\"DescribeUserHierarchyStructureResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Describes the hierarchy structure of the specified Amazon Connect instance.</p>\"\
    },\
    \"GetContactAttributes\":{\
      \"name\":\"GetContactAttributes\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/contact/attributes/{InstanceId}/{InitialContactId}\"\
      },\
      \"input\":{\"shape\":\"GetContactAttributesRequest\"},\
      \"output\":{\"shape\":\"GetContactAttributesResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Retrieves the contact attributes for the specified contact.</p>\"\
    },\
    \"GetCurrentMetricData\":{\
      \"name\":\"GetCurrentMetricData\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/metrics/current/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"GetCurrentMetricDataRequest\"},\
      \"output\":{\"shape\":\"GetCurrentMetricDataResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InternalServiceException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"ResourceNotFoundException\"}\
      ],\
      \"documentation\":\"<p>Gets the real-time metric data from the specified Amazon Connect instance.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-reports.html\\\">Real-time Metrics Reports</a> in the <i>Amazon Connect Administrator Guide</i>.</p>\"\
    },\
    \"GetFederationToken\":{\
      \"name\":\"GetFederationToken\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/user/federate/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"GetFederationTokenRequest\"},\
      \"output\":{\"shape\":\"GetFederationTokenResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalServiceException\"},\
        {\"shape\":\"DuplicateResourceException\"}\
      ],\
      \"documentation\":\"<p>Retrieves a token for federation.</p>\"\
    },\
    \"GetMetricData\":{\
      \"name\":\"GetMetricData\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/metrics/historical/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"GetMetricDataRequest\"},\
      \"output\":{\"shape\":\"GetMetricDataResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InternalServiceException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"ResourceNotFoundException\"}\
      ],\
      \"documentation\":\"<p>Gets historical metric data from the specified Amazon Connect instance.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics.html\\\">Historical Metrics Reports</a> in the <i>Amazon Connect Administrator Guide</i>.</p>\"\
    },\
    \"ListContactFlows\":{\
      \"name\":\"ListContactFlows\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/contact-flows-summary/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"ListContactFlowsRequest\"},\
      \"output\":{\"shape\":\"ListContactFlowsResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Provides information about the contact flows for the specified Amazon Connect instance.</p>\"\
    },\
    \"ListHoursOfOperations\":{\
      \"name\":\"ListHoursOfOperations\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/hours-of-operations-summary/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"ListHoursOfOperationsRequest\"},\
      \"output\":{\"shape\":\"ListHoursOfOperationsResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Provides information about the hours of operation for the specified Amazon Connect instance.</p>\"\
    },\
    \"ListPhoneNumbers\":{\
      \"name\":\"ListPhoneNumbers\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/phone-numbers-summary/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"ListPhoneNumbersRequest\"},\
      \"output\":{\"shape\":\"ListPhoneNumbersResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Provides information about the phone numbers for the specified Amazon Connect instance.</p>\"\
    },\
    \"ListQueues\":{\
      \"name\":\"ListQueues\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/queues-summary/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"ListQueuesRequest\"},\
      \"output\":{\"shape\":\"ListQueuesResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Provides information about the queues for the specified Amazon Connect instance.</p>\"\
    },\
    \"ListRoutingProfiles\":{\
      \"name\":\"ListRoutingProfiles\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/routing-profiles-summary/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"ListRoutingProfilesRequest\"},\
      \"output\":{\"shape\":\"ListRoutingProfilesResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Provides summary information about the routing profiles for the specified Amazon Connect instance.</p>\"\
    },\
    \"ListSecurityProfiles\":{\
      \"name\":\"ListSecurityProfiles\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/security-profiles-summary/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"ListSecurityProfilesRequest\"},\
      \"output\":{\"shape\":\"ListSecurityProfilesResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Provides summary information about the security profiles for the specified Amazon Connect instance.</p>\"\
    },\
    \"ListUserHierarchyGroups\":{\
      \"name\":\"ListUserHierarchyGroups\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/user-hierarchy-groups-summary/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"ListUserHierarchyGroupsRequest\"},\
      \"output\":{\"shape\":\"ListUserHierarchyGroupsResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Provides summary information about the hierarchy groups for the specified Amazon Connect instance.</p>\"\
    },\
    \"ListUsers\":{\
      \"name\":\"ListUsers\",\
      \"http\":{\
        \"method\":\"GET\",\
        \"requestUri\":\"/users-summary/{InstanceId}\"\
      },\
      \"input\":{\"shape\":\"ListUsersRequest\"},\
      \"output\":{\"shape\":\"ListUsersResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Provides summary information about the users for the specified Amazon Connect instance.</p>\"\
    },\
    \"StartOutboundVoiceContact\":{\
      \"name\":\"StartOutboundVoiceContact\",\
      \"http\":{\
        \"method\":\"PUT\",\
        \"requestUri\":\"/contact/outbound-voice\"\
      },\
      \"input\":{\"shape\":\"StartOutboundVoiceContactRequest\"},\
      \"output\":{\"shape\":\"StartOutboundVoiceContactResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InternalServiceException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"DestinationNotAllowedException\"},\
        {\"shape\":\"OutboundContactNotPermittedException\"}\
      ],\
      \"documentation\":\"<p>Initiates a contact flow to place an outbound call to a customer.</p> <p>There is a 60 second dialing timeout for this operation. If the call is not connected after 60 seconds, it fails.</p>\"\
    },\
    \"StopContact\":{\
      \"name\":\"StopContact\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/contact/stop\"\
      },\
      \"input\":{\"shape\":\"StopContactRequest\"},\
      \"output\":{\"shape\":\"StopContactResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"ContactNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Ends the specified contact.</p>\"\
    },\
    \"UpdateContactAttributes\":{\
      \"name\":\"UpdateContactAttributes\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/contact/attributes\"\
      },\
      \"input\":{\"shape\":\"UpdateContactAttributesRequest\"},\
      \"output\":{\"shape\":\"UpdateContactAttributesResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Creates or updates the contact attributes associated with the specified contact.</p> <p>You can add or update attributes for both ongoing and completed contacts. For example, you can update the customer's name or the reason the customer called while the call is active, or add notes about steps that the agent took during the call that are displayed to the next agent that takes the call. You can also update attributes for a contact using data from your CRM application and save the data with the contact in Amazon Connect. You could also flag calls for additional analysis, such as legal review or identifying abusive callers.</p> <p>Contact attributes are available in Amazon Connect for 24 months, and are then deleted.</p> <p> <b>Important:</b> You cannot use the operation to update attributes for contacts that occurred prior to the release of the API, September 12, 2018. You can update attributes only for contacts that started after the release of the API. If you attempt to update attributes for a contact that occurred prior to the release of the API, a 400 error is returned. This applies also to queued callbacks that were initiated prior to the release of the API but are still active in your instance.</p>\"\
    },\
    \"UpdateUserHierarchy\":{\
      \"name\":\"UpdateUserHierarchy\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/users/{InstanceId}/{UserId}/hierarchy\"\
      },\
      \"input\":{\"shape\":\"UpdateUserHierarchyRequest\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Assigns the specified hierarchy group to the specified user.</p>\"\
    },\
    \"UpdateUserIdentityInfo\":{\
      \"name\":\"UpdateUserIdentityInfo\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/users/{InstanceId}/{UserId}/identity-info\"\
      },\
      \"input\":{\"shape\":\"UpdateUserIdentityInfoRequest\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Updates the identity information for the specified user.</p>\"\
    },\
    \"UpdateUserPhoneConfig\":{\
      \"name\":\"UpdateUserPhoneConfig\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/users/{InstanceId}/{UserId}/phone-config\"\
      },\
      \"input\":{\"shape\":\"UpdateUserPhoneConfigRequest\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Updates the phone configuration settings for the specified user.</p>\"\
    },\
    \"UpdateUserRoutingProfile\":{\
      \"name\":\"UpdateUserRoutingProfile\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/users/{InstanceId}/{UserId}/routing-profile\"\
      },\
      \"input\":{\"shape\":\"UpdateUserRoutingProfileRequest\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Assigns the specified routing profile to the specified user.</p>\"\
    },\
    \"UpdateUserSecurityProfiles\":{\
      \"name\":\"UpdateUserSecurityProfiles\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/users/{InstanceId}/{UserId}/security-profiles\"\
      },\
      \"input\":{\"shape\":\"UpdateUserSecurityProfilesRequest\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InternalServiceException\"}\
      ],\
      \"documentation\":\"<p>Assigns the specified security profiles to the specified user.</p>\"\
    }\
  },\
  \"shapes\":{\
    \"ARN\":{\"type\":\"string\"},\
    \"AfterContactWorkTimeLimit\":{\
      \"type\":\"integer\",\
      \"min\":0\
    },\
    \"AgentFirstName\":{\
      \"type\":\"string\",\
      \"max\":100,\
      \"min\":1\
    },\
    \"AgentLastName\":{\
      \"type\":\"string\",\
      \"max\":100,\
      \"min\":1\
    },\
    \"AgentUsername\":{\
      \"type\":\"string\",\
      \"max\":20,\
      \"min\":1,\
      \"pattern\":\"[a-zA-Z0-9\\\\_\\\\-\\\\.]+\"\
    },\
    \"AttributeName\":{\
      \"type\":\"string\",\
      \"max\":32767,\
      \"min\":1\
    },\
    \"AttributeValue\":{\
      \"type\":\"string\",\
      \"max\":32767,\
      \"min\":0\
    },\
    \"Attributes\":{\
      \"type\":\"map\",\
      \"key\":{\"shape\":\"AttributeName\"},\
      \"value\":{\"shape\":\"AttributeValue\"}\
    },\
    \"AutoAccept\":{\"type\":\"boolean\"},\
    \"Channel\":{\
      \"type\":\"string\",\
      \"enum\":[\"VOICE\"]\
    },\
    \"Channels\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"Channel\"},\
      \"max\":1\
    },\
    \"ClientToken\":{\
      \"type\":\"string\",\
      \"max\":500\
    },\
    \"Comparison\":{\
      \"type\":\"string\",\
      \"enum\":[\"LT\"]\
    },\
    \"ContactFlowId\":{\
      \"type\":\"string\",\
      \"max\":500\
    },\
    \"ContactFlowName\":{\"type\":\"string\"},\
    \"ContactFlowSummary\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"ContactFlowId\",\
          \"documentation\":\"<p>The identifier of the contact flow.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the contact flow.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"ContactFlowName\",\
          \"documentation\":\"<p>The name of the contact flow.</p>\"\
        },\
        \"ContactFlowType\":{\
          \"shape\":\"ContactFlowType\",\
          \"documentation\":\"<p>The type of contact flow.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains summary information about a contact flow.</p>\"\
    },\
    \"ContactFlowSummaryList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ContactFlowSummary\"}\
    },\
    \"ContactFlowType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"CONTACT_FLOW\",\
        \"CUSTOMER_QUEUE\",\
        \"CUSTOMER_HOLD\",\
        \"CUSTOMER_WHISPER\",\
        \"AGENT_HOLD\",\
        \"AGENT_WHISPER\",\
        \"OUTBOUND_WHISPER\",\
        \"AGENT_TRANSFER\",\
        \"QUEUE_TRANSFER\"\
      ]\
    },\
    \"ContactFlowTypes\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ContactFlowType\"},\
      \"max\":10\
    },\
    \"ContactId\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"min\":1\
    },\
    \"ContactNotFoundException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\
          \"shape\":\"Message\",\
          \"documentation\":\"<p>The message.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The contact with the specified ID is not active or does not exist.</p>\",\
      \"error\":{\"httpStatusCode\":410},\
      \"exception\":true\
    },\
    \"CreateUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Username\",\
        \"PhoneConfig\",\
        \"SecurityProfileIds\",\
        \"RoutingProfileId\",\
        \"InstanceId\"\
      ],\
      \"members\":{\
        \"Username\":{\
          \"shape\":\"AgentUsername\",\
          \"documentation\":\"<p>The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from [a-zA-Z0-9_-.\\\\@]+.</p>\"\
        },\
        \"Password\":{\
          \"shape\":\"Password\",\
          \"documentation\":\"<p>The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.</p>\"\
        },\
        \"IdentityInfo\":{\
          \"shape\":\"UserIdentityInfo\",\
          \"documentation\":\"<p>The information about the identity of the user.</p>\"\
        },\
        \"PhoneConfig\":{\
          \"shape\":\"UserPhoneConfig\",\
          \"documentation\":\"<p>The phone settings for the user.</p>\"\
        },\
        \"DirectoryUserId\":{\
          \"shape\":\"DirectoryUserId\",\
          \"documentation\":\"<p>The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory.</p> <p>This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned.</p>\"\
        },\
        \"SecurityProfileIds\":{\
          \"shape\":\"SecurityProfileIds\",\
          \"documentation\":\"<p>The identifier of the security profile for the user.</p>\"\
        },\
        \"RoutingProfileId\":{\
          \"shape\":\"RoutingProfileId\",\
          \"documentation\":\"<p>The identifier of the routing profile for the user.</p>\"\
        },\
        \"HierarchyGroupId\":{\
          \"shape\":\"HierarchyGroupId\",\
          \"documentation\":\"<p>The identifier of the hierarchy group for the user.</p>\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        }\
      }\
    },\
    \"CreateUserResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserId\":{\
          \"shape\":\"UserId\",\
          \"documentation\":\"<p>The identifier of the user account.</p>\"\
        },\
        \"UserArn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the user account.</p>\"\
        }\
      }\
    },\
    \"Credentials\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"SecurityToken\",\
          \"documentation\":\"<p>An access token generated for a federated user to access Amazon Connect.</p>\"\
        },\
        \"AccessTokenExpiration\":{\
          \"shape\":\"timestamp\",\
          \"documentation\":\"<p>A token generated with an expiration time for the session a user is logged in to Amazon Connect.</p>\"\
        },\
        \"RefreshToken\":{\
          \"shape\":\"SecurityToken\",\
          \"documentation\":\"<p>Renews a token generated for a user to access the Amazon Connect instance.</p>\"\
        },\
        \"RefreshTokenExpiration\":{\
          \"shape\":\"timestamp\",\
          \"documentation\":\"<p>Renews the expiration timer for a generated token.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains credentials to use for federation.</p>\"\
    },\
    \"CurrentMetric\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"CurrentMetricName\",\
          \"documentation\":\"<p>The name of the metric.</p>\"\
        },\
        \"Unit\":{\
          \"shape\":\"Unit\",\
          \"documentation\":\"<p>The unit for the metric.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about a real-time metric.</p>\"\
    },\
    \"CurrentMetricData\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Metric\":{\
          \"shape\":\"CurrentMetric\",\
          \"documentation\":\"<p>Information about the metric.</p>\"\
        },\
        \"Value\":{\
          \"shape\":\"Value\",\
          \"documentation\":\"<p>The value of the metric.</p>\",\
          \"box\":true\
        }\
      },\
      \"documentation\":\"<p>Contains the data for a real-time metric.</p>\"\
    },\
    \"CurrentMetricDataCollections\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"CurrentMetricData\"}\
    },\
    \"CurrentMetricName\":{\
      \"type\":\"string\",\
      \"documentation\":\"<p>The current metric names.</p>\",\
      \"enum\":[\
        \"AGENTS_ONLINE\",\
        \"AGENTS_AVAILABLE\",\
        \"AGENTS_ON_CALL\",\
        \"AGENTS_NON_PRODUCTIVE\",\
        \"AGENTS_AFTER_CONTACT_WORK\",\
        \"AGENTS_ERROR\",\
        \"AGENTS_STAFFED\",\
        \"CONTACTS_IN_QUEUE\",\
        \"OLDEST_CONTACT_AGE\",\
        \"CONTACTS_SCHEDULED\"\
      ]\
    },\
    \"CurrentMetricResult\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Dimensions\":{\
          \"shape\":\"Dimensions\",\
          \"documentation\":\"<p>The dimensions for the metrics.</p>\"\
        },\
        \"Collections\":{\
          \"shape\":\"CurrentMetricDataCollections\",\
          \"documentation\":\"<p>The set of metrics.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about a set of real-time metrics.</p>\"\
    },\
    \"CurrentMetricResults\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"CurrentMetricResult\"}\
    },\
    \"CurrentMetrics\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"CurrentMetric\"}\
    },\
    \"DeleteUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"InstanceId\",\
        \"UserId\"\
      ],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"UserId\":{\
          \"shape\":\"UserId\",\
          \"documentation\":\"<p>The identifier of the user.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"UserId\"\
        }\
      }\
    },\
    \"DescribeUserHierarchyGroupRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"HierarchyGroupId\",\
        \"InstanceId\"\
      ],\
      \"members\":{\
        \"HierarchyGroupId\":{\
          \"shape\":\"HierarchyGroupId\",\
          \"documentation\":\"<p>The identifier of the hierarchy group.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"HierarchyGroupId\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        }\
      }\
    },\
    \"DescribeUserHierarchyGroupResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"HierarchyGroup\":{\
          \"shape\":\"HierarchyGroup\",\
          \"documentation\":\"<p>Information about the hierarchy group.</p>\"\
        }\
      }\
    },\
    \"DescribeUserHierarchyStructureRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"InstanceId\"],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        }\
      }\
    },\
    \"DescribeUserHierarchyStructureResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"HierarchyStructure\":{\
          \"shape\":\"HierarchyStructure\",\
          \"documentation\":\"<p>Information about the hierarchy structure.</p>\"\
        }\
      }\
    },\
    \"DescribeUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserId\",\
        \"InstanceId\"\
      ],\
      \"members\":{\
        \"UserId\":{\
          \"shape\":\"UserId\",\
          \"documentation\":\"<p>The identifier of the user account.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"UserId\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        }\
      }\
    },\
    \"DescribeUserResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"User\":{\
          \"shape\":\"User\",\
          \"documentation\":\"<p>Information about the user account and configuration settings.</p>\"\
        }\
      }\
    },\
    \"DestinationNotAllowedException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\
          \"shape\":\"Message\",\
          \"documentation\":\"<p>The message.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Outbound calls to the destination number are not allowed.</p>\",\
      \"error\":{\"httpStatusCode\":403},\
      \"exception\":true\
    },\
    \"Dimensions\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Queue\":{\
          \"shape\":\"QueueReference\",\
          \"documentation\":\"<p>Information about the queue for which metrics are returned.</p>\"\
        },\
        \"Channel\":{\
          \"shape\":\"Channel\",\
          \"documentation\":\"<p>The channel used for grouping and filters.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about the dimensions for a set of metrics.</p>\"\
    },\
    \"DirectoryUserId\":{\"type\":\"string\"},\
    \"DuplicateResourceException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"Message\"}\
      },\
      \"documentation\":\"<p>A resource with the specified name already exists.</p>\",\
      \"error\":{\"httpStatusCode\":409},\
      \"exception\":true\
    },\
    \"Email\":{\"type\":\"string\"},\
    \"Filters\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Queues\":{\
          \"shape\":\"Queues\",\
          \"documentation\":\"<p>The queues to use to filter the metrics. You can specify up to 100 queues per request.</p>\"\
        },\
        \"Channels\":{\
          \"shape\":\"Channels\",\
          \"documentation\":\"<p>The channel to use to filter the metrics.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains the filter to apply when retrieving metrics.</p>\"\
    },\
    \"GetContactAttributesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"InstanceId\",\
        \"InitialContactId\"\
      ],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"InitialContactId\":{\
          \"shape\":\"ContactId\",\
          \"documentation\":\"<p>The identifier of the initial contact.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InitialContactId\"\
        }\
      }\
    },\
    \"GetContactAttributesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Attributes\":{\
          \"shape\":\"Attributes\",\
          \"documentation\":\"<p>Information about the attributes.</p>\"\
        }\
      }\
    },\
    \"GetCurrentMetricDataRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"InstanceId\",\
        \"Filters\",\
        \"CurrentMetrics\"\
      ],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"Filters\":{\
          \"shape\":\"Filters\",\
          \"documentation\":\"<p>The queues, up to 100, or channels, to use to filter the metrics returned. Metric data is retrieved only for the resources associated with the queues or channels included in the filter. You can include both queue IDs and queue ARNs in the same request. The only supported channel is <code>VOICE</code>.</p>\"\
        },\
        \"Groupings\":{\
          \"shape\":\"Groupings\",\
          \"documentation\":\"<p>The grouping applied to the metrics returned. For example, when grouped by <code>QUEUE</code>, the metrics returned apply to each queue rather than aggregated for all queues. If you group by <code>CHANNEL</code>, you should include a Channels filter. The only supported channel is <code>VOICE</code>.</p> <p>If no <code>Grouping</code> is included in the request, a summary of metrics is returned.</p>\"\
        },\
        \"CurrentMetrics\":{\
          \"shape\":\"CurrentMetrics\",\
          \"documentation\":\"<p>The metrics to retrieve. Specify the name and unit for each metric. The following metrics are available:</p> <dl> <dt>AGENTS_AFTER_CONTACT_WORK</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_AVAILABLE</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_ERROR</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_NON_PRODUCTIVE</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_ON_CALL</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_ONLINE</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_STAFFED</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>CONTACTS_IN_QUEUE</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>CONTACTS_SCHEDULED</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>OLDEST_CONTACT_AGE</dt> <dd> <p>Unit: SECONDS</p> </dd> </dl>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p> <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use the token must use the same request parameters as the request that generated the token.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResult100\",\
          \"documentation\":\"<p>The maximimum number of results to return per page.</p>\",\
          \"box\":true\
        }\
      }\
    },\
    \"GetCurrentMetricDataResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If there are additional results, this is the token for the next set of results.</p> <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use the token must use the same request parameters as the request that generated the token.</p>\"\
        },\
        \"MetricResults\":{\
          \"shape\":\"CurrentMetricResults\",\
          \"documentation\":\"<p>Information about the real-time metrics.</p>\"\
        },\
        \"DataSnapshotTime\":{\
          \"shape\":\"timestamp\",\
          \"documentation\":\"<p>The time at which the metrics were retrieved and cached for pagination.</p>\"\
        }\
      }\
    },\
    \"GetFederationTokenRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"InstanceId\"],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        }\
      }\
    },\
    \"GetFederationTokenResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Credentials\":{\
          \"shape\":\"Credentials\",\
          \"documentation\":\"<p>The credentials to use for federation.</p>\"\
        }\
      }\
    },\
    \"GetMetricDataRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"InstanceId\",\
        \"StartTime\",\
        \"EndTime\",\
        \"Filters\",\
        \"HistoricalMetrics\"\
      ],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"StartTime\":{\
          \"shape\":\"timestamp\",\
          \"documentation\":\"<p>The timestamp, in UNIX Epoch time format, at which to start the reporting interval for the retrieval of historical metrics data. The time must be specified using a multiple of 5 minutes, such as 10:05, 10:10, 10:15.</p> <p>The start time cannot be earlier than 24 hours before the time of the request. Historical metrics are available only for 24 hours.</p>\"\
        },\
        \"EndTime\":{\
          \"shape\":\"timestamp\",\
          \"documentation\":\"<p>The timestamp, in UNIX Epoch time format, at which to end the reporting interval for the retrieval of historical metrics data. The time must be specified using an interval of 5 minutes, such as 11:00, 11:05, 11:10, and must be later than the start time timestamp.</p> <p>The time range between the start and end time must be less than 24 hours.</p>\"\
        },\
        \"Filters\":{\
          \"shape\":\"Filters\",\
          \"documentation\":\"<p>The queues, up to 100, or channels, to use to filter the metrics returned. Metric data is retrieved only for the resources associated with the queues or channels included in the filter. You can include both queue IDs and queue ARNs in the same request. The only supported channel is <code>VOICE</code>.</p>\"\
        },\
        \"Groupings\":{\
          \"shape\":\"Groupings\",\
          \"documentation\":\"<p>The grouping applied to the metrics returned. For example, when results are grouped by queue, the metrics returned are grouped by queue. The values returned apply to the metrics for each queue rather than aggregated for all queues.</p> <p>The only supported grouping is <code>QUEUE</code>.</p> <p>If no grouping is specified, a summary of metrics for all queues is returned.</p>\"\
        },\
        \"HistoricalMetrics\":{\
          \"shape\":\"HistoricalMetrics\",\
          \"documentation\":\"<p>The metrics to retrieve. Specify the name, unit, and statistic for each metric. The following historical metrics are available:</p> <dl> <dt>ABANDON_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistic: AVG</p> </dd> <dt>AFTER_CONTACT_WORK_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistic: AVG</p> </dd> <dt>API_CONTACTS_HANDLED</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CALLBACK_CONTACTS_HANDLED</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_ABANDONED</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_AGENT_HUNG_UP_FIRST</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_CONSULTED</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_HANDLED</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_HANDLED_INCOMING</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_HANDLED_OUTBOUND</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_HOLD_ABANDONS</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_MISSED</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_QUEUED</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_TRANSFERRED_IN</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_TRANSFERRED_IN_FROM_QUEUE</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_TRANSFERRED_OUT</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>HANDLE_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistic: AVG</p> </dd> <dt>HOLD_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistic: AVG</p> </dd> <dt>INTERACTION_AND_HOLD_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistic: AVG</p> </dd> <dt>INTERACTION_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistic: AVG</p> </dd> <dt>OCCUPANCY</dt> <dd> <p>Unit: PERCENT</p> <p>Statistic: AVG</p> </dd> <dt>QUEUE_ANSWER_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistic: AVG</p> </dd> <dt>QUEUED_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistic: MAX</p> </dd> <dt>SERVICE_LEVEL</dt> <dd> <p>Unit: PERCENT</p> <p>Statistic: AVG</p> <p>Threshold: Only \\\"Less than\\\" comparisons are supported, with the following service level thresholds: 15, 20, 25, 30, 45, 60, 90, 120, 180, 240, 300, 600</p> </dd> </dl>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResult100\",\
          \"documentation\":\"<p>The maximimum number of results to return per page.</p>\",\
          \"box\":true\
        }\
      }\
    },\
    \"GetMetricDataResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If there are additional results, this is the token for the next set of results.</p> <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use the token must use the same request parameters as the request that generated the token.</p>\"\
        },\
        \"MetricResults\":{\
          \"shape\":\"HistoricalMetricResults\",\
          \"documentation\":\"<p>Information about the historical metrics.</p> <p>If no grouping is specified, a summary of metric data is returned.</p>\"\
        }\
      }\
    },\
    \"Grouping\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"QUEUE\",\
        \"CHANNEL\"\
      ]\
    },\
    \"Groupings\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"Grouping\"},\
      \"max\":2\
    },\
    \"HierarchyGroup\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"HierarchyGroupId\",\
          \"documentation\":\"<p>The identifier of the hierarchy group.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the hierarchy group.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"HierarchyGroupName\",\
          \"documentation\":\"<p>The name of the hierarchy group.</p>\"\
        },\
        \"LevelId\":{\
          \"shape\":\"HierarchyLevelId\",\
          \"documentation\":\"<p>The identifier of the level in the hierarchy group.</p>\"\
        },\
        \"HierarchyPath\":{\
          \"shape\":\"HierarchyPath\",\
          \"documentation\":\"<p>Information about the levels in the hierarchy group.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about a hierarchy group.</p>\"\
    },\
    \"HierarchyGroupId\":{\"type\":\"string\"},\
    \"HierarchyGroupName\":{\"type\":\"string\"},\
    \"HierarchyGroupSummary\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"HierarchyGroupId\",\
          \"documentation\":\"<p>The identifier of the hierarchy group.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the hierarchy group.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"HierarchyGroupName\",\
          \"documentation\":\"<p>The name of the hierarchy group.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains summary information about a hierarchy group.</p>\"\
    },\
    \"HierarchyGroupSummaryList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"HierarchyGroupSummary\"}\
    },\
    \"HierarchyLevel\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"HierarchyLevelId\",\
          \"documentation\":\"<p>The identifier of the hierarchy level.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the hierarchy level.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"HierarchyLevelName\",\
          \"documentation\":\"<p>The name of the hierarchy level.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about a hierarchy level.</p>\"\
    },\
    \"HierarchyLevelId\":{\"type\":\"string\"},\
    \"HierarchyLevelName\":{\"type\":\"string\"},\
    \"HierarchyPath\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"LevelOne\":{\
          \"shape\":\"HierarchyGroupSummary\",\
          \"documentation\":\"<p>Information about level one.</p>\"\
        },\
        \"LevelTwo\":{\
          \"shape\":\"HierarchyGroupSummary\",\
          \"documentation\":\"<p>Information about level two.</p>\"\
        },\
        \"LevelThree\":{\
          \"shape\":\"HierarchyGroupSummary\",\
          \"documentation\":\"<p>Information about level three.</p>\"\
        },\
        \"LevelFour\":{\
          \"shape\":\"HierarchyGroupSummary\",\
          \"documentation\":\"<p>Information about level four.</p>\"\
        },\
        \"LevelFive\":{\
          \"shape\":\"HierarchyGroupSummary\",\
          \"documentation\":\"<p>Information about level five.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about the levels of a hierarchy group.</p>\"\
    },\
    \"HierarchyStructure\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"LevelOne\":{\
          \"shape\":\"HierarchyLevel\",\
          \"documentation\":\"<p>Information about level one.</p>\"\
        },\
        \"LevelTwo\":{\
          \"shape\":\"HierarchyLevel\",\
          \"documentation\":\"<p>Information about level two.</p>\"\
        },\
        \"LevelThree\":{\
          \"shape\":\"HierarchyLevel\",\
          \"documentation\":\"<p>Information about level three.</p>\"\
        },\
        \"LevelFour\":{\
          \"shape\":\"HierarchyLevel\",\
          \"documentation\":\"<p>Information about level four.</p>\"\
        },\
        \"LevelFive\":{\
          \"shape\":\"HierarchyLevel\",\
          \"documentation\":\"<p>Information about level five.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about a hierarchy structure.</p>\"\
    },\
    \"HistoricalMetric\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"HistoricalMetricName\",\
          \"documentation\":\"<p>The name of the metric.</p>\"\
        },\
        \"Threshold\":{\
          \"shape\":\"Threshold\",\
          \"documentation\":\"<p>The threshold for the metric, used with service level metrics.</p>\",\
          \"box\":true\
        },\
        \"Statistic\":{\
          \"shape\":\"Statistic\",\
          \"documentation\":\"<p>The statistic for the metric.</p>\"\
        },\
        \"Unit\":{\
          \"shape\":\"Unit\",\
          \"documentation\":\"<p>The unit for the metric.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about a historical metric.</p>\"\
    },\
    \"HistoricalMetricData\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Metric\":{\
          \"shape\":\"HistoricalMetric\",\
          \"documentation\":\"<p>Information about the metric.</p>\"\
        },\
        \"Value\":{\
          \"shape\":\"Value\",\
          \"documentation\":\"<p>The value of the metric.</p>\",\
          \"box\":true\
        }\
      },\
      \"documentation\":\"<p>Contains the data for a historical metric.</p>\"\
    },\
    \"HistoricalMetricDataCollections\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"HistoricalMetricData\"}\
    },\
    \"HistoricalMetricName\":{\
      \"type\":\"string\",\
      \"documentation\":\"<p>The historical metric names.</p>\",\
      \"enum\":[\
        \"CONTACTS_QUEUED\",\
        \"CONTACTS_HANDLED\",\
        \"CONTACTS_ABANDONED\",\
        \"CONTACTS_CONSULTED\",\
        \"CONTACTS_AGENT_HUNG_UP_FIRST\",\
        \"CONTACTS_HANDLED_INCOMING\",\
        \"CONTACTS_HANDLED_OUTBOUND\",\
        \"CONTACTS_HOLD_ABANDONS\",\
        \"CONTACTS_TRANSFERRED_IN\",\
        \"CONTACTS_TRANSFERRED_OUT\",\
        \"CONTACTS_TRANSFERRED_IN_FROM_QUEUE\",\
        \"CONTACTS_TRANSFERRED_OUT_FROM_QUEUE\",\
        \"CONTACTS_MISSED\",\
        \"CALLBACK_CONTACTS_HANDLED\",\
        \"API_CONTACTS_HANDLED\",\
        \"OCCUPANCY\",\
        \"HANDLE_TIME\",\
        \"AFTER_CONTACT_WORK_TIME\",\
        \"QUEUED_TIME\",\
        \"ABANDON_TIME\",\
        \"QUEUE_ANSWER_TIME\",\
        \"HOLD_TIME\",\
        \"INTERACTION_TIME\",\
        \"INTERACTION_AND_HOLD_TIME\",\
        \"SERVICE_LEVEL\"\
      ]\
    },\
    \"HistoricalMetricResult\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Dimensions\":{\
          \"shape\":\"Dimensions\",\
          \"documentation\":\"<p>The dimension for the metrics.</p>\"\
        },\
        \"Collections\":{\
          \"shape\":\"HistoricalMetricDataCollections\",\
          \"documentation\":\"<p>The set of metrics.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about the historical metrics retrieved.</p>\"\
    },\
    \"HistoricalMetricResults\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"HistoricalMetricResult\"}\
    },\
    \"HistoricalMetrics\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"HistoricalMetric\"}\
    },\
    \"HoursOfOperationId\":{\"type\":\"string\"},\
    \"HoursOfOperationName\":{\"type\":\"string\"},\
    \"HoursOfOperationSummary\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"HoursOfOperationId\",\
          \"documentation\":\"<p>The identifier of the hours of operation.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the hours of operation.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"HoursOfOperationName\",\
          \"documentation\":\"<p>The name of the hours of operation.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains summary information about hours of operation for a contact center.</p>\"\
    },\
    \"HoursOfOperationSummaryList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"HoursOfOperationSummary\"}\
    },\
    \"InstanceId\":{\
      \"type\":\"string\",\
      \"max\":100,\
      \"min\":1\
    },\
    \"InternalServiceException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\
          \"shape\":\"Message\",\
          \"documentation\":\"<p>The message.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Request processing failed due to an error or failure with the service.</p>\",\
      \"error\":{\"httpStatusCode\":500},\
      \"exception\":true\
    },\
    \"InvalidParameterException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\
          \"shape\":\"Message\",\
          \"documentation\":\"<p>The message.</p>\"\
        }\
      },\
      \"documentation\":\"<p>One or more of the specified parameters are not valid.</p>\",\
      \"error\":{\"httpStatusCode\":400},\
      \"exception\":true\
    },\
    \"InvalidRequestException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\
          \"shape\":\"Message\",\
          \"documentation\":\"<p>The message.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The request is not valid.</p>\",\
      \"error\":{\"httpStatusCode\":400},\
      \"exception\":true\
    },\
    \"LimitExceededException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\
          \"shape\":\"Message\",\
          \"documentation\":\"<p>The message.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The allowed limit for the resource has been exceeded.</p>\",\
      \"error\":{\"httpStatusCode\":429},\
      \"exception\":true\
    },\
    \"ListContactFlowsRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"InstanceId\"],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"ContactFlowTypes\":{\
          \"shape\":\"ContactFlowTypes\",\
          \"documentation\":\"<p>The type of contact flow.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"contactFlowTypes\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"nextToken\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResult1000\",\
          \"documentation\":\"<p>The maximimum number of results to return per page.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"maxResults\"\
        }\
      }\
    },\
    \"ListContactFlowsResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ContactFlowSummaryList\":{\
          \"shape\":\"ContactFlowSummaryList\",\
          \"documentation\":\"<p>Information about the contact flows.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If there are additional results, this is the token for the next set of results.</p>\"\
        }\
      }\
    },\
    \"ListHoursOfOperationsRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"InstanceId\"],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"nextToken\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResult1000\",\
          \"documentation\":\"<p>The maximimum number of results to return per page.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"maxResults\"\
        }\
      }\
    },\
    \"ListHoursOfOperationsResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"HoursOfOperationSummaryList\":{\
          \"shape\":\"HoursOfOperationSummaryList\",\
          \"documentation\":\"<p>Information about the hours of operation.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If there are additional results, this is the token for the next set of results.</p>\"\
        }\
      }\
    },\
    \"ListPhoneNumbersRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"InstanceId\"],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"PhoneNumberTypes\":{\
          \"shape\":\"PhoneNumberTypes\",\
          \"documentation\":\"<p>The type of phone number.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"phoneNumberTypes\"\
        },\
        \"PhoneNumberCountryCodes\":{\
          \"shape\":\"PhoneNumberCountryCodes\",\
          \"documentation\":\"<p>The ISO country code.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"phoneNumberCountryCodes\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"nextToken\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResult1000\",\
          \"documentation\":\"<p>The maximimum number of results to return per page.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"maxResults\"\
        }\
      }\
    },\
    \"ListPhoneNumbersResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"PhoneNumberSummaryList\":{\
          \"shape\":\"PhoneNumberSummaryList\",\
          \"documentation\":\"<p>Information about the phone numbers.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If there are additional results, this is the token for the next set of results.</p>\"\
        }\
      }\
    },\
    \"ListQueuesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"InstanceId\"],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"QueueTypes\":{\
          \"shape\":\"QueueTypes\",\
          \"documentation\":\"<p>The type of queue.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"queueTypes\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"nextToken\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResult1000\",\
          \"documentation\":\"<p>The maximimum number of results to return per page.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"maxResults\"\
        }\
      }\
    },\
    \"ListQueuesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"QueueSummaryList\":{\
          \"shape\":\"QueueSummaryList\",\
          \"documentation\":\"<p>Information about the queues.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If there are additional results, this is the token for the next set of results.</p>\"\
        }\
      }\
    },\
    \"ListRoutingProfilesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"InstanceId\"],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"nextToken\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResult1000\",\
          \"documentation\":\"<p>The maximimum number of results to return per page.</p>\",\
          \"box\":true,\
          \"location\":\"querystring\",\
          \"locationName\":\"maxResults\"\
        }\
      }\
    },\
    \"ListRoutingProfilesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"RoutingProfileSummaryList\":{\
          \"shape\":\"RoutingProfileSummaryList\",\
          \"documentation\":\"<p>Information about the routing profiles.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If there are additional results, this is the token for the next set of results.</p>\"\
        }\
      }\
    },\
    \"ListSecurityProfilesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"InstanceId\"],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"nextToken\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResult1000\",\
          \"documentation\":\"<p>The maximimum number of results to return per page.</p>\",\
          \"box\":true,\
          \"location\":\"querystring\",\
          \"locationName\":\"maxResults\"\
        }\
      }\
    },\
    \"ListSecurityProfilesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"SecurityProfileSummaryList\":{\
          \"shape\":\"SecurityProfileSummaryList\",\
          \"documentation\":\"<p>Information about the security profiles.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If there are additional results, this is the token for the next set of results.</p>\"\
        }\
      }\
    },\
    \"ListUserHierarchyGroupsRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"InstanceId\"],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"nextToken\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResult1000\",\
          \"documentation\":\"<p>The maximimum number of results to return per page.</p>\",\
          \"box\":true,\
          \"location\":\"querystring\",\
          \"locationName\":\"maxResults\"\
        }\
      }\
    },\
    \"ListUserHierarchyGroupsResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserHierarchyGroupSummaryList\":{\
          \"shape\":\"HierarchyGroupSummaryList\",\
          \"documentation\":\"<p>Information about the hierarchy groups.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If there are additional results, this is the token for the next set of results.</p>\"\
        }\
      }\
    },\
    \"ListUsersRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"InstanceId\"],\
      \"members\":{\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>\",\
          \"location\":\"querystring\",\
          \"locationName\":\"nextToken\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResult1000\",\
          \"documentation\":\"<p>The maximimum number of results to return per page.</p>\",\
          \"box\":true,\
          \"location\":\"querystring\",\
          \"locationName\":\"maxResults\"\
        }\
      }\
    },\
    \"ListUsersResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserSummaryList\":{\
          \"shape\":\"UserSummaryList\",\
          \"documentation\":\"<p>Information about the users.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If there are additional results, this is the token for the next set of results.</p>\"\
        }\
      }\
    },\
    \"MaxResult100\":{\
      \"type\":\"integer\",\
      \"max\":100,\
      \"min\":1\
    },\
    \"MaxResult1000\":{\
      \"type\":\"integer\",\
      \"max\":1000,\
      \"min\":1\
    },\
    \"Message\":{\"type\":\"string\"},\
    \"NextToken\":{\"type\":\"string\"},\
    \"OutboundContactNotPermittedException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\
          \"shape\":\"Message\",\
          \"documentation\":\"<p>The message.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The contact is not permitted.</p>\",\
      \"error\":{\"httpStatusCode\":403},\
      \"exception\":true\
    },\
    \"Password\":{\
      \"type\":\"string\",\
      \"pattern\":\"/^(?=.*[a-z])(?=.*[A-Z])(?=.*\\\\d)[a-zA-Z\\\\d\\\\S]{8,64}$/\"\
    },\
    \"PhoneNumber\":{\"type\":\"string\"},\
    \"PhoneNumberCountryCode\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"AF\",\
        \"AL\",\
        \"DZ\",\
        \"AS\",\
        \"AD\",\
        \"AO\",\
        \"AI\",\
        \"AQ\",\
        \"AG\",\
        \"AR\",\
        \"AM\",\
        \"AW\",\
        \"AU\",\
        \"AT\",\
        \"AZ\",\
        \"BS\",\
        \"BH\",\
        \"BD\",\
        \"BB\",\
        \"BY\",\
        \"BE\",\
        \"BZ\",\
        \"BJ\",\
        \"BM\",\
        \"BT\",\
        \"BO\",\
        \"BA\",\
        \"BW\",\
        \"BR\",\
        \"IO\",\
        \"VG\",\
        \"BN\",\
        \"BG\",\
        \"BF\",\
        \"BI\",\
        \"KH\",\
        \"CM\",\
        \"CA\",\
        \"CV\",\
        \"KY\",\
        \"CF\",\
        \"TD\",\
        \"CL\",\
        \"CN\",\
        \"CX\",\
        \"CC\",\
        \"CO\",\
        \"KM\",\
        \"CK\",\
        \"CR\",\
        \"HR\",\
        \"CU\",\
        \"CW\",\
        \"CY\",\
        \"CZ\",\
        \"CD\",\
        \"DK\",\
        \"DJ\",\
        \"DM\",\
        \"DO\",\
        \"TL\",\
        \"EC\",\
        \"EG\",\
        \"SV\",\
        \"GQ\",\
        \"ER\",\
        \"EE\",\
        \"ET\",\
        \"FK\",\
        \"FO\",\
        \"FJ\",\
        \"FI\",\
        \"FR\",\
        \"PF\",\
        \"GA\",\
        \"GM\",\
        \"GE\",\
        \"DE\",\
        \"GH\",\
        \"GI\",\
        \"GR\",\
        \"GL\",\
        \"GD\",\
        \"GU\",\
        \"GT\",\
        \"GG\",\
        \"GN\",\
        \"GW\",\
        \"GY\",\
        \"HT\",\
        \"HN\",\
        \"HK\",\
        \"HU\",\
        \"IS\",\
        \"IN\",\
        \"ID\",\
        \"IR\",\
        \"IQ\",\
        \"IE\",\
        \"IM\",\
        \"IL\",\
        \"IT\",\
        \"CI\",\
        \"JM\",\
        \"JP\",\
        \"JE\",\
        \"JO\",\
        \"KZ\",\
        \"KE\",\
        \"KI\",\
        \"KW\",\
        \"KG\",\
        \"LA\",\
        \"LV\",\
        \"LB\",\
        \"LS\",\
        \"LR\",\
        \"LY\",\
        \"LI\",\
        \"LT\",\
        \"LU\",\
        \"MO\",\
        \"MK\",\
        \"MG\",\
        \"MW\",\
        \"MY\",\
        \"MV\",\
        \"ML\",\
        \"MT\",\
        \"MH\",\
        \"MR\",\
        \"MU\",\
        \"YT\",\
        \"MX\",\
        \"FM\",\
        \"MD\",\
        \"MC\",\
        \"MN\",\
        \"ME\",\
        \"MS\",\
        \"MA\",\
        \"MZ\",\
        \"MM\",\
        \"NA\",\
        \"NR\",\
        \"NP\",\
        \"NL\",\
        \"AN\",\
        \"NC\",\
        \"NZ\",\
        \"NI\",\
        \"NE\",\
        \"NG\",\
        \"NU\",\
        \"KP\",\
        \"MP\",\
        \"NO\",\
        \"OM\",\
        \"PK\",\
        \"PW\",\
        \"PA\",\
        \"PG\",\
        \"PY\",\
        \"PE\",\
        \"PH\",\
        \"PN\",\
        \"PL\",\
        \"PT\",\
        \"PR\",\
        \"QA\",\
        \"CG\",\
        \"RE\",\
        \"RO\",\
        \"RU\",\
        \"RW\",\
        \"BL\",\
        \"SH\",\
        \"KN\",\
        \"LC\",\
        \"MF\",\
        \"PM\",\
        \"VC\",\
        \"WS\",\
        \"SM\",\
        \"ST\",\
        \"SA\",\
        \"SN\",\
        \"RS\",\
        \"SC\",\
        \"SL\",\
        \"SG\",\
        \"SX\",\
        \"SK\",\
        \"SI\",\
        \"SB\",\
        \"SO\",\
        \"ZA\",\
        \"KR\",\
        \"ES\",\
        \"LK\",\
        \"SD\",\
        \"SR\",\
        \"SJ\",\
        \"SZ\",\
        \"SE\",\
        \"CH\",\
        \"SY\",\
        \"TW\",\
        \"TJ\",\
        \"TZ\",\
        \"TH\",\
        \"TG\",\
        \"TK\",\
        \"TO\",\
        \"TT\",\
        \"TN\",\
        \"TR\",\
        \"TM\",\
        \"TC\",\
        \"TV\",\
        \"VI\",\
        \"UG\",\
        \"UA\",\
        \"AE\",\
        \"GB\",\
        \"US\",\
        \"UY\",\
        \"UZ\",\
        \"VU\",\
        \"VA\",\
        \"VE\",\
        \"VN\",\
        \"WF\",\
        \"EH\",\
        \"YE\",\
        \"ZM\",\
        \"ZW\"\
      ]\
    },\
    \"PhoneNumberCountryCodes\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"PhoneNumberCountryCode\"},\
      \"max\":10\
    },\
    \"PhoneNumberId\":{\"type\":\"string\"},\
    \"PhoneNumberSummary\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"PhoneNumberId\",\
          \"documentation\":\"<p>The identifier of the phone number.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the phone number.</p>\"\
        },\
        \"PhoneNumber\":{\
          \"shape\":\"PhoneNumber\",\
          \"documentation\":\"<p>The phone number.</p>\"\
        },\
        \"PhoneNumberType\":{\
          \"shape\":\"PhoneNumberType\",\
          \"documentation\":\"<p>The type of phone number.</p>\"\
        },\
        \"PhoneNumberCountryCode\":{\
          \"shape\":\"PhoneNumberCountryCode\",\
          \"documentation\":\"<p>The ISO country code.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains summary information about a phone number for a contact center.</p>\"\
    },\
    \"PhoneNumberSummaryList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"PhoneNumberSummary\"}\
    },\
    \"PhoneNumberType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"TOLL_FREE\",\
        \"DID\"\
      ]\
    },\
    \"PhoneNumberTypes\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"PhoneNumberType\"},\
      \"max\":2\
    },\
    \"PhoneType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"SOFT_PHONE\",\
        \"DESK_PHONE\"\
      ]\
    },\
    \"QueueId\":{\"type\":\"string\"},\
    \"QueueName\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"min\":1\
    },\
    \"QueueReference\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"QueueId\",\
          \"documentation\":\"<p>The identifier of the queue.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the queue.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about a queue resource for which metrics are returned.</p>\"\
    },\
    \"QueueSummary\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"QueueId\",\
          \"documentation\":\"<p>The identifier of the queue.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the queue.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"QueueName\",\
          \"documentation\":\"<p>The name of the queue.</p>\"\
        },\
        \"QueueType\":{\
          \"shape\":\"QueueType\",\
          \"documentation\":\"<p>The type of queue.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains summary information about a queue.</p>\"\
    },\
    \"QueueSummaryList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"QueueSummary\"}\
    },\
    \"QueueType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"STANDARD\",\
        \"AGENT\"\
      ]\
    },\
    \"QueueTypes\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"QueueType\"},\
      \"max\":2\
    },\
    \"Queues\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"QueueId\"},\
      \"max\":100,\
      \"min\":1\
    },\
    \"ResourceNotFoundException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\
          \"shape\":\"Message\",\
          \"documentation\":\"<p>The message.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The specified resource was not found.</p>\",\
      \"error\":{\"httpStatusCode\":404},\
      \"exception\":true\
    },\
    \"RoutingProfileId\":{\"type\":\"string\"},\
    \"RoutingProfileName\":{\
      \"type\":\"string\",\
      \"max\":100,\
      \"min\":1\
    },\
    \"RoutingProfileSummary\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"RoutingProfileId\",\
          \"documentation\":\"<p>The identifier of the routing profile.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the routing profile.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"RoutingProfileName\",\
          \"documentation\":\"<p>The name of the routing profile.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains summary information about a routing profile.</p>\"\
    },\
    \"RoutingProfileSummaryList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"RoutingProfileSummary\"}\
    },\
    \"SecurityProfileId\":{\"type\":\"string\"},\
    \"SecurityProfileIds\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"SecurityProfileId\"},\
      \"max\":10,\
      \"min\":1\
    },\
    \"SecurityProfileName\":{\"type\":\"string\"},\
    \"SecurityProfileSummary\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"SecurityProfileId\",\
          \"documentation\":\"<p>The identifier of the security profile.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the security profile.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"SecurityProfileName\",\
          \"documentation\":\"<p>The name of the security profile.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about a security profile.</p>\"\
    },\
    \"SecurityProfileSummaryList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"SecurityProfileSummary\"}\
    },\
    \"SecurityToken\":{\
      \"type\":\"string\",\
      \"sensitive\":true\
    },\
    \"StartOutboundVoiceContactRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"DestinationPhoneNumber\",\
        \"ContactFlowId\",\
        \"InstanceId\"\
      ],\
      \"members\":{\
        \"DestinationPhoneNumber\":{\
          \"shape\":\"PhoneNumber\",\
          \"documentation\":\"<p>The phone number of the customer, in E.164 format.</p>\"\
        },\
        \"ContactFlowId\":{\
          \"shape\":\"ContactFlowId\",\
          \"documentation\":\"<p>The identifier of the contact flow for the outbound call.</p>\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\"\
        },\
        \"ClientToken\":{\
          \"shape\":\"ClientToken\",\
          \"documentation\":\"<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. The token is valid for 7 days after creation. If a contact is already started, the contact ID is returned. If the contact is disconnected, a new contact is started.</p>\",\
          \"idempotencyToken\":true\
        },\
        \"SourcePhoneNumber\":{\
          \"shape\":\"PhoneNumber\",\
          \"documentation\":\"<p>The phone number associated with the Amazon Connect instance, in E.164 format. If you do not specify a source phone number, you must specify a queue.</p>\"\
        },\
        \"QueueId\":{\
          \"shape\":\"QueueId\",\
          \"documentation\":\"<p>The queue for the call. If you specify a queue, the phone displayed for caller ID is the phone number specified in the queue. If you do not specify a queue, the queue defined in the contact flow is used. If you do not specify a queue, you must specify a source phone number.</p>\"\
        },\
        \"Attributes\":{\
          \"shape\":\"Attributes\",\
          \"documentation\":\"<p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in contact flows just like any other contact attributes.</p> <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys can include only alphanumeric, dash, and underscore characters.</p>\"\
        }\
      }\
    },\
    \"StartOutboundVoiceContactResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ContactId\":{\
          \"shape\":\"ContactId\",\
          \"documentation\":\"<p>The identifier of this contact within the Amazon Connect instance.</p>\"\
        }\
      }\
    },\
    \"Statistic\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"SUM\",\
        \"MAX\",\
        \"AVG\"\
      ]\
    },\
    \"StopContactRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"ContactId\",\
        \"InstanceId\"\
      ],\
      \"members\":{\
        \"ContactId\":{\
          \"shape\":\"ContactId\",\
          \"documentation\":\"<p>The ID of the contact.</p>\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\"\
        }\
      }\
    },\
    \"StopContactResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      }\
    },\
    \"Threshold\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Comparison\":{\
          \"shape\":\"Comparison\",\
          \"documentation\":\"<p>The type of comparison. Only \\\"less than\\\" (LT) comparisons are supported.</p>\"\
        },\
        \"ThresholdValue\":{\
          \"shape\":\"ThresholdValue\",\
          \"documentation\":\"<p>The threshold value to compare.</p>\",\
          \"box\":true\
        }\
      },\
      \"documentation\":\"<p>Contains information about the threshold for service level metrics.</p>\"\
    },\
    \"ThresholdValue\":{\"type\":\"double\"},\
    \"ThrottlingException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"Message\"}\
      },\
      \"documentation\":\"<p>The throttling limit has been exceeded.</p>\",\
      \"error\":{\"httpStatusCode\":429},\
      \"exception\":true\
    },\
    \"Unit\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"SECONDS\",\
        \"COUNT\",\
        \"PERCENT\"\
      ]\
    },\
    \"UpdateContactAttributesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"InitialContactId\",\
        \"InstanceId\",\
        \"Attributes\"\
      ],\
      \"members\":{\
        \"InitialContactId\":{\
          \"shape\":\"ContactId\",\
          \"documentation\":\"<p>The identifier of the contact. This is the identifier of the contact associated with the first interaction with the contact center.</p>\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\"\
        },\
        \"Attributes\":{\
          \"shape\":\"Attributes\",\
          \"documentation\":\"<p>The Amazon Connect attributes. These attributes can be accessed in contact flows just like any other contact attributes.</p> <p>You can have up to 32,768 UTF-8 bytes across all attributes for a contact. Attribute keys can include only alphanumeric, dash, and underscore characters.</p>\"\
        }\
      }\
    },\
    \"UpdateContactAttributesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      }\
    },\
    \"UpdateUserHierarchyRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserId\",\
        \"InstanceId\"\
      ],\
      \"members\":{\
        \"HierarchyGroupId\":{\
          \"shape\":\"HierarchyGroupId\",\
          \"documentation\":\"<p>The identifier of the hierarchy group.</p>\"\
        },\
        \"UserId\":{\
          \"shape\":\"UserId\",\
          \"documentation\":\"<p>The identifier of the user account.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"UserId\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        }\
      }\
    },\
    \"UpdateUserIdentityInfoRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"IdentityInfo\",\
        \"UserId\",\
        \"InstanceId\"\
      ],\
      \"members\":{\
        \"IdentityInfo\":{\
          \"shape\":\"UserIdentityInfo\",\
          \"documentation\":\"<p>The identity information for the user.</p>\"\
        },\
        \"UserId\":{\
          \"shape\":\"UserId\",\
          \"documentation\":\"<p>The identifier of the user account.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"UserId\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        }\
      }\
    },\
    \"UpdateUserPhoneConfigRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"PhoneConfig\",\
        \"UserId\",\
        \"InstanceId\"\
      ],\
      \"members\":{\
        \"PhoneConfig\":{\
          \"shape\":\"UserPhoneConfig\",\
          \"documentation\":\"<p>Information about phone configuration settings for the user.</p>\"\
        },\
        \"UserId\":{\
          \"shape\":\"UserId\",\
          \"documentation\":\"<p>The identifier of the user account.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"UserId\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        }\
      }\
    },\
    \"UpdateUserRoutingProfileRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"RoutingProfileId\",\
        \"UserId\",\
        \"InstanceId\"\
      ],\
      \"members\":{\
        \"RoutingProfileId\":{\
          \"shape\":\"RoutingProfileId\",\
          \"documentation\":\"<p>The identifier of the routing profile for the user.</p>\"\
        },\
        \"UserId\":{\
          \"shape\":\"UserId\",\
          \"documentation\":\"<p>The identifier of the user account.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"UserId\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        }\
      }\
    },\
    \"UpdateUserSecurityProfilesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"SecurityProfileIds\",\
        \"UserId\",\
        \"InstanceId\"\
      ],\
      \"members\":{\
        \"SecurityProfileIds\":{\
          \"shape\":\"SecurityProfileIds\",\
          \"documentation\":\"<p>The identifiers of the security profiles for the user.</p>\"\
        },\
        \"UserId\":{\
          \"shape\":\"UserId\",\
          \"documentation\":\"<p>The identifier of the user account.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"UserId\"\
        },\
        \"InstanceId\":{\
          \"shape\":\"InstanceId\",\
          \"documentation\":\"<p>The identifier of the Amazon Connect instance.</p>\",\
          \"location\":\"uri\",\
          \"locationName\":\"InstanceId\"\
        }\
      }\
    },\
    \"User\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"UserId\",\
          \"documentation\":\"<p>The identifier of the user account.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the user account.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"AgentUsername\",\
          \"documentation\":\"<p>The user name assigned to the user account.</p>\"\
        },\
        \"IdentityInfo\":{\
          \"shape\":\"UserIdentityInfo\",\
          \"documentation\":\"<p>Information about the user identity.</p>\"\
        },\
        \"PhoneConfig\":{\
          \"shape\":\"UserPhoneConfig\",\
          \"documentation\":\"<p>Information about the phone configuration for the user.</p>\"\
        },\
        \"DirectoryUserId\":{\
          \"shape\":\"DirectoryUserId\",\
          \"documentation\":\"<p>The identifier of the user account in the directory used for identity management.</p>\"\
        },\
        \"SecurityProfileIds\":{\
          \"shape\":\"SecurityProfileIds\",\
          \"documentation\":\"<p>The identifiers of the security profiles for the user.</p>\"\
        },\
        \"RoutingProfileId\":{\
          \"shape\":\"RoutingProfileId\",\
          \"documentation\":\"<p>The identifier of the routing profile for the user.</p>\"\
        },\
        \"HierarchyGroupId\":{\
          \"shape\":\"HierarchyGroupId\",\
          \"documentation\":\"<p>The identifier of the hierarchy group for the user.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about a user account for a Amazon Connect instance.</p>\"\
    },\
    \"UserId\":{\"type\":\"string\"},\
    \"UserIdentityInfo\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"FirstName\":{\
          \"shape\":\"AgentFirstName\",\
          \"documentation\":\"<p>The first name. This is required if you are using Amazon Connect or SAML for identity management.</p>\"\
        },\
        \"LastName\":{\
          \"shape\":\"AgentLastName\",\
          \"documentation\":\"<p>The last name. This is required if you are using Amazon Connect or SAML for identity management.</p>\"\
        },\
        \"Email\":{\
          \"shape\":\"Email\",\
          \"documentation\":\"<p>The email address. If you are using SAML for identity management and include this parameter, an error is returned.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about the identity of a user.</p>\"\
    },\
    \"UserNotFoundException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"Message\"}\
      },\
      \"documentation\":\"<p>No user with the specified credentials was found in the Amazon Connect instance.</p>\",\
      \"error\":{\"httpStatusCode\":404},\
      \"exception\":true\
    },\
    \"UserPhoneConfig\":{\
      \"type\":\"structure\",\
      \"required\":[\"PhoneType\"],\
      \"members\":{\
        \"PhoneType\":{\
          \"shape\":\"PhoneType\",\
          \"documentation\":\"<p>The phone type.</p>\"\
        },\
        \"AutoAccept\":{\
          \"shape\":\"AutoAccept\",\
          \"documentation\":\"<p>The Auto accept setting.</p>\"\
        },\
        \"AfterContactWorkTimeLimit\":{\
          \"shape\":\"AfterContactWorkTimeLimit\",\
          \"documentation\":\"<p>The After Call Work (ACW) timeout setting, in seconds.</p>\"\
        },\
        \"DeskPhoneNumber\":{\
          \"shape\":\"PhoneNumber\",\
          \"documentation\":\"<p>The phone number for the user's desk phone.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about the phone configuration settings for a user.</p>\"\
    },\
    \"UserSummary\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"UserId\",\
          \"documentation\":\"<p>The identifier of the user account.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ARN\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the user account.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"AgentUsername\",\
          \"documentation\":\"<p>The Amazon Connect user name of the user account.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains summary information about a user.</p>\"\
    },\
    \"UserSummaryList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"UserSummary\"}\
    },\
    \"Value\":{\"type\":\"double\"},\
    \"timestamp\":{\"type\":\"timestamp\"}\
  },\
  \"documentation\":\"<p>Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage a customer contact center and provide reliable customer engagement at any scale.</p> <p>Amazon Connect provides rich metrics and real-time reporting that allow you to optimize contact routing. You can also resolve customer issues more efficiently by putting customers in touch with the right agents.</p> <p>There are limits to the number of Amazon Connect resources that you can create and limits to the number of requests that you can make per second. For more information, see <a href=\\\"https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html\\\">Amazon Connect Service Limits</a> in the <i>Amazon Connect Administrator Guide</i>.</p>\"\
}\
";
}

@end
