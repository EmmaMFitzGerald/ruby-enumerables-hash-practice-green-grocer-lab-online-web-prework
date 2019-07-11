require "pry"

def consolidate_cart(cart)
  new_cart = {}
  cart.each do |item|
  name = item.keys[0]
    if new_cart[name].nil?
       new_cart[name] = item.values[0]
       new_cart[name] = new_cart[name].merge({:count => 1})
    else
      new_cart[name][:count] += 1
    end
    
  end
  
    new_cart
end

def apply_coupons(cart, coupon_array)
  result = {}
  # code here#
  cart.each do |food, info|
    coupons.each do |coupon|
      if food == coupon[:item] && info[:count] >= coupon[:num]
        info[:count] =  info[:count] - coupon[:num]
        if result["#{food} W/COUPON"]
          result["#{food} W/COUPON"][:count] += 1
        else
          result["#{food} W/COUPON"] = {:price => coupon[:cost], :clearance => info[:clearance], :count => 1}
        end
      end
    end
    result[food] = info
  end
  result
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
