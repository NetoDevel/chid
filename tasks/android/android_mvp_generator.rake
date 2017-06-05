desc 'Generate MVP structure for android'
task :mvp => [:module_name, :directory_app] do |t, args|

  module_name = args[:module_name]
  directory_app = args[:directory_app]

  unless module_name
    print "You must enter the module name"
    print "> "
    module_name = STDIN.gets.strip
  end

  unless directory_app
    print "You must enter the module name"
    print "> "
    directory_app = STDIN.gets.strip
  end

  puts "Generating..."
  mvp_generator = MvpGenerator.new
  mvp_generator.generate(module_name)
  puts "Done."

end
