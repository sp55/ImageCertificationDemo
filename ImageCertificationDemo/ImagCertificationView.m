//
//  ImagCertificationView.m
//  ImageCertificationDemo
//
//  Created by LuoYiJia on 16/3/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ImagCertificationView.h"

@implementation ImagCertificationView
@synthesize changeArray = _changeArray;
@synthesize changeString = _changeString;
@synthesize codeLabel = _codeLabel;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
//        self.layer.cornerRadius = 5.0;
//        self.layer.masksToBounds = YES;
        float red = arc4random() % 100 / 100.0;
        float green = arc4random() % 100 / 100.0;
        float blue = arc4random() % 100 / 100.0;
        UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:0.2];
        self.backgroundColor = color;
        [self initUI];
    }
    return self;
}
//初始化
- (void)initUI
{
    self.changeArray = [[NSArray alloc] initWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z",@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i",@"j",@"k",@"l",@"m",@"n",@"o",@"p",@"q",@"r",@"s",@"t",@"u",@"v",@"w",@"x",@"y",@"z",nil];
    
    NSMutableString *getStr = [[NSMutableString alloc] initWithCapacity:5];
    
    self.changeString = [[NSMutableString alloc] initWithCapacity:6];
    for(NSInteger i = 0; i < 4; i++)
    {
        //随机生成四位数字
        NSInteger index = arc4random() % ([self.changeArray count] - 1);
        getStr = [self.changeArray objectAtIndex:index];
        self.changeString = (NSMutableString *)[self.changeString stringByAppendingString:getStr];
    }
}
-(void)changeCode{
    [self initUI];
    [self setNeedsDisplay];
}



//draw 出来
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    float red = arc4random() % 100 / 100.0;
    float green = arc4random() % 100 / 100.0;
    float blue = arc4random() % 100 / 100.0;
    
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:0.5];
    //背景随机颜色
    [self setBackgroundColor:color];
    
    NSString *text = [NSString stringWithFormat:@"%@",self.changeString];
//    CGSize cSize = [@"S" sizeWithFont:[UIFont systemFontOfSize:20]];
   //http://www.cocoachina.com/ask/questions/index/tagged/sizeWithAttributes
    CGSize cSize = [@"S" sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]}];

    NSInteger width = rect.size.width / text.length - cSize.width;
    NSInteger height = rect.size.height - cSize.height;
    CGPoint point;
    
    float pX, pY;
    for (NSInteger i = 0; i < text.length; i++)
    {
        pX = arc4random() % width + rect.size.width / text.length * i;
        pY = arc4random() % height;
        point = CGPointMake(pX, pY);
        unichar c = [text characterAtIndex:i];
        NSString *textC = [NSString stringWithFormat:@"%C", c];
//        [textC drawAtPoint:point withFont:[UIFont systemFontOfSize:20]];
        [textC drawAtPoint:point withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]}];

    }
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0);
    for(int cout = 0; cout < 10; cout++)
    {
        red = arc4random() % 100 / 100.0;
        green = arc4random() % 100 / 100.0;
        blue = arc4random() % 100 / 100.0;
        color = [UIColor colorWithRed:red green:green blue:blue alpha:0.2];
        CGContextSetStrokeColorWithColor(context, [color CGColor]);
        pX = arc4random() % (int)rect.size.width;
        pY = arc4random() % (int)rect.size.height;
        CGContextMoveToPoint(context, pX, pY);
        pX = arc4random() % (int)rect.size.width;
        pY = arc4random() % (int)rect.size.height;
        CGContextAddLineToPoint(context, pX, pY);
        CGContextStrokePath(context);
    }
}



@end
