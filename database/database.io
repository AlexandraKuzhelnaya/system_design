Table accounts {
  account_id integer
  description text
  created_at timestamp
}

Table subscribers {
  account_id integer
  subscriber_account_id integer
}

Table posts {
  id integer [primary key]
  account_id integer
  description text
  photo text
  created_at timestamp
}

Ref: posts.account_id > accounts.account_id
Ref: subscribers.account_id > accounts.account_id