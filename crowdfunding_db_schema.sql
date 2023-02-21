CREATE TABLE category (
    category_id VARCHAR(50) NOT NULL,
    category_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) NOT NULL,
    subcategory_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
    cf_id VARCHAR(50) NOT NULL,
    contact_id VARCHAR(50) NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    description VARCHAR(200) NOT NULL,
    goal VARCHAR(50) NOT NULL,
    pledged VARCHAR(50) NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    launched_date VARCHAR(50) NOT NULL,
    end_date VARCHAR(50) NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE contacts (
    contact_id VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    PRIMARY KEY (contact_id)   
);


-- Checking data loaded correctly on campaign table after import
SELECT * FROM campaign;
-- Checking data loaded correctly on category table after import
SELECT * FROM category;
-- Checking data loaded correctly on contacts table after import
SELECT * FROM contacts;
-- Checking data loaded correctly on subcategory table after import
SELECT * FROM subcategory;