Pod::Spec.new do |s|
  s.name                 = "libbson"
  s.version              = "1.1.11"
  s.summary              = "A BSON utility library."
  s.description          = "https://github.com/mongodb/libbson#libbson"
  s.homepage             = "https://github.com/mongodb/libbson"
  s.license              = { :type => "Apache License, Version 2.0", :file => "COPYING" }
  s.author               = "MongoDB"
  s.social_media_url     = "http://twitter.com/mongodb"
  s.source               = { :git => "https://github.com/mongodb/libbson.git", :tag => "#{s.version}" }
  # s.prepare_command      = './autogen.sh && ./configure'
  s.source_files         = "src/bson/*.{c,h}", "src/yajl/*.{c,h}", "src/jsonsl/*.{c,h}"
  s.exclude_files        = "src/**/*-win32.h"
  s.header_mappings_dir  = "src"
  s.private_header_files = "src/bson/*-private.h"
  s.module_name          = "bson"
  s.compiler_flags       = "-DBSON_COMPILATION"
  s.requires_arc         = false
  s.pod_target_xcconfig  = { "HEADER_SEARCH_PATHS" => "$(PODS_TARGET_SRCROOT)/src", "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES" }
  s.user_target_xcconfig  = { "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES" }
  s.module_map = "libbson.modulemap"
  s.platform = :osx
end
