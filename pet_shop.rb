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
