FactoryGirl.define do
  factory :user do
    name "Jack Reacher"
    username  "DragonSlayer"
    email "jackreacher@tomcruise.com"
    password "password123"
    password_confirmation "password123"
  end

  factory :place do
    name "Three Doors Down"
    address "1429 SE 37th Ave, Portland, OR 97214"
    description "Intimate Italian eatery offers refined comfort dishes in a contemporary space with a warm ambiance."
    hh_description "Small plates, cocktails, wine, and Rolling Rock"
    latitude "45.512519"
    longitude "-122.626019"
  end

  factory :happy_hour do
    start_time "5:00 PM"
    end_time "9:30 PM"
    details "Tuesday through Thursday and Sunday 4:00 PM and 9:00 PM"
  end

  factory :ratings do
    place "Three Doors Down"
    score "4"
    review "This place is a little more high-end than I like, but I do like vodka and sausage!"
  end
end
