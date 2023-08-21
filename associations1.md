Last login: Thu Aug 17 16:47:57 on ttys019
learnacademy@MacBook-Air-7 banking_app % code .
learnacademy@MacBook-Air-7 banking_app % rails c
Loading development environment (Rails 7.0.7)
3.2.0 :001 > Owner.all
  Owner Load (2.1ms)  SELECT "owners".* FROM "owners"
An error occurred when inspecting the object: #<ActiveRecord::StatementInvalid:"PG::UndefinedTable: ERROR:  relation \"owners\" does not exist\nLINE 1: SELECT \"owners\".* FROM \"owners\"\n                               ^\n">
Result of Kernel#inspect: #<Owner::ActiveRecord_Relation:0x000000010571eed0 @klass=Owner(Table doesn't exist), @table=#<Arel::Table:0x0000000105f10878 @name="owners", @klass=Owner(Table doesn't exist), @type_caster=#<ActiveRecord::TypeCaster::Map:0x000000010571bed8 @klass=Owner(Table doesn't exist)>, @table_alias=nil>, @values={}, @loaded=false, @predicate_builder=#<ActiveRecord::PredicateBuilder:0x00000001057f89a0 @table=#<ActiveRecord::TableMetadata:0x0000000105f796c0 @klass=Owner(Table doesn't exist), @arel_table=#<Arel::Table:0x0000000105f10878 @name="owners", @klass=Owner(Table doesn't exist), @type_caster=#<ActiveRecord::TypeCaster::Map:0x000000010571bed8 @klass=Owner(Table doesn't exist)>, @table_alias=nil>, @reflection=nil>, @handlers=[[Set, #<ActiveRecord::PredicateBuilder::ArrayHandler:0x00000001057f8360 @predicate_builder=#<ActiveRecord::PredicateBuilder:0x00000001057f89a0 ...>>], [Array, #<ActiveRecord::PredicateBuilder::ArrayHandler:0x00000001057f8428 @predicate_builder=#<ActiveRecord::PredicateBuilder:0x00000001057f89a0 ...>>], [ActiveRecord::Relation, #<ActiveRecord::PredicateBuilder::RelationHandler:0x00000001057f8518>], [Range, #<ActiveRecord::PredicateBuilder::RangeHandler:0x00000001057f8608 @predicate_builder=#<ActiveRecord::PredicateBuilder:0x00000001057f89a0 ...>>], [BasicObject, #<ActiveRecord::PredicateBuilder::BasicObjectHandler:0x00000001057f8720 @predicate_builder=#<ActiveRecord::PredicateBuilder:0x00000001057f89a0 ...>>]]>, @delegate_to_klass=false, @future_result=nil, @records=nil, @should_eager_load=false, @arel=#<Arel::SelectManager:0x00000001057f6600 @ast=#<Arel::Nodes::SelectStatement:0x0000000105f79670 @cores=[#<Arel::Nodes::SelectCore:0x0000000105cdc098 @source=#<Arel::Nodes::JoinSource:0x00000001057f63a8 @left=#<Arel::Table:0x0000000105f10878 @name="owners", @klass=Owner(Table doesn't exist), @type_caster=#<ActiveRecord::TypeCaster::Map:0x000000010571bed8 @klass=Owner(Table doesn't exist)>, @table_alias=nil>, @right=[]>, @set_quantifier=nil, @optimizer_hints=nil, @projections=[#<struct Arel::Attributes::Attribute relation=#<Arel::Table:0x0000000105f10878 @name="owners", @klass=Owner(Table doesn't exist), @type_caster=#<ActiveRecord::TypeCaster::Map:0x000000010571bed8 @klass=Owner(Table doesn't exist)>, @table_alias=nil>, name="*">], @wheres=[], @groups=[], @havings=[], @windows=[], @comment=nil>], @orders=[], @limit=nil, @lock=nil, @offset=nil, @with=nil>, @ctx=#<Arel::Nodes::SelectCore:0x0000000105cdc098 @source=#<Arel::Nodes::JoinSource:0x00000001057f63a8 @left=#<Arel::Table:0x0000000105f10878 @name="owners", @klass=Owner(Table doesn't exist), @type_caster=#<ActiveRecord::TypeCaster::Map:0x000000010571bed8 @klass=Owner(Table doesn't exist)>, @table_alias=nil>, @right=[]>, @set_quantifier=nil, @optimizer_hints=nil, @projections=[#<struct Arel::Attributes::Attribute relation=#<Arel::Table:0x0000000105f10878 @name="owners", @klass=Owner(Table doesn't exist), @type_caster=#<ActiveRecord::TypeCaster::Map:0x000000010571bed8 @klass=Owner(Table doesn't exist)>, @table_alias=nil>, name="*">], @wheres=[], @groups=[], @havings=[], @windows=[], @comment=nil>>>
 =>  
