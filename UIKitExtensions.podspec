Pod::Spec.new do |s|
  s.name         = "UIKitExtensions"
  s.version      = "0.0.9"
  s.summary      = "A collection of extensions for UIKit framework."

  # s.description  = <<-DESC
  #                   An optional longer description of UIKitExtensions
  #
  #                   * Markdown format.
  #                   * Don't worry about the indent, we strip it!
  #                  DESC

  s.homepage     = "https://github.com/stanislaw/UIKitExtensions"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "Stanislaw Pankevich" => "s.pankevich@gmail.com" }

  s.source       = { :git => "https://github.com/stanislaw/UIKitExtensions.git", :tag => s.version.to_s }

  s.platform     = :ios, '5.0'

  s.source_files = 'UIKitExtensions/**/*.{h,m}'
  s.header_mappings_dir = 'UIKitExtensions'

  s.framework  = 'UIKit'
  s.weak_frameworks = 'CoreGraphics'
  s.requires_arc = true
end
