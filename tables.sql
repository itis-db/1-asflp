CREATE TABLE activity_type
(
    activity_type_id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    sysname text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT activity_type_pkey PRIMARY KEY (activity_type_id)
);

CREATE TABLE activity
(
    activity_id integer NOT NULL,
    activity_type_id integer NOT NULL,
    code varchar NOT NULL,
    name varchar NOT NULL,
    parent_id integer,
    CONSTRAINT activity_pkey PRIMARY KEY (activity_id),
    CONSTRAINT activitytypeid FOREIGN KEY (activity_type_id)
        REFERENCES activity_type (activity_type_id),
    CONSTRAINT parentid FOREIGN KEY (parent_id)
        REFERENCES activity (activity_id)
);

CREATE TABLE sub_program
(
    sub_program_id integer NOT NULL,
    index_num integer,
    CONSTRAINT sub_program_pkey PRIMARY KEY (sub_program_id),
    CONSTRAINT sub_program_id UNIQUE (sub_program_id),
    CONSTRAINT subprogramid FOREIGN KEY (sub_program_id)
        REFERENCES activity (activity_id)
);

CREATE TABLE project
(
    project_id integer NOT NULL,
    target_desc varchar,
    CONSTRAINT project_pkey PRIMARY KEY (project_id),
    CONSTRAINT project_id UNIQUE (project_id),
    CONSTRAINT projectid FOREIGN KEY (project_id)
        REFERENCES activity (activity_id)
);

CREATE TABLE program
(
    program_id integer NOT NULL,
    index_num integer,
    year_start integer,
    year_finish integer,
    CONSTRAINT program_pkey PRIMARY KEY (program_id),
    CONSTRAINT program_id UNIQUE (program_id),
    CONSTRAINT programid FOREIGN KEY (program_id)
        REFERENCES activity (activity_id)
);

CREATE TABLE point
(
    point_id integer NOT NULL,
    plan_date date NOT NULL,
    fact_date date,
    CONSTRAINT point_pkey PRIMARY KEY (point_id),
    CONSTRAINT point_id UNIQUE (point_id),
    CONSTRAINT pointid FOREIGN KEY (point_id)
        REFERENCES activity (activity_id)
);

CREATE TABLE area
(
    area_id integer NOT NULL,
    name varchar,
    CONSTRAINT area_pkey PRIMARY KEY (area_id)
);

CREATE TABLE contract
(
    contract_id integer NOT NULL,
    area_id integer,
    CONSTRAINT contract_pkey PRIMARY KEY (contract_id),
    CONSTRAINT contract_id UNIQUE (contract_id),
    CONSTRAINT areaid FOREIGN KEY (area_id)
        REFERENCES area (area_id),
    CONSTRAINT contractid FOREIGN KEY (contract_id)
        REFERENCES activity (activity_id)
);