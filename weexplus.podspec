

Pod::Spec.new do |s|

 

  s.name         = "weexplus"
  s.version      = "1.0.0"
  s.summary      = "Handle some data."
  s.description  = <<-DESC
                    Handle the data.
                   DESC

  s.homepage     = "http://csdn.net/veryitman"
  s.license      = "MIT"
  s.author             = { "zjr" => "362675035@qq.com" }
   s.source       = { :git => "https://github.com/farwolf2010/plus-ios.git", :tag => "1.0.0" }
  s.source_files  = "Source", "weexplus/**/*.{h,m,mm,c}"
  s.exclude_files = "Source/Exclude"
  s.resources = 'weexplus/resources/**'
  s.platform     = :ios, "8.0"
  s.requires_arc = true
  
 
  s.dependency 'photoplus' ,'~> 1.0.2' 
 

end
