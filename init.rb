Redmine::Plugin.register :redmine_add_absolute_time do
  name 'Redmine Add Absolute Time plugin'
  author 'Ken Kubomi'
  description 'This is a plugin that adds an absolute time notation to the relative time notation.'
  version '0.0.2'
  url 'https://github.com/kenkubomi/redmine_add_absolute_time'
  author_url 'https://qiita.com/kenkubomi'
end

ApplicationHelper.prepend(ApplicationHelperPatch)
