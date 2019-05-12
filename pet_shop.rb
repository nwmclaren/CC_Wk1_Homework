def pet_shop_name(name_hash)
return name_hash[:name]
end

def total_cash(cash_hash)
return cash_hash[:admin][:total_cash]
end

def add_or_remove_cash(cash_hash, amount)
cash_hash[:admin][:total_cash] += amount
end

def pets_sold(pets_sold_hash)
return pets_sold_hash[:admin][:pets_sold]
end

def increase_pets_sold(pets_sold_hash, amount)
pets_sold_hash[:admin][:pets_sold] += amount
end

def stock_count(pet_stock_count)
return pet_stock_count[:pets].length()
end

def pets_by_breed(pet_shop_hash, breed)
pets_array = []
for pet in pet_shop_hash[:pets]
  pets_array.push(pet) if pet[:breed] == breed
end
return pets_array
end

# require('pry')
# binding.pry

def find_pet_by_name(find_pet_hash,pet_name)
for pet in find_pet_hash[:pets]
  return pet if pet[:name] == pet_name
end
return nil
end

def remove_pet_by_name(pet_shop_hash, pet_name)
for pet in pet_shop_hash[:pets]
  if pet[:name] == pet_name
    pet[:name] = nil
  end
end
end

def add_pet_to_stock(pet_add_hash, new_pet_add)
pet_add_hash[:pets].push(new_pet_add)
end

def customer_cash(customer)
return customer[:cash]
end

def remove_customer_cash(customer_array, amount)
customer_array[:cash] -= amount
end

def customer_pet_count(customer_array)
customer_array[:pets].length()
end

def add_pet_to_customer(customer_array, new_pet_hash)

customer_array[:pets].push(new_pet_hash[:pet_type])

end

def customer_can_afford_pet(customer_array, new_pet_hash)

if customer_array[:cash] >= new_pet_hash[:price]
  return true
else
  return false
end

end
