// By @CrazyMind90



#import "CMManager.h"



%hook T1FollowControl
-(void) _followUser:(id)arg event:(id)arg1 {



  [CMManager InitAlertWithTitle:@"Follow ?" Message:nil Buttons:@[@"YES!"] CancelButtonTitle:@"Dismiss" AlertStyle:UIAlertControllerStyleAlert handler:^(NSString * _Nullable ButtonTitle) {


        if ([ButtonTitle isEqual:@"YES!"])
             return %orig;

    }];



   return;


}


%end




%hook T1TweetComposeViewController
-(void) _t1_handleTweet {

  [CMManager InitAlertWithTitle:@"Tweet ?" Message:nil Buttons:@[@"YES!"] CancelButtonTitle:@"Dismiss" AlertStyle:UIAlertControllerStyleAlert handler:^(NSString * _Nullable ButtonTitle) {


        if ([ButtonTitle isEqual:@"YES!"])
             return %orig;

    }];


return;
}


-(void) _t1_handleRetweet {

  [CMManager InitAlertWithTitle:@"Retweet ?" Message:nil Buttons:@[@"YES!"] CancelButtonTitle:@"Dismiss" AlertStyle:UIAlertControllerStyleAlert handler:^(NSString * _Nullable ButtonTitle) {


        if ([ButtonTitle isEqual:@"YES!"])
             return %orig;

    }];


return;

}

%end





%hook T1PersistentComposeViewController
-(void) _t1_didTapReply:(id)arg {


  [CMManager InitAlertWithTitle:@"Reply ?" Message:nil Buttons:@[@"YES!"] CancelButtonTitle:@"Dismiss" AlertStyle:UIAlertControllerStyleAlert handler:^(NSString * _Nullable ButtonTitle) {


        if ([ButtonTitle isEqual:@"YES!"])
             return %orig;

    }];


  return;
}


%end 




//
