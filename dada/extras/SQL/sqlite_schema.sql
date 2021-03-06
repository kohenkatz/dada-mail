CREATE TABLE IF NOT EXISTS dada_settings (
list varchar(16),
setting varchar(64),
value text
);

CREATE TABLE IF NOT EXISTS dada_subscribers (
email_id INTEGER PRIMARY KEY AUTOINCREMENT,
email text(320),
list varchar(16),
list_type varchar(64),
list_status char(1)
);

CREATE TABLE IF NOT EXISTS dada_profiles (
profile_id INTEGER PRIMARY KEY AUTOINCREMENT,
email varchar(320) not null UNIQUE,
password text(16),
auth_code varchar(64),
update_email_auth_code varchar(64),
update_email varchar(320),
activated char(1)
);

CREATE TABLE IF NOT EXISTS dada_profile_fields (
fields_id INTEGER PRIMARY KEY AUTOINCREMENT,
email varchar(320) not null UNIQUE
);

CREATE TABLE IF NOT EXISTS dada_archives (
list varchar(16),
archive_id varchar(32),
subject text,
message mediumtext,
format text,
raw_msg mediumtext
);

CREATE TABLE IF NOT EXISTS dada_bounce_scores (
id INTEGER PRIMARY KEY AUTOINCREMENT,
email text, 
list varchar(16),
score int4
); 

CREATE TABLE IF NOT EXISTS dada_sessions (
id CHAR(32) NOT NULL PRIMARY KEY,
a_session TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS dada_profile_fields_attributes (
attribute_id INTEGER PRIMARY KEY AUTOINCREMENT,
field varchar(320) not null UNIQUE,	
label varchar(320),
fallback_value varchar(320)
);

CREATE TABLE IF NOT EXISTS dada_clickthrough_urls (
url_id INTEGER PRIMARY KEY AUTOINCREMENT,
redirect_id varchar(16), 
msg_id text, 
url text
); 

