require 'machinist/active_record'

# Add your blueprints here.

User.blueprint do
  name {'Some nice guy'}
  email {"someniceguy#{sn}@gmail.com"}
  password {'niceguy123'}
  password_confirmation {'niceguy123'}
end

Authorization.blueprint do
  user {User.make!}
  provider {"facebook"}
  uid {10000}
end

Language.blueprint do
  name {'English'}
  english_name {'English'}
  slug {'en'}
  visible {false}
end

TopBanner.blueprint do
  title1 {'Placeholder title 1'}
  text1 {'Placeholder lorem ipsum dolor sit amet 1'}
  title2 {'Placeholder title 2'}
  text2 {'Placeholder lorem ipsum dolor sit amet 2'}
  language {Language.make!}
end

WhatIsSection.blueprint do
  title1 {'Mission'}
  text1 {'To conquer the world'}
  title2 {'Values'}
  text2 {'One, two, three, four'}
  title3 {'history'}
  text3 {'Once uppon a time...'}
  title4 {'Past Projects'}
  text4 {'OuiShare Fest, and more!'}
  language {Language.make!}
  image1 { File.open("#{Rails.root}/spec/fixtures/image.png") }
  image2 { File.open("#{Rails.root}/spec/fixtures/image.png") }
  image3 { File.open("#{Rails.root}/spec/fixtures/image.png") }
  image4 { File.open("#{Rails.root}/spec/fixtures/image.png") }
end

About.blueprint do
  main_title { 'Some nice title' }
  main_text1 { 'Some nice text' }
  main_text2 { 'Some nice text' }
  title1 { 'Some nice title' }
  text1 { 'Some nice text' }
  title2 { 'Some nice title' }
  text2 { 'Some nice text' }
  title3 { 'Some nice title' }
  text3 { 'Some nice text' }
  title4 { 'Some nice title' }
  text4 { 'Some nice text' }
end

Activity.blueprint do
  name { 'Some nice activity' }
  text { 'Some nice text' }
  link { 'http://nice.link' }
end

AdvisorsPage.blueprint do
  title { 'Some nice title' }
  text { 'Some nice text' }
  link_text { 'Some nice link' }
end

ArticlesSection.blueprint do
  title { 'Some nice title' }
  text { 'Some nice text' }
  link_text { 'Some nice link' }
end

Cocreation.blueprint do
  text { 'Some nice text' }
  name { 'Some nice name' }
  link { 'http://somenice.link' }
end

CocreationPage.blueprint do
  text { 'Some nice text' }
end

CollaborativeEconomyPage.blueprint do
  main_text { 'Some nice text' }
  title1 { 'Some nice title' }
  text1 { 'Some nice text' }
  title2 { 'Some nice title' }
  text2 { 'Some nice text' }
  title3 { 'Some nice title' }
  text3 { 'Some nice text' }
  title4 { 'Some nice title' }
  text4 { 'Some nice text' }
  title5 { 'Some nice title' }
  text5 { 'Some nice text' }
end

CommunityPage.blueprint do
  main_text { 'Some nice text' }
  main_text2 { 'Some nice text' }
end

Region.blueprint do
  title { 'Some nice title' }
end

Community.blueprint do
  text { 'Some nice text' }
  name { 'Some nice name' }
  link { 'http://somenice.link' }
  region { Region.make! }
end

ContactPage.blueprint do
  title { 'Some nice title' }
  text { 'Some nice text' }
end

DonationPage.blueprint do
  main_title { 'Some nice title' }
  main_text { 'Some nice text' }
  thanks_text { 'Some nice thanks' }
  title1 { 'Some nice title' }
  text1 { 'Some nice text' }
  title2 { 'Some nice title' }
  text2 { 'Some nice text' }
end

EventsSection.blueprint do
  title { 'Some nice title' }
  text { 'Some nice text' }
end

Event.blueprint do
  title { 'Some nice title' }
  place { 'Some nice place' }
  date_start { Time.now + 10.days }
  date_end { Time.now + 12.days }
  time { Time.now }
  resume { 'Some nice resume' }
  info { 'Some nice info' }
  join_us_text { 'Get with us, we are nice' }
  service1_link { 'http://somenice.link' }
  service1_title { 'Some nice service' }
  service2_link { 'http://somenice.link' }
  service2_title { 'Some nice service' }
  service3_link { 'http://somenice.link' }
  service3_title { 'Some nice service' }
  title1 { 'Some nice title' }
  text1 { 'Some nice text' }
  title2 { 'Some nice title' }
  text2 { 'Some nice text' }
  visible { true }
  slug { 'nice_event' }
  address { 'Rua Liberdade, 553, Porto Alegre - RS' }
end

ExpertGroupsPage.blueprint do
  main_text { 'Some nice text' }
end

ExpertGroup.blueprint do
  name { 'Some nice name' }
  text { 'Some nice text' }
  link { 'http://somenice.link' }
end
