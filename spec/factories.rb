FactoryBot.define do
  factory(:user) do
    user_name('captain')
    name('Morty')
    email('Morty@m.com')
    password('Morty32')
      is_admin('false')
  end
  factory(:product) do
    name('Cursed Box')
    description("It's cursed... what more do you need to know?")
    found_in("Grandma's Attic")
    going_price(50)
    user_id(1)
  end
end