3.2.0 :002 > Owner.all
  Owner Load (1.3ms)  SELECT "owners".* FROM "owners"
 => [] 
3.2.0 :003 > Owner.create(name:"PrincessP", address:"123 Sunny San Dieg
o")
  TRANSACTION (0.2ms)  BEGIN
  Owner Create (3.6ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "PrincessP"], ["address", "123 Sunny San Diego"], ["created_at", "2023-08-18 17:30:22.990289"], ["updated_at", "2023-08-18 17:30:22.990289"]]
  TRANSACTION (1.4ms)  COMMIT
 => #<Owner:0x00000001062544a8> 
3.2.0 :004 > Owner.first
  Owner Load (0.4ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => #<Owner:0x000000010657fdd0> 
3.2.0 :005 > Owner.all
  Owner Load (0.5ms)  SELECT "owners".* FROM "owners"
 => [#<Owner:0x000000010657dfd0>] 
3.2.0 :006 > exit
learnacademy@MacBook-Air-7 banking_app % rails c
Loading development environment (Rails 7.0.7)
3.2.0 :001 > Owner.all
  Owner Load (1.3ms)  SELECT "owners".* FROM "owners"
 => 
[#<Owner:0x0000000104f5a780
  id: 1,
  name: "PrincessP",
  address: "123 Sunny San Diego",
  created_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00>] 
3.2.0 :002 > Owner.create(name:"Stevie", adress:"456 Heat Wave Wichita"
)
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.7/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'adress' for Owner. (ActiveModel::UnknownAttributeError)

          raise UnknownAttributeError.new(self, k.to_s)
          ^^^^^
3.2.0 :003 >  Owner.create(name:"Stevie", adress:"456 Heat Wave Wichita
"
3.2.0 :004 >  )
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.7/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'adress' for Owner. (ActiveModel::UnknownAttributeError)

          raise UnknownAttributeError.new(self, k.to_s)
          ^^^^^
3.2.0 :005 > Owner.create(name:"Stevie", address:"456 Heat Wave Wichita
")
  TRANSACTION (4.9ms)  BEGIN
  Owner Create (8.0ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Stevie"], ["address", "456 Heat Wave Wichita"], ["created_at", "2023-08-18 17:40:43.851271"], ["updated_at", "2023-08-18 17:40:43.851271"]]
  TRANSACTION (1.0ms)  COMMIT
 => 
#<Owner:0x0000000105493490
 id: 2,
 name: "Stevie",
 address: "456 Heat Wave Wichita",
 created_at: Fri, 18 Aug 2023 17:40:43.851271000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:40:43.851271000 UTC +00:00> 
3.2.0 :006 > Owner.create(name:"Pam Pam", address:"456 Heat Wave Wichit
a")
  TRANSACTION (0.2ms)  BEGIN
  Owner Create (0.4ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Pam Pam"], ["address", "456 Heat Wave Wichita"], ["created_at", "2023-08-18 17:41:37.358567"], ["updated_at", "2023-08-18 17:41:37.358567"]]
  TRANSACTION (0.4ms)  COMMIT
 => 
#<Owner:0x0000000105d1a3c0
 id: 3,
 name: "Pam Pam",
 address: "456 Heat Wave Wichita",
 created_at: Fri, 18 Aug 2023 17:41:37.358567000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:41:37.358567000 UTC +00:00> 
3.2.0 :007 > princessp = Owner.first
  Owner Load (0.8ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => 
#<Owner:0x0000000105d5a3d0
... 
3.2.0 :008 > princessp
 => 
#<Owner:0x0000000105d5a3d0
 id: 1,
 name: "PrincessP",
 address: "123 Sunny San Diego",
 created_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00> 
3.2.0 :009 > princessp.credit_cards.create(number:"123-456-7890", expir
ation_date:"12/34")
  TRANSACTION (0.1ms)  BEGIN
  CreditCard Create (3.2ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "123-456-7890"], ["expiration_date", "12/34"], ["owner_id", 1], ["created_at", "2023-08-18 17:46:58.780734"], ["updated_at", "2023-08-18 17:46:58.780734"]]
  TRANSACTION (0.2ms)  COMMIT
 => 
#<CreditCard:0x0000000104467dc8
 id: 1,
 number: "123-456-7890",
 expiration_date: "12/34",
 owner_id: 1,
 created_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00> 
3.2.0 :010 > stevie = Owner.find2
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.7/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `find2' for Owner:Class (NoMethodError)
Did you mean?  find
3.2.0 :011 > stevie = Owner.find 2
  Owner Load (0.2ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
 => 
#<Owner:0x0000000105f35790
... 
3.2.0 :012 > stevie.credit_cards.create(number:"123-456-7890", expirati
on_date:"12/34")
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.4ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "123-456-7890"], ["expiration_date", "12/34"], ["owner_id", 2], ["created_at", "2023-08-18 17:50:29.558236"], ["updated_at", "2023-08-18 17:50:29.558236"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<CreditCard:0x0000000105e35020
 id: 2,
 number: "123-456-7890",
 expiration_date: "12/34",
 owner_id: 2,
 created_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00> 
3.2.0 :013 > pampam = Owner.find 3
  Owner Load (76.3ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => 
#<Owner:0x0000000105d576d0
... 
3.2.0 :014 > pampam.credit_cards.create(number:"123-456-7890", expirati
on_date:"12/34")
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (3.8ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "123-456-7890"], ["expiration_date", "12/34"], ["owner_id", 3], ["created_at", "2023-08-18 17:52:27.031209"], ["updated_at", "2023-08-18 17:52:27.031209"]]
  TRANSACTION (0.4ms)  COMMIT
 => 
#<CreditCard:0x0000000105e1e9d8
 id: 3,
 number: "123-456-7890",
 expiration_date: "12/34",
 owner_id: 3,
 created_at: Fri, 18 Aug 2023 17:52:27.031209000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:52:27.031209000 UTC +00:00> 
3.2.0 :015 > stevie.credit_cards.create(number:"234-456-7890", expirati
on_date:"23/45")
  TRANSACTION (0.4ms)  BEGIN
  CreditCard Create (0.7ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "234-456-7890"], ["expiration_date", "23/45"], ["owner_id", 2], ["created_at", "2023-08-18 17:54:36.154357"], ["updated_at", "2023-08-18 17:54:36.154357"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<CreditCard:0x0000000105e18218
 id: 4,
 number: "234-456-7890",
 expiration_date: "23/45",
 owner_id: 2,
 created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00> 
3.2.0 :016 > stevie.credit_cards.create(number:"987-654-3210", expirati
on_date:"09/87")
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.3ms)  INSERT INTO "credit_cards" ("number", "expiration_date", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "987-654-3210"], ["expiration_date", "09/87"], ["owner_id", 2], ["created_at", "2023-08-18 17:55:30.008872"], ["updated_at", "2023-08-18 17:55:30.008872"]]
  TRANSACTION (0.6ms)  COMMIT
 => 
#<CreditCard:0x0000000105d3d5c8
 id: 5,
 number: "987-654-3210",
 expiration_date: "09/87",
 owner_id: 2,
 created_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00> 
3.2.0 :017 > stevie
 => 
#<Owner:0x0000000105f35790
 id: 2,
 name: "Stevie",
 address: "456 Heat Wave Wichita",
 created_at: Fri, 18 Aug 2023 17:40:43.851271000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:40:43.851271000 UTC +00:00> 
3.2.0 :018 > stevie.credit_cards
  CreditCard Load (1.5ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 2]]
 => 
[#<CreditCard:0x0000000105e35020
  id: 2,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00>,
 #<CreditCard:0x0000000105e18218
  id: 4,
  number: "234-456-7890",
  expiration_date: "23/45",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00>,
 #<CreditCard:0x0000000105d3d5c8
  id: 5,
  number: "987-654-3210",
  expiration_date: "09/87",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00>] 
3.2.0 :019 > credit_cards.all
(irb):19:in `<main>': undefined local variable or method `credit_cards' for main:Object (NameError)

credit_cards.all
^^^^^^^^^^^^
3.2.0 :020 > CreditCard.all
  CreditCard Load (0.5ms)  SELECT "credit_cards".* FROM "credit_cards"
 => 
[#<CreditCard:0x0000000105f3c450
  id: 1,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 1,
  created_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00>,
 #<CreditCard:0x0000000105f3c310
  id: 2,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00>,
 #<CreditCard:0x0000000105f3c1d0
  id: 3,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 3,
  created_at: Fri, 18 Aug 2023 17:52:27.031209000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:52:27.031209000 UTC +00:00>,
 #<CreditCard:0x0000000105f3c090
  id: 4,
  number: "234-456-7890",
  expiration_date: "23/45",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00>,
 #<CreditCard:0x0000000105f3bf50
  id: 5,
  number: "987-654-3210",
  expiration_date: "09/87",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00>] 
3.2.0 :021 > Owner.all
  Owner Load (0.6ms)  SELECT "owners".* FROM "owners"
 => 
[#<Owner:0x0000000105edcfa0
  id: 1,
  name: "PrincessP",
  address: "123 Sunny San Diego",
  created_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00>,
 #<Owner:0x0000000105edce60
  id: 2,
  name: "Stevie",
  address: "456 Heat Wave Wichita",
  created_at: Fri, 18 Aug 2023 17:40:43.851271000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:40:43.851271000 UTC +00:00>,
 #<Owner:0x0000000105edcd20
  id: 3,
  name: "Pam Pam",
  address: "456 Heat Wave Wichita",
  created_at: Fri, 18 Aug 2023 17:41:37.358567000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:41:37.358567000 UTC +00:00>] 
3.2.0 :022 > Owner.credit_cards
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.7/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `credit_cards' for Owner:Class (NoMethodError)
3.2.0 :023 > owner = Owner.all
  Owner Load (0.8ms)  SELECT "owners".* FROM "owners"
 => 
[#<Owner:0x0000000105d59390
... 
3.2.0 :024 > owner.credit_cards
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.7/lib/active_record/relation/delegation.rb:110:in `method_missing': undefined method `credit_cards' for #<ActiveRecord::Relation [#<Owner id: 1, name: "PrincessP", address: "123 Sunny San Diego", created_at: "2023-08-18 17:30:22.990289000 +0000", updated_at: "2023-08-18 17:30:22.990289000 +0000">, #<Owner id: 2, name: "Stevie", address: "456 Heat Wave Wichita", created_at: "2023-08-18 17:40:43.851271000 +0000", updated_at: "2023-08-18 17:40:43.851271000 +0000">, #<Owner id: 3, name: "Pam Pam", address: "456 Heat Wave Wichita", created_at: "2023-08-18 17:41:37.358567000 +0000", updated_at: "2023-08-18 17:41:37.358567000 +0000">]> (NoMethodError)
3.2.0 :025 > CreditCard.all
  CreditCard Load (11.2ms)  SELECT "credit_cards".* FROM "credit_cards"
 => 
[#<CreditCard:0x0000000105edbe20
  id: 1,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 1,
  created_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00>,
 #<CreditCard:0x0000000105edbce0
  id: 2,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00>,
 #<CreditCard:0x0000000105edbba0
  id: 3,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 3,
  created_at: Fri, 18 Aug 2023 17:52:27.031209000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:52:27.031209000 UTC +00:00>,
 #<CreditCard:0x0000000105edba60
  id: 4,
  number: "234-456-7890",
  expiration_date: "23/45",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00>,
 #<CreditCard:0x0000000105edb920
  id: 5,
  number: "987-654-3210",
  expiration_date: "09/87",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00>] 
3.2.0 :026 > CreditCard.all
  CreditCard Load (11.3ms)  SELECT "credit_cards".* FROM "credit_cards"
 => 
[#<CreditCard:0x0000000105d5fdd0
  id: 1,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 1,
  created_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00>,
 #<CreditCard:0x0000000105d5fc90
  id: 2,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00>,
 #<CreditCard:0x0000000105d5fb50
  id: 3,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 3,
  created_at: Fri, 18 Aug 2023 17:52:27.031209000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:52:27.031209000 UTC +00:00>,
 #<CreditCard:0x0000000105d5fa10
  id: 4,
  number: "234-456-7890",
  expiration_date: "23/45",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00>,
 #<CreditCard:0x0000000105d5f8d0
  id: 5,
  number: "987-654-3210",
  expiration_date: "09/87",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00>] 
3.2.0 :027 > card_1 = CreditCard.first
  CreditCard Load (0.7ms)  SELECT "credit_cards".* FROM "credit_cards" ORDER BY "credit_cards"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => 
#<CreditCard:0x0000000105d5b910
... 
3.2.0 :028 > card_1.update(credit_limit: 2000)
  TRANSACTION (1.4ms)  BEGIN
  Owner Load (2.2ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  CreditCard Update (2.8ms)  UPDATE "credit_cards" SET "updated_at" = $1 WHERE "credit_cards"."id" = $2  [["updated_at", "2023-08-18 18:24:45.433439"], ["id", 1]]
  TRANSACTION (1.2ms)  COMMIT
 => true 
3.2.0 :029 > card_1
 => 
#<CreditCard:0x0000000105d5b910
 id: 1,
 number: "123-456-7890",
 expiration_date: "12/34",
 owner_id: 1,
 created_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 18:24:45.433439000 UTC +00:00> 
3.2.0 :030 > CreditCard.first
  CreditCard Load (0.9ms)  SELECT "credit_cards".* FROM "credit_cards" ORDER BY "credit_cards"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => 
#<CreditCard:0x0000000105d56e10
 id: 1,
 number: "123-456-7890",
 expiration_date: "12/34",
 owner_id: 1,
 created_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 18:24:45.433439000 UTC +00:00> 
3.2.0 :031 > princessp
 => 
#<Owner:0x0000000105d5a3d0
 id: 1,
 name: "PrincessP",
 address: "123 Sunny San Diego",
 created_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00> 
3.2.0 :032 > owner1 = Owner.first
  Owner Load (7.5ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => 
#<Owner:0x0000000105f34110
... 
3.2.0 :033 > owner1
 => 
#<Owner:0x0000000105f34110
 id: 1,
 name: "PrincessP",
 address: "123 Sunny San Diego",
 created_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00> 
3.2.0 :034 > exit
learnacademy@MacBook-Air-7 banking_app % rails c
Loading development environment (Rails 7.0.7)
3.2.0 :001 > princessp = Owner.first
  Owner Load (0.4ms)  SELECT "owners".* FROM "owners" ORDER BY "owners"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => 
#<Owner:0x000000010b3f0118
... 
3.2.0 :002 > princessp
 => 
#<Owner:0x000000010b3f0118
 id: 1,
 name: "PrincessP",
 address: "123 Sunny San Diego",
 created_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:30:22.990289000 UTC +00:00> 
3.2.0 :003 > princessp.credit_cards
  CreditCard Load (0.5ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 1]]
 => 
[#<CreditCard:0x000000010b457db8
  id: 1,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 1,
  created_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:24:45.433439000 UTC +00:00,
  credit_limit: nil>] 
3.2.0 :004 > princessp.credit_cards.update(credit_limit: 2000)
  TRANSACTION (0.3ms)  BEGIN
  CreditCard Update (3.1ms)  UPDATE "credit_cards" SET "updated_at" = $1, "credit_limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2023-08-18 18:40:28.062780"], ["credit_limit", 2000], ["id", 1]]
  TRANSACTION (0.9ms)  COMMIT
 => 
[#<CreditCard:0x000000010b457db8
  id: 1,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 1,
  created_at: Fri, 18 Aug 2023 17:46:58.780734000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:40:28.062780000 UTC +00:00,
  credit_limit: 2000>] 
3.2.0 :005 > stevie = Owner.find 2
  Owner Load (0.5ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
 => 
#<Owner:0x000000010957ea68
... 
3.2.0 :006 > stevie
 => 
#<Owner:0x000000010957ea68
 id: 2,
 name: "Stevie",
 address: "456 Heat Wave Wichita",
 created_at: Fri, 18 Aug 2023 17:40:43.851271000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:40:43.851271000 UTC +00:00> 
3.2.0 :007 > stevie.credit_card
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.7/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_card' for #<Owner id: 2, name: "Stevie", address: "456 Heat Wave Wichita", created_at: "2023-08-18 17:40:43.851271000 +0000", updated_at: "2023-08-18 17:40:43.851271000 +0000"> (NoMethodError)
Did you mean?  credit_cards
3.2.0 :008 > stevie.credit_cards
  CreditCard Load (0.7ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 2]]
 => 
[#<CreditCard:0x00000001092fadc8
  id: 2,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00,
  credit_limit: nil>,
 #<CreditCard:0x00000001092fac88
  id: 4,
  number: "234-456-7890",
  expiration_date: "23/45",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
  credit_limit: nil>,
 #<CreditCard:0x00000001092fab48
  id: 5,
  number: "987-654-3210",
  expiration_date: "09/87",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
  credit_limit: nil>] 
3.2.0 :009 > stevie.credit_cards.update(credit_limit: 2000)
  TRANSACTION (12.4ms)  BEGIN
  CreditCard Update (3.7ms)  UPDATE "credit_cards" SET "updated_at" = $1, "credit_limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2023-08-18 18:46:02.826893"], ["credit_limit", 2000], ["id", 2]]
  TRANSACTION (0.7ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CreditCard Update (0.4ms)  UPDATE "credit_cards" SET "updated_at" = $1, "credit_limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2023-08-18 18:46:02.849220"], ["credit_limit", 2000], ["id", 4]]
  TRANSACTION (0.2ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CreditCard Update (0.5ms)  UPDATE "credit_cards" SET "updated_at" = $1, "credit_limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2023-08-18 18:46:02.850981"], ["credit_limit", 2000], ["id", 5]]
  TRANSACTION (0.2ms)  COMMIT
 => 
[#<CreditCard:0x00000001092fadc8
  id: 2,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:46:02.826893000 UTC +00:00,
  credit_limit: 2000>,
 #<CreditCard:0x00000001092fac88
  id: 4,
  number: "234-456-7890",
  expiration_date: "23/45",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:46:02.849220000 UTC +00:00,
  credit_limit: 2000>,
 #<CreditCard:0x00000001092fab48
  id: 5,
  number: "987-654-3210",
  expiration_date: "09/87",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:46:02.850981000 UTC +00:00,
  credit_limit: 2000>] 
3.2.0 :010 > stevie2 = Owner.find 4
  Owner Load (0.9ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.7/lib/active_record/core.rb:284:in `find': Couldn't find Owner with 'id'=4 (ActiveRecord::RecordNotFound)
3.2.0 :011 > stevie2 = CreditCard.find 4
  CreditCard Load (0.3ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
 => 
#<CreditCard:0x000000010c094b08
... 
3.2.0 :012 > stevie2
 => 
#<CreditCard:0x000000010c094b08
 id: 4,
 number: "234-456-7890",
 expiration_date: "23/45",
 owner_id: 2,
 created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 18:46:02.849220000 UTC +00:00,
 credit_limit: 2000> 
3.2.0 :013 > stevie2.update(credit_limit: 3000)
  TRANSACTION (0.2ms)  BEGIN
  Owner Load (0.4ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  CreditCard Update (0.4ms)  UPDATE "credit_cards" SET "updated_at" = $1, "credit_limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2023-08-18 18:49:00.308466"], ["credit_limit", 3000], ["id", 4]]
  TRANSACTION (0.5ms)  COMMIT
 => true 
3.2.0 :014 > stevie2
 => 
#<CreditCard:0x000000010c094b08
 id: 4,
 number: "234-456-7890",
 expiration_date: "23/45",
 owner_id: 2,
 created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 18:49:00.308466000 UTC +00:00,
 credit_limit: 3000> 
3.2.0 :015 > stevie3 = CreditCard.find 5
  CreditCard Load (0.5ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
 => 
#<CreditCard:0x000000010c09ec48
... 
3.2.0 :016 > stevie3.update(credit_limit: 4000)
  TRANSACTION (0.2ms)  BEGIN
  Owner Load (0.2ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  CreditCard Update (0.4ms)  UPDATE "credit_cards" SET "updated_at" = $1, "credit_limit" = $2 WHERE "credit_cards"."id" = $3  [["updated_at", "2023-08-18 18:49:59.983266"], ["credit_limit", 4000], ["id", 5]]
  TRANSACTION (0.5ms)  COMMIT
 => true 
3.2.0 :017 > stevie3
 => 
#<CreditCard:0x000000010c09ec48
 id: 5,
 number: "987-654-3210",
 expiration_date: "09/87",
 owner_id: 2,
 created_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 18:49:59.983266000 UTC +00:00,
 credit_limit: 4000> 
3.2.0 :018 > stevie 
 => 
#<Owner:0x000000010957ea68
 id: 2,
 name: "Stevie",
 address: "456 Heat Wave Wichita",
 created_at: Fri, 18 Aug 2023 17:40:43.851271000 UTC +00:00,
 updated_at: Fri, 18 Aug 2023 17:40:43.851271000 UTC +00:00> 
3.2.0 :019 > stevie.credit_cards
 => 
[#<CreditCard:0x00000001092fadc8
  id: 2,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:46:02.826893000 UTC +00:00,
  credit_limit: 2000>,
 #<CreditCard:0x00000001092fac88
  id: 4,
  number: "234-456-7890",
  expiration_date: "23/45",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:46:02.849220000 UTC +00:00,
  credit_limit: 2000>,
 #<CreditCard:0x00000001092fab48
  id: 5,
  number: "987-654-3210",
  expiration_date: "09/87",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:46:02.850981000 UTC +00:00,
  credit_limit: 2000>] 
3.2.0 :020 > exit 
learnacademy@MacBook-Air-7 banking_app % rails c
Loading development environment (Rails 7.0.7)
3.2.0 :001 > stevie.credit_cards
(irb):1:in `<main>': undefined local variable or method `stevie' for main:Object (NameError)

stevie.credit_cards
^^^^^^
3.2.0 :002 > stevie = Owner.find 2
  Owner Load (0.4ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
 => 
#<Owner:0x000000011425c190
... 
3.2.0 :003 > stevie.credit_cards
  CreditCard Load (0.4ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 2]]
 => 
[#<CreditCard:0x00000001145dc9f0
  id: 2,
  number: "123-456-7890",
  expiration_date: "12/34",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:50:29.558236000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:46:02.826893000 UTC +00:00,
  credit_limit: 2000>,
 #<CreditCard:0x0000000114f56cd8
  id: 4,
  number: "234-456-7890",
  expiration_date: "23/45",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:54:36.154357000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:49:00.308466000 UTC +00:00,
  credit_limit: 3000>,
 #<CreditCard:0x0000000114a11fe8
  id: 5,
  number: "987-654-3210",
  expiration_date: "09/87",
  owner_id: 2,
  created_at: Fri, 18 Aug 2023 17:55:30.008872000 UTC +00:00,
  updated_at: Fri, 18 Aug 2023 18:49:59.983266000 UTC +00:00,
  credit_limit: 4000>] 
3.2.0 :004 > owner = Owner.find 2
  Owner Load (0.9ms)  SELECT "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
 => 
#<Owner:0x00000001147fdcc0
... 
3.2.0 :005 > total = owner.credit_cards.sum(:credit_limit)
  CreditCard Sum (0.9ms)  SELECT SUM("credit_cards"."credit_limit") FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 2]]
 => 9000 
3.2.0 :006 > total
 => 9000 
3.2.0 :007 > 