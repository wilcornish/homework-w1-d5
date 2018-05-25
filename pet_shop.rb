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

def remove_pet_by_name(shop, deleted_name)

end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
  shop[:admin][:pets_sold] += 1
end
