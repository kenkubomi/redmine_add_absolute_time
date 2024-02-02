module ApplicationHelperPatch
  def time_tag(time)
    return if time.nil?

    text = distance_of_time_in_words(Time.now, time)
    text = "[#{format_time(time)}] #{text}"
    if @project
      link_to(text,
              project_activity_path(@project, :from => User.current.time_to_date(time)),
              :title => format_time(time))
    else
      content_tag('abbr', text, :title => format_time(time))
    end
  end
end
