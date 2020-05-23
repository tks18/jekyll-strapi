# jekyll-strapi

## Install

This is a Custom Jekyll-strapi gem for Use in Jekyll version > 4.0.
Since the Official jekyll-strapi gem has not been developed for the past 2 years. I Forked it and Made some Changes to Work with Latest Jekyll Versions.

Add the following to your Gemfile:
```
gem "jekyll-strapi", github:tks18/jekyll-strapi
```
Then add "jekyll-strapi" to your plugins in `_config.yml`:

```
plugins:
    - jekyll-strapi
```

## Configuration

```yaml
strapi:
    # Your API endpoint (optional, default to http://localhost:1337)
    endpoint: http://localhost:1337
    # Collections, key is used to access in the strapi.collections
    # template variable
    collections:
        # Example for a "articles" collection
        articles:         
            # Collection name (optional)
            type: article
            # Permalink used to generate the output files (eg. /articles/:id).
            permalink: /articles/:id/
            # Layout file for this collection
            layout: strapi_article.html
            # Generate output files or not (default: false)
            output: true
```

## Usage

This plugin provides the `strapi` template variable. This template provides access to the collections defined in the configuration.

### Using Collections

Collections are accessed by their name in `strapi.collections`. The `articles` collections is available at `strapi.collections.articles`.

To list all documents of the collection:

```
{% for post in strapi.collections.articles %}
<article>
    <header>
        {{ post.title }}
    </header>
    <div class="body">
        {{ post.content }}
    </div>
</article>
{% endfor %}
```
