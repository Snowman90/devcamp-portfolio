3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ut est mi. In hac habitasse platea dictumst. Vestibulum purus lacus, mollis nec vulputate vel, convallis vitae elit. Ut egestas porttitor nunc, id ullamcorper mi hendrerit in. Aliquam in lacus nibh. Nulla non viverra dolor. Aliquam eget rhoncus velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse iaculis nibh eget eleifend dictum. Nulla nibh erat, maximus sed erat vitae, molestie mattis sapien.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ut est mi. In hac habitasse platea dictumst. Vestibulum purus lacus",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ut est mi. In hac habitasse platea dictumst. Vestibulum purus lacus",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
    )
end


puts "9 portfolio created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
    )
end

puts "3 technologies created"