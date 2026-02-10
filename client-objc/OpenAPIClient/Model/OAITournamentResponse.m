#import "OAITournamentResponse.h"

@implementation OAITournamentResponse

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"action": @"action", @"highestAppVersion": @"highestAppVersion", @"missionId": @"missionId", @"ticketsEarned": @"ticketsEarned", @"costToPlay": @"costToPlay", @"costToPlayType": @"costToPlayType", @"owner": @"owner", @"title": @"title", @"_description": @"description", @"authorOverride": @"authorOverride", @"icon": @"icon", @"image": @"image", @"sequenceType": @"sequenceType", @"updatedDate": @"updatedDate", @"startDate": @"startDate", @"endDate": @"endDate", @"missionType": @"missionType", @"active": @"active", @"balance": @"balance", @"availableLimit": @"availableLimit", @"inviteCount": @"inviteCount", @"acceptedCount": @"acceptedCount", @"childCount": @"childCount", @"enableBuyBack": @"enableBuyBack", @"minimumToPlay": @"minimumToPlay", @"rewarded": @"rewarded", @"refunded": @"refunded", @"joinCode": @"joinCode", @"rewards": @"rewards", @"games": @"games", @"scores": @"scores", @"userPermissionsList": @"userPermissionsList", @"results": @"results", @"inviteStatus": @"inviteStatus", @"audiences": @"audiences", @"missionInviteId": @"missionInviteId", @"missionInvite": @"missionInvite", @"invitee": @"invitee", @"formatType": @"formatType", @"creatives": @"creatives", @"fixedReward": @"fixedReward", @"allocateTickets": @"allocateTickets", @"ticketType": @"ticketType", @"ticketCount": @"ticketCount", @"points": @"points", @"splitReward": @"splitReward", @"secondsBetweenLevels": @"secondsBetweenLevels", @"secondsBetweenPacks": @"secondsBetweenPacks", @"advancedReporting": @"advancedReporting", @"tournamentData": @"tournamentData" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"action", @"highestAppVersion", @"missionId", @"ticketsEarned", @"costToPlay", @"costToPlayType", @"owner", @"title", @"_description", @"authorOverride", @"icon", @"image", @"sequenceType", @"updatedDate", @"startDate", @"endDate", @"missionType", @"active", @"balance", @"availableLimit", @"inviteCount", @"acceptedCount", @"childCount", @"enableBuyBack", @"minimumToPlay", @"rewarded", @"refunded", @"joinCode", @"rewards", @"games", @"scores", @"userPermissionsList", @"results", @"inviteStatus", @"audiences", @"missionInviteId", @"missionInvite", @"invitee", @"formatType", @"creatives", @"fixedReward", @"allocateTickets", @"ticketType", @"ticketCount", @"points", @"splitReward", @"secondsBetweenLevels", @"secondsBetweenPacks", @"advancedReporting", @"tournamentData"];
  return [optionalProperties containsObject:propertyName];
}

@end
