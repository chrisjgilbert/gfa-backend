# frozen_string_literal: true

eateries = [
  { 
    name: 'Pizza Express',
    cuisines: [Cuisine.find_or_create_by!(name: 'Pizza')],
    description: "I'm baby readymade plaid deep v craft beer meh banjo semiotics iceland."
  },
  { 
    name: 'Franca Manca',
    cuisines: [Cuisine.find_or_create_by!(name: 'Pizza')],
    description: "Shoreditch health goth mustache air plant pour-over."
  },
  { 
    name: 'Bodeans',
    cuisines: [Cuisine.find_or_create_by!(name: 'Burgers')],
    description: "Lo-fi selfies ramps, sustainable retro copper mug poutine pickled pinterest."
  },
  { 
    name: 'Honest Burgers',
    cuisines: [Cuisine.find_or_create_by!(name: 'Burgers')],
    description: "Lo-fi selfies ramps, sustainable retro copper mug poutine pickled pinterest."
  },
  { 
    name: 'Pho',
    cuisines: [Cuisine.find_or_create_by!(name: 'Burgers')]
  },
  { 
    name: 'Manchester Munch',
    cuisines: [Cuisine.find_or_create_by!(name: 'Burgers')]
  },
]

users = [
  {username: 'user123'}, {username: 'Happy User 1'}, {username: 'Fun User 325'}
]

users.each { |user| User.create!(user) }

reviews = [
  { 
    content: "I'm baby readymade plaid deep v craft beer meh banjo semiotics iceland. Shoreditch health goth mustache air plant pour-over. Semiotics williamsburg butcher venmo tumblr la croix. Seitan retro banjo, four loko craft beer pug godard williamsburg echo park hashtag freegan.",
    gluten_free_range: rand(0...5),
    value: rand(0...5),
    service: rand(0...5),
    eatery_id: rand(1...eateries.length),
    user_id: User.first.id
  },
  { 
    content: "Craft beer typewriter squid vinyl. Shoreditch affogato aesthetic, brunch knausgaard edison bulb 3 wolf moon vaporware narwhal. Kitsch cold-pressed readymade kombucha, pop-up banjo meh letterpress yr. Banjo copper mug venmo activated charcoal selvage banh mi squid truffaut you probably haven't heard of them PBR&B. Meggings mumblecore green juice pop-up craft beer sriracha cronut tumeric poutine.",
    gluten_free_range: rand(0...5),
    value: rand(0...5),
    service: rand(0...5),
    eatery_id: rand(1...eateries.length),
    user_id: User.first.id
  },
  { 
    content: "Lo-fi selfies ramps, sustainable retro copper mug poutine pickled pinterest. Knausgaard paleo normcore, taxidermy poutine skateboard letterpress brunch keytar. Chambray crucifix single-origin coffee ennui. Prism try-hard tote bag woke, intelligentsia wolf shabby chic pitchfork keffiyeh sriracha synth humblebrag raw denim activated charcoal yuccie. Beard yuccie iceland DIY tote bag etsy viral next level franzen hella before they sold out freegan literally poutine banh mi.",
    gluten_free_range: rand(0...5),
    value: rand(0...5),
    service: rand(0...5),
    eatery_id: rand(1...eateries.length),
    user_id: User.second.id
  },
  { 
    content: "Tousled try-hard polaroid before they sold out pour-over venmo semiotics williamsburg 3 wolf moon woke hashtag everyday carry. Kinfolk ramps meh single-origin coffee YOLO plaid. Keytar copper mug readymade asymmetrical forage chambray you probably haven't heard of them enamel pin swag paleo. Everyday carry raclette listicle poke, intelligentsia fanny pack pork belly 3 wolf moon activated charcoal tousled waistcoat glossier. Lo-fi fingerstache mustache master cleanse food truck put a bird on it, fam schlitz stumptown everyday carry jean shorts.",
    gluten_free_range: rand(0...5),
    value: rand(0...5),
    service: rand(0...5),
    eatery_id: rand(1...eateries.length),
    user_id: User.second.id
  },
  { 
    content: "Waistcoat slow-carb ennui shoreditch, seitan distillery small batch biodiesel cold-pressed disrupt vaporware glossier vegan raw denim. Tilde 8-bit DIY listicle meh vinyl. Slow-carb affogato microdosing green juice vexillologist, air plant mumblecore lumbersexual four dollar toast tilde bushwick scenester whatever. Tacos meggings food truck, vice tilde raw denim mixtape waistcoat migas.",
    gluten_free_range: rand(0...5),
    value: rand(0...5),
    service: rand(0...5),
    eatery_id: rand(1...eateries.length),
    user_id: User.third.id
  },
]

eateries.each do |eatery| 
  Restaurant.create!(
    name: eatery[:name],
    cuisines: eatery[:cuisines],
    description: eatery[:description]
  )
end

addresses = [
  Address.create!(building: '34 Northcote Road', city: 'London', country: 'UK', eatery_id: 1,),
  Address.create!(building: '63 Northcote Road', city: 'London', country: 'UK', eatery_id: 2,),
  Address.create!(building: '112 Balham Road', city: 'London', country: 'UK', eatery_id: 3),
  Address.create!(building: '1 Old Trafford', city: 'Manchester', country: 'UK', eatery_id: 4),
  Address.create!(building: '43 Battersea Rise', city: 'London', country: 'UK', eatery_id: 5),
  Address.create!(building: '1 Battersea Rise', city: 'London', country: 'UK', eatery_id: 6)
]

reviews.each { |review| Review.create!(review)}