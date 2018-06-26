project_name = ARGV[0]
Dir.mkdir project_name
FileUtils.mkdir_p "#{project_name}/lib"
FileUtils.mkdir_p "#{project_name}/spec"
FileUtils.touch "#{project_name}/README.md"
FileUtils.touch "#{project_name}/lib/#{project_name}.rb"
FileUtils.touch "#{project_name}/spec/#{project_name}_spec.rb"
File.open("#{project_name}/README.md", 'w') { |file| file.write("# #{project_name} \n\n#### some kind of header here: date here\n\n#### By name here\n\n## Description\n\ndescription here\n\n## Setup/Contribution Requirements\n\n1. fill this in, dummy\n\n## Technologies Used\n\n** details here\n\n## Specs/Steps\n*specs here\n## License\n\nThis software is licensed under the MIT license.\n\nCopyright (c)2018 **info here**") }
puts "All done"
