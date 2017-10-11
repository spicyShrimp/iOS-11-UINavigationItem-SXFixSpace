# iOS-11-UINavigationItem-SXFixSpace
iOS11导航栏按钮的位置偏移问题的解决方案 及iOS11之前的导航栏按钮的位置偏移问题的解决方案


另外还有新的解决方案
https://github.com/spicyShrimp/UINavigation-SXFixSpace
相较于次方案
1.不用修改约束(其修改的是系统默认的layoutMargins)
2.不用必须写在viewWillAppear中(新方案不会因为push和pop导致约束丢失)
3.仍可以使用系统的set..Items的方法进行多个按钮的设置
4.实现逻辑更简单
...
