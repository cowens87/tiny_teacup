# Tea Subscription Service

You will create a Rails API for a Tea Subscription Service.

## Requirements:

**At a minimum, you must create:**

- An endpoint to subscribe a customer to a tea subscription
- An endpoint to cancel a customer’s tea subscription
- An endpoint to see all of a customer’s subscriptions (active and cancelled)
- Beyond the base requirements, include any additional endpoints you’d like, but be mindful of your time.
  - You don’t need to go overboard, consider what might be necessary to achieve MVP so that this API is easy to understand and consume by a Frontend Developer.

**Things we’ll be looking for:**

- A strong understanding of Rails
- Ability to create restful routes
- Demonstration of well-organized code, following OOP
- Test Driven Development
- Clear documentation
  > **_Try to limit your total time to approximately 8 hours on this project. Prioritize what is important to completing MVP and demonstrating your capabilities as a developer._**

> **If you are looking for a stretch option, you can consume this API for tea information: [Tea API](https://tea-api-vic-lo.herokuapp.com/)**

## Data Details

**Note**: The below data outlines are meant to be a guide for data details you may use in the application. If you want to change or include more information please do so. Using fake data in your application is okay.

### Tables

- A customer can have many subscriptions
- A subscription belongs to a customer and a tea
- A tea belongs to a customer and has many subscriptions

#### Tea

| Column Name | Data type |
| ----------- | --------- |
| Title       | String    |
| Description | String    |
| Price       | Float     |
| Brew Time   | Float     |

#### Customer

- equivalent to an order

| Column Name  | Data type |
| ------------ | --------- |
| First Name   | String    |
| Last Name    | String    |
| Email        | String    |
| Address      | String    |
| Subscription | Boolean   |

#### Subscription

| Column Name      | Data type |
| ---------------- | --------- |
| Title            | String    |
| Description      | String    |
| Delivery Cadence | String    |
| Customer_id      | Int       |
| Tea_id           | Int       |
