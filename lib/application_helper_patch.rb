module ApplicationHelperPatch
  def time_tag(time)
    text = distance_of_time_in_words(Time.now, time)
    if @project
      " " + link_to("[#{format_time(time)}] #{text}", project_activity_path(@project, :from => User.current.time_to_date(time)), :title => format_time(time))
    else
      " " + content_tag('abbr', "[#{format_time(time)}] #{text}", :title => format_time(time))
    end
  end
end
