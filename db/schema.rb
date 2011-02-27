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

ActiveRecord::Schema.define(:version => 0) do

  create_table "areas", :force => true do |t|
    t.integer "imglimit1",             :limit => 1,  :default => 0,  :null => false
    t.integer "imglimit2",             :limit => 1,  :default => 0,  :null => false
    t.integer "imglimit3",             :limit => 1,  :default => 0,  :null => false
    t.integer "imglimit4",             :limit => 1,  :default => 0,  :null => false
    t.integer "imglimit5",             :limit => 1,  :default => 0,  :null => false
    t.integer "hidden",                :limit => 1,  :default => 0,  :null => false
    t.integer "category",              :limit => 1,  :default => 0,  :null => false
    t.integer "topicssortedbymtime",   :limit => 1,  :default => 0,  :null => false
    t.integer "creatormayclosetopics", :limit => 1,  :default => 0,  :null => false
    t.integer "nopostingcounter",      :limit => 1,  :default => 0,  :null => false
    t.integer "parentarea",            :limit => 2,  :default => 0,  :null => false
    t.integer "minmessagesize",        :limit => 2,  :default => 0,  :null => false
    t.integer "maxmessagesize",        :limit => 2,  :default => 0,  :null => false
    t.integer "subareas",              :limit => 2,  :default => 0,  :null => false
    t.integer "priority",              :limit => 2,  :default => 0,  :null => false
    t.integer "ctime",                 :limit => 3,  :default => 0,  :null => false
    t.integer "atime",                 :limit => 3,  :default => 0,  :null => false
    t.integer "lasttopic",             :limit => 3,  :default => 0,  :null => false
    t.integer "lastposting",           :limit => 3,  :default => 0,  :null => false
    t.integer "lasttopicby",           :limit => 3,  :default => 0,  :null => false
    t.integer "lastpostingby",         :limit => 3,  :default => 0,  :null => false
    t.integer "curtopics",             :limit => 2,  :default => 0,  :null => false
    t.integer "curpostings",           :limit => 2,  :default => 0,  :null => false
    t.integer "alltopics",             :limit => 3,  :default => 0,  :null => false
    t.integer "allpostings",           :limit => 3,  :default => 0,  :null => false
    t.integer "hits",                                :default => 0,  :null => false
    t.string  "password",              :limit => 32, :default => "", :null => false
    t.string  "name",                                :default => "", :null => false
    t.string  "image",                               :default => "", :null => false
    t.string  "description",                         :default => "", :null => false
    t.string  "rights",                              :default => "", :null => false
    t.string  "moderators",                          :default => "", :null => false
    t.string  "childlist",                           :default => "", :null => false
    t.text    "string0",                                             :null => false
    t.text    "string1",                                             :null => false
    t.text    "string2",                                             :null => false
    t.text    "string3",                                             :null => false
    t.text    "string4",                                             :null => false
    t.text    "string5",                                             :null => false
    t.text    "string6",                                             :null => false
    t.text    "string7",                                             :null => false
    t.text    "string8",                                             :null => false
    t.text    "string9",                                             :null => false
  end

  add_index "areas", ["category"], :name => "i_category"
  add_index "areas", ["name"], :name => "i_name"
  add_index "areas", ["parentarea"], :name => "i_parentarea"
  add_index "areas", ["priority"], :name => "i_priority"

  create_table "logs", :id => false, :force => true do |t|
    t.integer "sessionhits", :limit => 2, :default => 0,  :null => false
    t.integer "size",        :limit => 3, :default => 0,  :null => false
    t.integer "userid",      :limit => 3, :default => 0,  :null => false
    t.integer "time",                     :default => 0,  :null => false
    t.integer "ip",                       :default => 0,  :null => false
    t.string  "request",                  :default => "", :null => false
  end

  add_index "logs", ["time"], :name => "i_time"
  add_index "logs", ["userid"], :name => "i_userid"

  create_table "postings", :force => true do |t|
    t.integer "user",     :limit => 3, :default => 0,  :null => false
    t.string  "subtitle",              :default => "", :null => false
    t.text    "content",                               :null => false
    t.text    "cached",                                :null => false
  end

  add_index "postings", ["user"], :name => "i_user"

  create_table "schema", :primary_key => "version", :force => true do |t|
  end

  add_index "schema", ["version"], :name => "unique_schema_migrations", :unique => true

  create_table "stats", :primary_key => "time", :force => true do |t|
    t.integer "hits",                :limit => 2, :default => 0, :null => false
    t.integer "topics",              :limit => 2, :default => 0, :null => false
    t.integer "postings",            :limit => 2, :default => 0, :null => false
    t.integer "sms",                 :limit => 2, :default => 0, :null => false
    t.integer "visitors",            :limit => 2, :default => 0, :null => false
    t.integer "compressedtraffic",                :default => 0, :null => false
    t.integer "uncompressedtraffic",              :default => 0, :null => false
  end

  create_table "topics", :force => true do |t|
    t.integer "icon",         :limit => 1, :default => 0,  :null => false
    t.integer "priority",     :limit => 1, :default => 0,  :null => false
    t.integer "prelocked",    :limit => 1, :default => 0,  :null => false
    t.integer "postings",     :limit => 2, :default => 0,  :null => false
    t.integer "creator",      :limit => 3, :default => 0,  :null => false
    t.integer "modifier",     :limit => 3, :default => 0,  :null => false
    t.integer "atime",        :limit => 3, :default => 0,  :null => false
    t.integer "ctime",        :limit => 3, :default => 0,  :null => false
    t.integer "mtime",        :limit => 3, :default => 0,  :null => false
    t.integer "hits",         :limit => 3, :default => 0,  :null => false
    t.string  "headline",                  :default => "", :null => false
    t.string  "sendemailsto",              :default => "", :null => false
    t.string  "subtitle",                  :default => "", :null => false
  end

  add_index "topics", ["creator"], :name => "i_creator"
  add_index "topics", ["ctime"], :name => "i_ctime"
  add_index "topics", ["modifier"], :name => "i_modifier"
  add_index "topics", ["mtime"], :name => "i_mtime"
  add_index "topics", ["priority"], :name => "i_priority"

  create_table "users", :force => true do |t|
    t.integer "bfprotection",     :limit => 1,  :default => 0,  :null => false
    t.integer "status",           :limit => 1,  :default => 0,  :null => false
    t.integer "level",            :limit => 1,  :default => 0,  :null => false
    t.integer "usermode",         :limit => 1,  :default => 0,  :null => false
    t.integer "stringvisible0",   :limit => 1,  :default => 0,  :null => false
    t.integer "stringvisible1",   :limit => 1,  :default => 0,  :null => false
    t.integer "stringvisible2",   :limit => 1,  :default => 0,  :null => false
    t.integer "stringvisible3",   :limit => 1,  :default => 0,  :null => false
    t.integer "stringvisible4",   :limit => 1,  :default => 0,  :null => false
    t.integer "stringvisible5",   :limit => 1,  :default => 0,  :null => false
    t.integer "stringvisible6",   :limit => 1,  :default => 0,  :null => false
    t.integer "stringvisible7",   :limit => 1,  :default => 0,  :null => false
    t.integer "stringvisible8",   :limit => 1,  :default => 0,  :null => false
    t.integer "stringvisible9",   :limit => 1,  :default => 0,  :null => false
    t.integer "emailvisible",     :limit => 1,  :default => 0,  :null => false
    t.integer "allowmessages",    :limit => 1,  :default => 0,  :null => false
    t.integer "chosenskin",       :limit => 1,  :default => 0,  :null => false
    t.integer "notop100",         :limit => 1,  :default => 0,  :null => false
    t.integer "penaltypoints",    :limit => 1,  :default => 0,  :null => false
    t.integer "fixedusertitle",   :limit => 1,  :default => 0,  :null => false
    t.integer "hidden",           :limit => 1,  :default => 0,  :null => false
    t.integer "smsmode",          :limit => 1,  :default => 0,  :null => false
    t.integer "pwfails",          :limit => 2,  :default => 0,  :null => false
    t.integer "lastadjmins",      :limit => 2,  :default => 0,  :null => false
    t.integer "signuptime",       :limit => 3,  :default => 0,  :null => false
    t.integer "lastfp",           :limit => 3,  :default => 0,  :null => false
    t.integer "hits",             :limit => 3,  :default => 0,  :null => false
    t.integer "topics",           :limit => 3,  :default => 0,  :null => false
    t.integer "postings",         :limit => 3,  :default => 0,  :null => false
    t.integer "logins",           :limit => 3,  :default => 0,  :null => false
    t.integer "thislogin",        :limit => 3,  :default => 0,  :null => false
    t.integer "lastlogin",        :limit => 3,  :default => 0,  :null => false
    t.integer "lastaction",       :limit => 3,  :default => 0,  :null => false
    t.integer "lasttopic",        :limit => 3,  :default => 0,  :null => false
    t.integer "lastposting",      :limit => 3,  :default => 0,  :null => false
    t.integer "deletedpostings",  :limit => 3,  :default => 0,  :null => false
    t.integer "shortmsgfrom1",    :limit => 3,  :default => 0,  :null => false
    t.integer "shortmsgfrom2",    :limit => 3,  :default => 0,  :null => false
    t.integer "shortmsgfrom3",    :limit => 3,  :default => 0,  :null => false
    t.integer "shortmsgfrom4",    :limit => 3,  :default => 0,  :null => false
    t.integer "shortmsgfrom5",    :limit => 3,  :default => 0,  :null => false
    t.integer "shortmsgdate1",    :limit => 3,  :default => 0,  :null => false
    t.integer "shortmsgdate2",    :limit => 3,  :default => 0,  :null => false
    t.integer "shortmsgdate3",    :limit => 3,  :default => 0,  :null => false
    t.integer "shortmsgdate4",    :limit => 3,  :default => 0,  :null => false
    t.integer "shortmsgdate5",    :limit => 3,  :default => 0,  :null => false
    t.integer "sentmessages",     :limit => 3,  :default => 0,  :null => false
    t.integer "lastvisit",        :limit => 3,  :default => 0,  :null => false
    t.integer "geo_laenge",       :limit => 3,  :default => 0,  :null => false
    t.integer "geo_breite",       :limit => 3,  :default => 0,  :null => false
    t.integer "lastpwfail",                     :default => 0,  :null => false
    t.integer "dbcookie",                       :default => 0,  :null => false
    t.integer "lastpwfail_ip",                  :default => 0,  :null => false
    t.integer "lastusedip",                     :default => 0,  :null => false
    t.integer "signupip",                       :default => 0,  :null => false
    t.string  "color",            :limit => 6,  :default => "", :null => false
    t.string  "password",         :limit => 32, :default => "", :null => false
    t.string  "name",             :limit => 64, :default => "", :null => false
    t.string  "email",            :limit => 64, :default => "", :null => false
    t.string  "joinedareas",                    :default => "", :null => false
    t.string  "bannedareas",                    :default => "", :null => false
    t.text    "description",                                    :null => false
    t.text    "string0",                                        :null => false
    t.text    "string1",                                        :null => false
    t.text    "string2",                                        :null => false
    t.text    "string3",                                        :null => false
    t.text    "string4",                                        :null => false
    t.text    "string5",                                        :null => false
    t.text    "string6",                                        :null => false
    t.text    "string7",                                        :null => false
    t.text    "string8",                                        :null => false
    t.text    "string9",                                        :null => false
    t.text    "convertedstring0",                               :null => false
    t.text    "convertedstring1",                               :null => false
    t.text    "convertedstring2",                               :null => false
    t.text    "convertedstring3",                               :null => false
    t.text    "convertedstring4",                               :null => false
    t.text    "convertedstring5",                               :null => false
    t.text    "convertedstring6",                               :null => false
    t.text    "convertedstring7",                               :null => false
    t.text    "convertedstring8",                               :null => false
    t.text    "convertedstring9",                               :null => false
    t.text    "shortmsg1",                                      :null => false
    t.text    "shortmsg2",                                      :null => false
    t.text    "shortmsg3",                                      :null => false
    t.text    "shortmsg4",                                      :null => false
    t.text    "shortmsg5",                                      :null => false
    t.text    "messagebuffer",                                  :null => false
    t.text    "smshistory",                                     :null => false
  end

  add_index "users", ["fixedusertitle"], :name => "i_fixedusertitle"
  add_index "users", ["geo_laenge"], :name => "i_geo_laenge"
  add_index "users", ["lastaction"], :name => "i_lastaction"
  add_index "users", ["level"], :name => "i_level"
  add_index "users", ["name"], :name => "i_name"
  add_index "users", ["postings"], :name => "i_postings"

end
