# Tests For HomePro

Testing 

# Setup

`bundle update`

`thor list`

`thor set:ffx_osx_staging`

To execute all of the tests:

`cucumber`

To execute all features (tests) in a specific directory:

`cucumber features/iva_features`

To execute a specific feature file in a speficic directory:

`cucumber features/<feature_name>.feature`

To execute a specifice scenario in a feature file:

`cucumber features/<feature_name>.feature:10`

# Architecture

Cucumber (feature files and part of step definitions) -> Watir-Webdriver (step definition code) -> Page Objects (a page object for each page the tests interact with)