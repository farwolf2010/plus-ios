//
//  WeexPlus.m
//  AFNetworking
//
//  Created by 郑江荣 on 2020/4/12.
//

#import "WeexPlusManager.h"
#import "WeexFactory.h"
#import "farwolf.h"
#import "Weex.h"

@implementation WeexPlusManager
+(void)init:(NSDictionary*)lanch{
    [WeexPlus init:nil];
}
+(void)open:(NSDictionary*)param{
    NSString *url=param[@"url"];
    if(param[@"url"]){
        url=param[@"url"];
    }
    BOOL preload=true;
    if([param objectForKey:@"preload"]!=nil)
    {
       preload=[param[@"preload"] boolValue];
       
    }
    NSDictionary *vcparam=nil;
    if([param objectForKey:@"param"]!=nil)
    {
        vcparam=param[@"param"];
        
    }
     BOOL isPortrait=true;
      if([param objectForKey:@"isPortrait"]!=nil)
      {
          isPortrait=[param[@"isPortrait"] boolValue];
          
      }
    BOOL present=true;
    if([param objectForKey:@"present"]!=nil)
    {
        present=[param[@"present"] boolValue];
        
    }
    BOOL animated=true;
       if([param objectForKey:@"animated"]!=nil)
       {
           animated=[param[@"animated"] boolValue];
           
       }
     NSURL *ul=[Weex toURL:url];
     [WeexFactory renderNew:ul preload:preload compelete:^(WXNormalViewContrller *vc) {
         UIViewController *topVc=   [[UIApplication sharedApplication].keyWindow.rootViewController TopViewController];
         if(present){
            vc.param=param;
            vc.instance.param=param;
            [[topVc navigationController] pushViewController:vc animated:animated];
         }else{
              UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:vc];
              vc.param=param;
              vc.instance.param=param;
              nav.modalPresentationStyle=UIModalPresentationFullScreen;
              [topVc presentViewController:nav animated:animated completion:^{
     
              }];
         }
        
       
            
        

    } fail:^(NSString *msg) {

    }   frame:[UIApplication sharedApplication].keyWindow.bounds isPortrait:isPortrait];
}
@end
