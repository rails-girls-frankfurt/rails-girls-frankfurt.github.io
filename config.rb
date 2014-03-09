activate :livereload

activate :blog do |blog|
  blog.permalink = "blog/{title}.html"
  blog.sources = "blog/{year}-{month}-{day}-{title}.html"
  blog.layout = "blog-layout"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
end

page "/feed.xml", layout: false

activate :directory_indexes

configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
end