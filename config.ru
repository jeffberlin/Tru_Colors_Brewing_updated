use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"

map "/" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/index.html', File::RDONLY)
    ]
  }
end

map "/apply" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/apply.html', File::RDONLY)
    ]
  }
end

map "/contractors" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/contractor.html', File::RDONLY)
    ]
  }
end

map "/team" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/team.html', File::RDONLY)
    ]
  }
end

map "/events" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/events.html', File::RDONLY)
    ]
  }
end

map "/contact" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/contact.html', File::RDONLY)
    ]
  }
end

map "/contractor" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/contractor-submitted.html', File::RDONLY)
    ]
  }
end

map "/apprentice" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/apprentice-submitted.html', File::RDONLY)
    ]
  }
end

map "/thanks" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/thanks.html', File::RDONLY)
    ]
  }
end

# map "/blog" do
#   run lambda { |env|
#     [
#       200,
#       {
#         'Content-Type'  => 'text/html',
#         'Cache-Control' => 'public, max-age=86400'
#       },
#       File.open('public/blog.php', File::RDONLY)
#     ]
#   }
# end

# map "/shop" do
#   run lambda { |env|
#     [
#       302, {'Location' => "https://tru-colors-merchandise.myshopify.com/"}, []
#     ]
#   }
# end