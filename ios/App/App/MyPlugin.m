//
//  MyPlugin.m
//  App
//
//  Created by Anh Ngo Quang Tuan on 8/5/20.
//

#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

CAP_PLUGIN(MyPlugin, "MyPlugin",
  CAP_PLUGIN_METHOD(echo, CAPPluginReturnPromise);
)

