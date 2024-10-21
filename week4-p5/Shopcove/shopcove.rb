class Product
  attr_accessor :name, :price, :stock, :company

  def initialize(name, price, stock, company)
    @name = name
    @price = price
    @stock = stock
    @company = company
  end
end

class Store
  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
    puts "#{product.name} has been added to Store\n\n"
  end

  def check_storage
    if @products.empty?
      puts "Currently the storage is empty"
      return true
    end
    false
  end

  def list_products
    if @products.empty?
      puts "Currently the storage is empty"
    else
      puts "Current Storage: "
      @products.each do |product|
        puts "Name: #{product.name}, Price: $#{product.price}, Stock: #{product.stock}, Company: #{product.company}"
      end
    end
    puts ""
  end

  def update_product(name, new_price, new_stock, new_company)
    product = @products.find { |p| p.name == name }
    if product
      product.price = new_price
      product.stock = new_stock
      product.company = new_company
      puts "#{name} has been updated.\n\n"
    else
      puts "Product not found.\n\n"
    end
  end

  def manage_stock(name, quantity)
    product = @products.find { |p| p.name == name }
    if product
      if product.stock + quantity < 0
        puts "You don't have enough number of stocks\n\n"
      else
        product.stock += quantity
        puts "Total stocks now are: #{product.stock}\n\n"
      end
    else
      puts "Product not found.\n\n"
    end
  end

  def delete_product(name)
    product = @products.find { |p| p.name == name }
    if product
      @products.delete(product)
      puts "#{name} product has been deleted.\n\n"
    else
      puts "Product not found.\n\n"
    end
  end

end

def main
  store = Store.new

  loop do
    puts "1. Add product"
    puts "2. List products"
    puts "3. Update products"
    puts "4. Manage stocks"
    puts "5. Delete product"
    puts "6. Exit"
    print "Enter your choice: "

    choice = gets.chomp.to_i
    puts ""

    case choice
    when 1
      print "Enter the name: "
      name = gets.chomp
      print "Enter the price: "
      price = gets.chomp.to_f
      print "Enter the stocks: "
      stock = gets.chomp.to_i
      print "Enter the name of company: "
      company = gets.chomp
      store.add_product(Product.new(name, price, stock, company))
    when 2
      store.list_products()
    when 3
      if store.check_storage()
        return
      else
        print "Enter the name of product to update: "
        name = gets.chomp
        print "Enter the new price: "
        new_price = gets.chomp.to_f
        print "Enter the new stocks: "
        new_stock = gets.chomp.to_i
        print "Enter the new company name: "
        new_company = gets.chomp
        store.update_product(name, new_price, new_stock, new_company)
      end
    when 4
      if store.check_storage()
        return
      else
        print "Enter the product which stocks you need to change: "
        name = gets.chomp
        print "Add or remove the number of stocks (negative number to remove): "
        quantity = gets.chomp.to_i
        store.manage_stock(name, quantity)
      end
    when 5
      print "Enter the product to delete: "
      name = gets.chomp
      store.delete_product(name)
    when 6
      puts "Exiting..."
      break
    else
      puts "Enter a valid choice.\n\n"
    end
  end
end

main