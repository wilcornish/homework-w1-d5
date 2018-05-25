def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, sold_pets)
 shop[:admin][:pets_sold] += sold_pets
end

def stock_count(shop)
  return shop[:pets].count()
end

def pets_by_breed(shop, searched_breed)
  pets_by_breed = []
  for pet in shop[:pets]
    pets_by_breed.push(pet) if pet[:breed] == searched_breed
  end
  return pets_by_breed
end

def find_pet_by_name(shop, searched_name)
  for pet in shop[:pets]
  return pet if pet[:name] == searched_name
  end
  return nil
end

def remove_pet_by_name(shop, name_to_delete)
  for pet in shop[:pets]
  shop[:pets].delete(pet) if pet[:name] == name_to_delete
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
 return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count()
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

def customer_can_afford_pet(customer, pet)
  customer[:cash] >= pet[:price]
end

def sell_pet_to_customer(shop, pet, customer)
return if pet == nil
return if customer_can_afford_pet(customer, pet) != true

add_pet_to_customer(customer, pet)
remove_customer_cash(customer, pet[:price])
add_or_remove_cash(shop, pet[:price])
increase_pets_sold(shop, 1)
end

# current errors:
# - returning nil for pet (line 72) doesn't end process but instead feeds nil to later functions
# - successful sell of pet does not cause increase customer pet?
