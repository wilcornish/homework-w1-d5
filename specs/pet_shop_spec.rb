require 'minitest/autorun'
require_relative '../pet_shop'

class TestPetShop < Minitest::Test

  def setup

    @customers = [
      {
        name: "Craig",
        pets: [],
        cash: 1000
      },
      {
        name: "Zsolt",
        pets: [],
        cash: 50
      }
    ]

    @new_pet = {
            name: "Bors the Younger",
            pet_type: :cat,
            breed: "Cornish Rex",
            price: 100
          }

    @pet_shop = {
        pets: [
          {
            name: "Sir Percy",
            pet_type: :cat,
            breed: "British Shorthair",
            price: 500
          },
          {
            name: "King Bagdemagus",
            pet_type: :cat,
            breed: "British Shorthair",
            price: 500
          },
          {
            name: "Sir Lancelot",
            pet_type: :dog,
            breed: "Pomsky",
            price: 1000,
          },
          {
            name: "Arthur",
            pet_type: :dog,
            breed: "Husky",
            price: 900,
          },
          {
            name: "Tristan",
            pet_type: :dog,
            breed: "Basset Hound",
            price: 800,
          },
          {
            name: "Merlin",
            pet_type: :cat,
            breed: "Egyptian Mau",
            price: 1500,
          }
        ],
        admin: {
          total_cash: 1000,
          pets_sold: 0,
        },
        name: "Camelot of Pets"
      }
  end
#1
  def test_pet_shop_name
    skip
    name = pet_shop_name(@pet_shop)
    assert_equal("Camelot of Pets", name)
  end
#2
  def test_total_cash
    skip
    sum = total_cash(@pet_shop)
    assert_equal(1000, sum)
  end
#3
  def test_add_or_remove_cash__add
    skip
    add_or_remove_cash(@pet_shop,10)
    cash = total_cash(@pet_shop)
    assert_equal(1010, cash)
  end
#4
  def test_add_or_remove_cash__remove
    skip
    add_or_remove_cash(@pet_shop,-10)
    cash = total_cash(@pet_shop)
    assert_equal(990, cash)
  end
#5
  def test_pets_sold
    skip
    sold = pets_sold(@pet_shop)
    assert_equal(0, sold)
  end
#6
  def test_increase_pets_sold
    skip
    increase_pets_sold(@pet_shop,2)
    sold = pets_sold(@pet_shop)
    assert_equal(2, sold)
  end
#7
  def test_stock_count
    skip
    count = stock_count(@pet_shop)
    assert_equal(6, count)
  end
#8
  def test_all_pets_by_breed__found
    skip
    pets = pets_by_breed(@pet_shop, "British Shorthair")
    assert_equal(2, pets.count)
  end
#9
  def test_all_pets_by_breed__not_found
    skip
    pets = pets_by_breed(@pet_shop, "Dalmation")
    assert_equal(0, pets.count)
  end
#10
  def test_find_pet_by_name__returns_pet
    pet = find_pet_by_name(@pet_shop, "Arthur")
    assert_equal("Arthur", pet[:name])
  end
#11
  def test_find_pet_by_name__returns_nil
    pet = find_pet_by_name(@pet_shop, "Fred")
    assert_nil(pet)
  end
#12
  def test_remove_pet_by_name
    skip
    remove_pet_by_name(@pet_shop, "Arthur")
    pet = find_pet_by_name(@pet_shop,"Arthur")
    assert_nil(pet)
  end
#13
  def test_add_pet_to_stock
    add_pet_to_stock(@pet_shop, @new_pet)
    count = stock_count(@pet_shop)
    assert_equal(7, count)
  end
#14
  # def test_customer_cash
  #   cash = customer_cash(customer[0])
  #   assert_equal(1000, cash)
  # end
#15
  # def test_remove_customer_cash
  #   customer = @customers[0]
  #   remove_customer_cash(customer, 100)
  #   assert_equal(900, customer[:cash])
  # end
#16
  # def test_customer_pet_count
  #   count = customer_pet_count(@customers[0])
  #   assert_equal(0, count)
  # end
#17
  # def test_add_pet_to_customer
  #   customer = @customers[0]
  #   add_pet_to_customer(customer, @new_pet)
  #   assert_equal(1, customer_pet_count(customer))
  # end

  # # OPTIONAL
#18
  # def test_customer_can_afford_pet__insufficient_funds
  #   customer = @customers[1]
  #   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
  #   assert_equal(false, can_buy_pet)
  # end
#19
  # def test_customer_can_afford_pet__sufficient_funds
  #   customer = @customers[0]
  #   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
  #   assert_equal(true, can_buy_pet)
  # end
#20
  # #These are 'integration' tests so we want multiple asserts.
  # #If one fails the entire test should fail
  #   customer = @customers[0]
  #   pet = find_pet_by_name(@pet_shop,"Arthur")

  #   sell_pet_to_customer(@pet_shop, pet, customer)

  #   assert_equal(1, customer_pet_count(customer))
  #   assert_equal(1, pets_sold(@pet_shop))
  #   assert_equal(100, customer_cash(customer))
  #   assert_equal(1900, total_cash(@pet_shop))
  # end

#21
  # def test_sell_pet_to_customer__pet_not_found
  #   customer = @customers[0]
  #   pet = find_pet_by_name(@pet_shop,"Dave")

  #   sell_pet_to_customer(@pet_shop, pet, customer)

  #   assert_equal(0, customer_pet_count(customer))
  #   assert_equal(0, pets_sold(@pet_shop))
  #   assert_equal(1000, customer_cash(customer))
  #   assert_equal(1000, total_cash(@pet_shop))
  # end

#22
  # def test_sell_pet_to_customer__insufficient_funds
  #   customer = @customers[1]
  #   pet = find_pet_by_name(@pet_shop,"Arthur")

  #   sell_pet_to_customer(@pet_shop, pet, customer)

  #   assert_equal(0, customer_pet_count(customer))
  #   assert_equal(0, pets_sold(@pet_shop))
  #   assert_equal(1000, customer_cash(@pet_shop))
  #   assert_equal(1000, total_cash(@pet_shop))
  # end

end
