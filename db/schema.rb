<<<<<<< HEAD
# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140429085208) do

  create_table "products", :force => true do |t|
    t.string   "product_name"
    t.integer  "price"
    t.string   "category"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
=======
# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140429092858) do

  create_table "products", :force => true do |t|
    t.string   "product_name"
    t.integer  "price"
    t.string   "category"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
>>>>>>> e4d244ca964516874d2f82dec9246a4b363abb8e
