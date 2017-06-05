class MvpGenerator

  def generate(module_name)
    file_names = ['template_activity.txt', 'template_presenter.txt',
                  'template_repository.txt', 'template_service.txt',
                  'template_model.txt']

    file_names.each do |file_name|
      text = File.read(file_name)
      new_contents = text.gsub("${module_name}", module_name)

      new_file_name = ""

      case file_name
      when 'template_activity.txt'
          new_file_name = module_name + "Activity.java"
      when 'template_presenter.txt'
          new_file_name = module_name + "Presenter.java"
      when 'template_repository.txt'
        new_file_name = module_name + "Repository.java"
      when 'template_service.txt'
          new_file_name = module_name + "Service.java"
        when 'template_model.txt'
            new_file_name = module_name + "Model.java"
      else
        new_file_name = "error"
      end

      File.open(new_file_name, "w") {|file| file.puts new_contents }
    end
  end

end
