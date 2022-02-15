Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](http://community.getbdt.com/) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

## Structure:
dbt-demo
├── analysis
├── dbt_packages
├── logs
├── macros
├── models
    └── marts
        └── core
            └── dim_customers.sql  
    └── staging
        └── jaffle_shop
            ├── stg_customers.sql
            └── stg_orders.sql 
├── seeds
├── snapshots
├── target
├── tests
├── .gitignore
├── dbt_project.yml
└── README.md

## Hints:
#### Commands
dbt run -s staging - run all staging
dbs docs generate

#### Blocks
{{ config(
materialized='table'
) }}
