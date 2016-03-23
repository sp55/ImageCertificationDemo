//
//  ImagCertificationView.h
//  ImageCertificationDemo
//
//  Created by LuoYiJia on 16/3/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>

//图片验证
@interface ImagCertificationView : UIView

@property (nonatomic, retain) NSArray *changeArray;
@property (nonatomic, retain) NSMutableString *changeString;
@property (nonatomic, retain) UILabel *codeLabel;

-(void)changeCode;

@end
