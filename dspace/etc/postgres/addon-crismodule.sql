--   The contents of this file are subject to the license and copyright
--   detailed in the LICENSE and NOTICE files at the root of the source
--   tree and available online at
--   
--   https://github.com/CILEA/dspace-cris/wiki/License
--
-- SQL commands to upgrade the database schema of a live DSpace-CRIS
-- to the DSpace 1.8 database schema
--
-- DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST.
-- DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST.
-- DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST.

create table cris_organizationunit (id int4 not null, sourceID varchar(255) unique, status bool, uuid varchar(255) not null unique, timestampCreated timestamp, timestampLastModified timestamp, primary key (id));
create table cris_ou_box (id int4 not null, collapsed bool not null, externalJSP varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), unrelevant bool not null, visibility int4, primary key (id));
create table cris_ou_box2containable (cris_ou_box_id int4 not null, mask_id int4 not null);
create table cris_ou_edittab (id int4 not null, ext varchar(255), mandatory bool not null, mime varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), visibility int4, displayTab_id int4, primary key (id));
create table cris_ou_edittab2box (cris_ou_edittab_id int4 not null, mask_id int4 not null);
create table cris_ou_nestedobject (id int4 not null, status bool, timestampCreated timestamp, timestampLastModified timestamp, uuid varchar(255) not null unique, parent_id int4, typo_id int4, primary key (id));
create table cris_ou_nestedobject_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table cris_ou_nestedobject_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, rendering_id int4 unique, primary key (id));
create table cris_ou_nestedobject_typo (id int4 not null, label varchar(255), shortName varchar(255), accessLevel int4, help text, inline bool not null, mandatory bool not null, newline bool not null, priority int4 not null, repeatable bool not null, primary key (id));
create table cris_ou_nestedobject_typo2mask (cris_ou_nestedobject_typo_id int4 not null, mask_id int4 not null);
create table cris_ou_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table cris_ou_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, rendering_id int4 unique, primary key (id));
create table cris_ou_tab (id int4 not null, ext varchar(255), mandatory bool not null, mime varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), visibility int4, primary key (id));
create table cris_ou_tab2box (cris_ou_tab_id int4 not null, mask_id int4 not null);
create table cris_ou_widgetfile (id int4 not null, fileDescription text, labelAnchor varchar(255), showPreview bool not null, size int4 not null, primary key (id));
create table cris_project (id int4 not null, sourceID varchar(255) unique, status bool, uuid varchar(255) not null unique, timestampCreated timestamp, timestampLastModified timestamp, primary key (id));
create table cris_project_box (id int4 not null, collapsed bool not null, externalJSP varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), unrelevant bool not null, visibility int4, primary key (id));
create table cris_project_box2containable (cris_project_box_id int4 not null, mask_id int4 not null);
create table cris_project_edittab (id int4 not null, ext varchar(255), mandatory bool not null, mime varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), visibility int4, displayTab_id int4, primary key (id));
create table cris_project_edittab2box (cris_project_edittab_id int4 not null, mask_id int4 not null);
create table cris_project_nestedobject (id int4 not null, status bool, timestampCreated timestamp, timestampLastModified timestamp, uuid varchar(255) not null unique, parent_id int4, typo_id int4, primary key (id));
create table cris_project_nestedobject_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table cris_project_nestedobject_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, rendering_id int4 unique, primary key (id));
create table cris_project_nestedobject_typo (id int4 not null, label varchar(255), shortName varchar(255), accessLevel int4, help text, inline bool not null, mandatory bool not null, newline bool not null, priority int4 not null, repeatable bool not null, primary key (id));
create table cris_project_nestedobject_typo2mask (cris_project_nestedobject_typo_id int4 not null, mask_id int4 not null);
create table cris_project_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table cris_project_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, rendering_id int4 unique, primary key (id));
create table cris_project_tab (id int4 not null, ext varchar(255), mandatory bool not null, mime varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), visibility int4, primary key (id));
create table cris_project_tab2box (cris_project_tab_id int4 not null, mask_id int4 not null);
create table cris_project_widgetfile (id int4 not null, fileDescription text, labelAnchor varchar(255), showPreview bool not null, size int4 not null, primary key (id));
create table cris_researcherpage (id int4 not null, sourceID varchar(255) unique, status bool, uuid varchar(255) not null unique, epersonID int4 unique, namesTimestampLastModified timestamp, timestampCreated timestamp, timestampLastModified timestamp, primary key (id));
create table cris_researcherpage_rejectItems (cris_researcherpage_id int4 not null, element int4);
create table cris_rp_box (id int4 not null, collapsed bool not null, externalJSP varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), unrelevant bool not null, visibility int4, primary key (id));
create table cris_rp_box2containable (cris_rp_box_id int4 not null, mask_id int4 not null);
create table cris_rp_edittab (id int4 not null, ext varchar(255), mandatory bool not null, mime varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), visibility int4, displayTab_id int4, primary key (id));
create table cris_rp_edittab2box (cris_rp_edittab_id int4 not null, mask_id int4 not null);
create table cris_rp_jdyna_nestedobject_typo2mask (cris_rp_nestedobject_typo_id int4 not null, mask_id int4 not null);
create table cris_rp_nestedobject (id int4 not null, status bool, timestampCreated timestamp, timestampLastModified timestamp, uuid varchar(255) not null unique, parent_id int4, typo_id int4, primary key (id));
create table cris_rp_nestedobject_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table cris_rp_nestedobject_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, rendering_id int4 unique, primary key (id));
create table cris_rp_nestedobject_typo (id int4 not null, label varchar(255), shortName varchar(255), accessLevel int4, help text, inline bool not null, mandatory bool not null, newline bool not null, priority int4 not null, repeatable bool not null, primary key (id));
create table cris_rp_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table cris_rp_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, rendering_id int4 unique, primary key (id));
create table cris_rp_subscription (id int4 not null, epersonID int4 not null, rp_id int4, primary key (id));
create table cris_rp_tab (id int4 not null, ext varchar(255), mandatory bool not null, mime varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), visibility int4, primary key (id));
create table cris_rp_tab2box (cris_rp_tab_id int4 not null, mask_id int4 not null);
create table cris_rp_widgetfile (id int4 not null, fileDescription text, labelAnchor varchar(255), showPreview bool not null, size int4 not null, primary key (id));
create table jdyna_containables (DTYPE varchar(31) not null, id int4 not null, propertiesdefinition_fk int4, propertiesdefinitionproject_fk int4, propertiesdefinitionou_fk int4, pdrpnestedobject_fk int4, pdprojectnestedobject_fk int4, pdounestedobject_fk int4, typerpnestedobject_fk int4, typeprojectnestedobject_fk int4, typeounestedobject_fk int4, propertiesdefinitionnestedobject_fk int4, primary key (id));
create table jdyna_nestedobject (id int4 not null, status bool, timestampCreated timestamp, timestampLastModified timestamp, uuid varchar(255) not null unique, typo_id int4, primary key (id));
create table jdyna_nestedobject_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table jdyna_nestedobject_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, rendering_id int4 unique, primary key (id));
create table jdyna_nestedobject_typo (id int4 not null, label varchar(255), shortName varchar(255), accessLevel int4, help text, inline bool not null, mandatory bool not null, newline bool not null, priority int4 not null, repeatable bool not null, primary key (id));
create table jdyna_nestedobject_typo2mask (jdyna_nestedobject_typo_id int4 not null, mask_id int4 not null);
create table jdyna_values (DTYPE varchar(31) not null, id int4 not null, sortValue varchar(255), dateValue timestamp, testoValue text, linkdescription varchar(255), linkvalue text, fileextension varchar(255), filefolder varchar(255), filemime varchar(255), filevalue text, rpvalue int4, projectvalue int4, ouvalue int4, primary key (id));
create table jdyna_widget_date (id int4 not null, maxYear int4, minYear int4, time bool not null, primary key (id));
create table jdyna_widget_link (id int4 not null, labelHeaderLabel varchar(255), labelHeaderURL varchar(255), size int4 not null, primary key (id));
create table jdyna_widget_pointer (id int4 not null, display text, filtro text, indexName varchar(255), size int4 not null, target varchar(255), primary key (id));
create table jdyna_widget_text (id int4 not null, collisioni bool, col int4 not null, row int4 not null, htmlToolbar varchar(255), multilinea bool not null, regex varchar(255), primary key (id));
alter table cris_ou_box2containable add constraint FKA10F1DD457F736C foreign key (cris_ou_box_id) references cris_ou_box;
alter table cris_ou_box2containable add constraint FKA10F1DD46760D09E foreign key (mask_id) references jdyna_containables;
alter table cris_ou_edittab add constraint FKA92DB61844BD38DB foreign key (displayTab_id) references cris_ou_tab;
alter table cris_ou_edittab2box add constraint FK50CD2271E406B118 foreign key (mask_id) references cris_ou_box;
alter table cris_ou_edittab2box add constraint FK50CD22713D6185CC foreign key (cris_ou_edittab_id) references cris_ou_edittab;
alter table cris_ou_nestedobject add constraint FKCF310E4947D7AFC4 foreign key (typo_id) references cris_ou_nestedobject_typo;
alter table cris_ou_nestedobject add constraint FKCF310E49A2617B42 foreign key (parent_id) references cris_organizationunit;
create index cris_ou_nestedobject_prop_parent_id on cris_ou_nestedobject_prop (parent_id);
alter table cris_ou_nestedobject_prop add constraint FK6D48D399F424C951 foreign key (typo_id) references cris_ou_nestedobject_propertiesdefinition;
alter table cris_ou_nestedobject_prop add constraint FKC8A841F5E52079D76d48d399 foreign key (value_id) references jdyna_values;
alter table cris_ou_nestedobject_prop add constraint FK6D48D3998720F744 foreign key (parent_id) references cris_ou_nestedobject;
alter table cris_ou_nestedobject_typo2mask add constraint FK11B77AE4590D50A9 foreign key (mask_id) references cris_ou_nestedobject_propertiesdefinition;
alter table cris_ou_nestedobject_typo2mask add constraint FK11B77AE4E82E0BCE foreign key (cris_ou_nestedobject_typo_id) references cris_ou_nestedobject_typo;
create index cris_ou_prop_parent_id on cris_ou_prop (parent_id);
alter table cris_ou_prop add constraint FK5DE185B6F5DC543A foreign key (typo_id) references cris_ou_propertiesdefinition;
alter table cris_ou_prop add constraint FKC8A841F5E52079D75de185b6 foreign key (value_id) references jdyna_values;
alter table cris_ou_prop add constraint FK5DE185B6A2617B42 foreign key (parent_id) references cris_organizationunit;
alter table cris_ou_tab2box add constraint FKBD0BBE3BEACED32C foreign key (cris_ou_tab_id) references cris_ou_tab;
alter table cris_ou_tab2box add constraint FKBD0BBE3BE406B118 foreign key (mask_id) references cris_ou_box;
alter table cris_project_box2containable add constraint FK264FF47B85671061 foreign key (cris_project_box_id) references cris_project_box;
alter table cris_project_box2containable add constraint FK264FF47B6760D09E foreign key (mask_id) references jdyna_containables;
alter table cris_project_edittab add constraint FKBB8723BF83D0AD83 foreign key (displayTab_id) references cris_project_tab;
alter table cris_project_edittab2box add constraint FK97D96498C66F8C94 foreign key (mask_id) references cris_project_box;
alter table cris_project_edittab2box add constraint FK97D96498DC12AB81 foreign key (cris_project_edittab_id) references cris_project_edittab;
alter table cris_project_nestedobject add constraint FK69AD11026F3DA527 foreign key (typo_id) references cris_project_nestedobject_typo;
alter table cris_project_nestedobject add constraint FK69AD11027721E06E foreign key (parent_id) references cris_project;
create index cris_project_nestedobject_prop_parent_id on cris_project_nestedobject_prop (parent_id);
alter table cris_project_nestedobject_prop add constraint FKA5AE9C8054CD9EF4 foreign key (typo_id) references cris_project_nestedobject_propertiesdefinition;
alter table cris_project_nestedobject_prop add constraint FKC8A841F5E52079D7a5ae9c80 foreign key (value_id) references jdyna_values;
alter table cris_project_nestedobject_prop add constraint FKA5AE9C80FE471627 foreign key (parent_id) references cris_project_nestedobject;
alter table cris_project_nestedobject_typo2mask add constraint FK23DE2A5DB9B6264C foreign key (mask_id) references cris_project_nestedobject_propertiesdefinition;
alter table cris_project_nestedobject_typo2mask add constraint FK23DE2A5D1C623AEA foreign key (cris_project_nestedobject_typo_id) references cris_project_nestedobject_typo;
create index cris_project_prop_idx_parent_id on cris_project_prop (parent_id);
alter table cris_project_prop add constraint FKB0E4516F64B2E01D foreign key (typo_id) references cris_project_propertiesdefinition;
alter table cris_project_prop add constraint FKC8A841F5E52079D7b0e4516f foreign key (value_id) references jdyna_values;
alter table cris_project_prop add constraint FKB0E4516F7721E06E foreign key (parent_id) references cris_project;
alter table cris_project_tab2box add constraint FKCF652BE2C66F8C94 foreign key (mask_id) references cris_project_box;
alter table cris_project_tab2box add constraint FKCF652BE2C761094D foreign key (cris_project_tab_id) references cris_project_tab;
alter table cris_researcherpage_rejectItems add constraint FK4990335F7443456F foreign key (cris_researcherpage_id) references cris_researcherpage;
alter table cris_rp_box2containable add constraint FK5B736E2C6760D09E foreign key (mask_id) references jdyna_containables;
alter table cris_rp_box2containable add constraint FK5B736E2CEA369DB4 foreign key (cris_rp_box_id) references cris_rp_box;
alter table cris_rp_edittab add constraint FKA0B3DE7049C1E0FB foreign key (displayTab_id) references cris_rp_tab;
alter table cris_rp_edittab2box add constraint FK4DD75EC913566EB8 foreign key (mask_id) references cris_rp_box;
alter table cris_rp_edittab2box add constraint FK4DD75EC912237414 foreign key (cris_rp_edittab_id) references cris_rp_edittab;
alter table cris_rp_jdyna_nestedobject_typo2mask add constraint FKCEDC39B9CEB1301 foreign key (mask_id) references cris_rp_nestedobject_propertiesdefinition;
alter table cris_rp_jdyna_nestedobject_typo2mask add constraint FKCEDC39B9E08A82CE foreign key (cris_rp_nestedobject_typo_id) references cris_rp_nestedobject_typo;
alter table cris_rp_nestedobject add constraint FK736E5CF123C001C foreign key (typo_id) references cris_rp_nestedobject_typo;
alter table cris_rp_nestedobject add constraint FK736E5CF1621C42E2 foreign key (parent_id) references cris_researcherpage;
create index cris_rp_nestedobject_prop_parent_id on cris_rp_nestedobject_prop (parent_id);
alter table cris_rp_nestedobject_prop add constraint FK1FDA6DF1A8028BA9 foreign key (typo_id) references cris_rp_nestedobject_propertiesdefinition;
alter table cris_rp_nestedobject_prop add constraint FKC8A841F5E52079D71fda6df1 foreign key (value_id) references jdyna_values;
alter table cris_rp_nestedobject_prop add constraint FK1FDA6DF1842B339C foreign key (parent_id) references cris_rp_nestedobject;
create index cris_rp_prop_parent_id on cris_rp_prop (parent_id);
alter table cris_rp_prop add constraint FKF40BFC5E4A70B892 foreign key (typo_id) references cris_rp_propertiesdefinition;
alter table cris_rp_prop add constraint FKC8A841F5E52079D7f40bfc5e foreign key (value_id) references jdyna_values;
alter table cris_rp_prop add constraint FKF40BFC5E621C42E2 foreign key (parent_id) references cris_researcherpage;
alter table cris_rp_subscription add constraint FK266E8718ED3064CE foreign key (rp_id) references cris_researcherpage;
alter table cris_rp_tab2box add constraint FKB491E69313566EB8 foreign key (mask_id) references cris_rp_box;
alter table cris_rp_tab2box add constraint FKB491E693A53AE7F4 foreign key (cris_rp_tab_id) references cris_rp_tab;
alter table jdyna_containables add constraint FKB80C84B27128CFDC foreign key (typeounestedobject_fk) references cris_ou_nestedobject_typo;
alter table jdyna_containables add constraint FKB80C84B2281675EF foreign key (pdounestedobject_fk) references cris_ou_nestedobject_propertiesdefinition;
alter table jdyna_containables add constraint FKB80C84B2F3A3E867 foreign key (pdprojectnestedobject_fk) references cris_project_nestedobject_propertiesdefinition;
alter table jdyna_containables add constraint FKB80C84B266187CEF foreign key (pdrpnestedobject_fk) references cris_rp_nestedobject_propertiesdefinition;
alter table jdyna_containables add constraint FKB80C84B2CE9E17A foreign key (propertiesdefinition_fk) references cris_rp_propertiesdefinition;
alter table jdyna_containables add constraint FKB80C84B2302DAC43 foreign key (propertiesdefinitionnestedobject_fk) references jdyna_nestedobject_propertiesdefinition;
alter table jdyna_containables add constraint FKB80C84B2B5B164DC foreign key (typerpnestedobject_fk) references cris_rp_nestedobject_typo;
alter table jdyna_containables add constraint FKB80C84B28F8AF718 foreign key (propertiesdefinitionproject_fk) references cris_project_propertiesdefinition;
alter table jdyna_containables add constraint FKB80C84B2A9939760 foreign key (typeprojectnestedobject_fk) references cris_project_nestedobject_typo;
alter table jdyna_containables add constraint FKB80C84B2626BE6FC foreign key (propertiesdefinitionou_fk) references cris_ou_propertiesdefinition;
alter table jdyna_nestedobject add constraint FK99FADDA347739B84 foreign key (typo_id) references jdyna_nestedobject_typo;
create index jdyna_nestedobject_prop_parent_id on jdyna_nestedobject_prop (parent_id);
alter table jdyna_nestedobject_prop add constraint FKCCDC8C7F99D0511 foreign key (typo_id) references jdyna_nestedobject_propertiesdefinition;
alter table jdyna_nestedobject_prop add constraint FKC8A841F5E52079D7ccdc8c7f foreign key (value_id) references jdyna_values;
alter table jdyna_nestedobject_prop add constraint FKCCDC8C7F9B08C304 foreign key (parent_id) references jdyna_nestedobject;
alter table jdyna_nestedobject_typo2mask add constraint FKFA3161BE6E858C69 foreign key (mask_id) references jdyna_nestedobject_propertiesdefinition;
alter table jdyna_nestedobject_typo2mask add constraint FKFA3161BE4F63CCE8 foreign key (jdyna_nestedobject_typo_id) references jdyna_nestedobject_typo;
create index jdyna_values_idx_dtype on jdyna_values (DTYPE);
alter table jdyna_values add constraint FK51AA118FE5220DBD foreign key (ouvalue) references cris_organizationunit;
alter table jdyna_values add constraint FK51AA118F34F77D96 foreign key (projectvalue) references cris_project;
alter table jdyna_values add constraint FK51AA118F3B074C05 foreign key (rpvalue) references cris_researcherpage;
create sequence BOX_SEQ;
create sequence CONTAINABLE_SEQ;
create sequence CRIS_OU_SEQ;
create sequence CRIS_PROJECT_SEQ;
create sequence CRIS_RESEARCHERPAGE_SEQ;
create sequence JDYNA_NESTEDOBJECT_SEQ;
create sequence JDYNA_TYPONESTEDOBJECT_SEQ;
create sequence PROPERTIESDEFINITION_SEQ;
create sequence PROPERTY_SEQ;
create sequence SUBSCRIPTIONRP_SEQ;
create sequence TAB_SEQ;
create sequence VALUES_SEQ;
create sequence WIDGET_SEQ;