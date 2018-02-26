# Nicely Money Manager


#### Usage

**Specify the ruby version and the gemset you wish to use through RVM**
```
> rvm --ruby-version use <version>@<gemset>
# Example
> rvm --ruby-version use 2.3.0@nicely
```
**Create a copy of the .env.template file and rename it to .env to manage your environment variables.**
```
> cp .env.template .env
```
**Update the .env file with the appropriate information.**
```ruby
# Example .env file content

# Web server config
MAX_WORKER_PROCESSES=3
MIN_WORKER_MEMORY=251658240
MAX_WORKER_MEMORY=272629760

# Redis config
REDIS_URI=<uri to redis>

# Database config
DATABASE_HOST=localhost
DATABASE_PORT=5432
DATABASE_USER=kyndream
DATABASE_PASSWORD=pandas
DATABASE_NAME=nicely
```

**After bundling and running migrations:**
```ruby
# Start your local server on port 3000
passenger start

# In another tab, start your webpack server
npm run start:dev
```
