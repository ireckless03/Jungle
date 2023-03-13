require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations for Product' do


    it 'creates new product with all fields entered' do
      @category = Category.create(name: "Shrubs")
      @product = Product.create(name: 'lilys', price: 20, quantity: 4, category: @category)
      expect(@product).to be_persisted
    end

    it 'Must have a name' do
      @category = Category.create(name: "Shrubs")
      @product = Product.create(quantity:12, price: 12, category: @category)
      expect(@product.name).to be_nil
      expect(@product.errors.messages[:name]).to include('can\'t be blank')    
    end

    it 'Must have a price' do
      @category = Category.create(name: "Shrubs")
      @product = Product.create(quantity:12, name: 'lilys', category: @category)
      expect(@product.price).to be_nil
      expect(@product.errors.messages[:price]).to include('can\'t be blank')    
    end

    it 'Must have a quantity' do
      @category = Category.create(name: "Shrubs")
      @product = Product.create(name:"12", price: 12, category: @category)
      expect(@product.quantity).to be_nil
      expect(@product.errors.messages[:quantity]).to include('can\'t be blank')    
    end

    it 'Must have a category' do
      @product = Product.create(quantity:12, price: 12, name: "lilys")
      expect(@product.category).to be_nil
      expect(@product.errors.messages[:category]).to include('can\'t be blank')    
    end
  end
end