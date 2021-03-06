CREATE TABLE IF NOT EXISTS dada_settings (
list                             varchar(16),
setting                          varchar(64),
value                            text
);


CREATE TABLE IF NOT EXISTS dada_subscribers (
email_id			            int4 not null primary key auto_increment,
email                            varchar(255),
list                             varchar(16),
list_type                        varchar(64),
list_status                      char(1)
);



CREATE TABLE IF NOT EXISTS dada_profiles ( 
profile_id int4 not null primary key auto_increment,
email                        varchar(255) not null,
password                     text(16),
auth_code                    varchar(64),
update_email_auth_code       varchar(64),
update_email                 varchar(255),
activated                    char(1), 
CONSTRAINT UNIQUE (email)
);

CREATE TABLE IF NOT EXISTS dada_profile_fields (
fields_id int4 not null primary key auto_increment,
email varchar(255) not null,
CONSTRAINT UNIQUE (email)
);

CREATE TABLE IF NOT EXISTS dada_profile_fields_attributes (
	attribute_id int4 not null primary key auto_increment,
	field                       varchar(255),
	label                       varchar(255),
	fallback_value              varchar(255),
-- I haven't made the following, but it seems like a pretty good idea... 
-- sql_col_type              text(16),
-- default                   mediumtext,
-- html_form_widget          varchar(320),
-- required                  char(1),
-- public                    char(1),
	CONSTRAINT UNIQUE (field)
);

CREATE TABLE IF NOT EXISTS dada_archives (
list                          varchar(32),
archive_id                    varchar(32),
subject                       text,
message                       mediumtext,
format                        text,
raw_msg                       mediumtext
);
 
 
CREATE TABLE IF NOT EXISTS dada_bounce_scores (
id                            int4 not null primary key auto_increment,
email                         text, 
list                          varchar(16),
score                         int4
); 
 
CREATE TABLE IF NOT EXISTS dada_clickthrough_urls (
url_id  int4 not null primary key auto_increment, 
redirect_id varchar(16), 
msg_id text, 
url text
); 
 
CREATE TABLE IF NOT EXISTS dada_sessions (
     id CHAR(32) NOT NULL PRIMARY KEY,
     a_session TEXT NOT NULL
);