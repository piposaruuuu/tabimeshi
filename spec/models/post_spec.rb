require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '商品出品機能' do
    context '入力に問題がなければ料理の投稿ができる' do
      it '必須項目が全てあれば投稿できる' do
        expect(@post).to be_valid
      end
    end
    context '入力に問題があれば料理の投稿ができない' do
      it 'imageが空は出品できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include "Image can't be blank"
      end
      it '料理名が空だと投稿できない' do
        @post.meal_name = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Meal name can't be blank"
      end
      it '料理の説明が空だと投稿できない' do
        @post.text = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Text can't be blank"
      end
      it '国名が空だと投稿できない' do
        @post.country = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Country can't be blank"
      end
      it '店名が空だと投稿できない' do
        @post.restaurant_name = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Restaurant name can't be blank"
      end
      it 'genreが未選択だと投稿できない' do
        @post.genre_id = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Genre can't be blank"
      end
      it 'person_numberが未選択だと投稿できない' do
        @post.person_number_id = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Person number can't be blank"
      end
      it 'time_periodが未選択だと投稿できない' do
        @post.time_period_id = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Time period can't be blank"
      end
      it 'priceが未選択だと投稿できない' do
        @post.price_id = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Price can't be blank"
      end
      it 'genreが1では投稿できない' do
        @post.genre_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include "Genre can't be blank"
      end
      it 'person_numberが1では投稿できない' do
        @post.person_number_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include "Person number can't be blank"
      end
      it 'time_periodが1では投稿できない' do
        @post.time_period_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include "Time period can't be blank"
      end
      it 'priceが1では投稿できない' do
        @post.price_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include "Price can't be blank"
      end
    end
  end
end
