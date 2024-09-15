-- Step 1: Create the custom role
CREATE ROLE DATA_ANALYST;

-- Step 2: Grant access to a warehouse and database
GRANT USAGE ON WAREHOUSE ANALYST_WH TO ROLE DATA_ANALYST;
GRANT USAGE ON DATABASE ANALYST_DB TO ROLE DATA_ANALYST;

-- Step 3: Assign the role to a user
GRANT ROLE DATA_ANALYST TO USER analyst_user;

-- Step 4: (Optional) Set the custom role as the default role for the user
ALTER USER analyst_user SET DEFAULT_ROLE = DATA_ANALYST;

-- Step 5: Verify the role creation and its privileges
SHOW ROLES;
SHOW GRANTS ON ROLE DATA_ANALYST;

-- Step 6: Test the role by switching to it
USE ROLE DATA_ANALYST;
