### Oceny

Ember.js app on Rails for rating applications of wannabe attendees.

#### Setup

Some hints if you've never done this kind of thing before.

##### 1. Deploy your app

##### 2. [Register it on Github](https://github.com/settings/applications) for OAuth access.

Your authorization callback ID is `your-app-address/auth/github/callback`

##### 3. Use `dotenv-production` to store secret variables

Like `client_id` and especially `client_secret` & `secret_key_base`.

##### 4. Invite your team & upload applicants' data

##### 5. Work it!

#### TODOs

1. Allow overwriting attendees from .txt or deleting current db from UI
2. Figure out how to parse answers from multiple choice questions (commas?)
3. Correct splitting answers for double tabs
4. Create example `.env.production` file or upgrade to Rails 4.1
5. Round rate on attendee page
6. Option to hide other users' rates before you cast your vote
7. 'Next application' on last attendee's page should link to somewhere sensible
8. Have a way to see if you voted on all of the applicants / Rates stats
9. Next/previous buttons should work correctly in different contexts
10. Print emails of accepted/not accepted applicants based on a threshold
