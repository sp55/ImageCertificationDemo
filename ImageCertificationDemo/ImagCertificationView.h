//
//  ImagCertificationView.h
//  ImageCertificationDemo
//
//  Created by LuoYiJia on 16/3/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>

//图片验证
//如果真的做的图片验证的话，可以写一个协议，然后在传出的协议中判断输验证图片里面的文字和键盘输入的文字是不是一致
@interface ImagCertificationView : UIView

@property (nonatomic, retain) NSArray *changeArray;
@property (nonatomic, retain) NSMutableString *changeString;
@property (nonatomic, retain) UILabel *codeLabel;

-(void)changeCode;

@end
