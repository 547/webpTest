source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'
use_frameworks!

inhibit_all_warnings!

target 'webpTest' do
    pod 'SDWebImage'
    pod 'SDWebImageWebPCoder'
    
end
# SDWebImageWebPCoder 里面引用了Goole官方解码webp格式的库：libwebp，这个库实际指向Goole的网站，国内下载很困难，所以要到GitHub里面去下载libwebp的镜像，所以需要到本机的 /Users/seven/.cocoapods/repos/master/Specs/1/9/2/libwebp 文件夹里面把要下载的版本对应的文件夹里面的libwebp.podspec.json 文件中的source 下的 git 对应url 换成 GitHub里面镜像的url：https://github.com/webmproject/libwebp.git 保存 然后 再 pod install 就可以了
