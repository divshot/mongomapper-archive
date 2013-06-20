# Mongomapper::Archive

MongoMapper::Archive (Archive for short) is a plugin for [MongoMapper](http://mongomapper.com/) that adds simple archiving functionality to your models.

Archive doesn't rely on a default scope, only applies to the models you specify, and only hooks into the `before_destroy` callback. It's as unobtrusive as it can be.

## Installation

Add this line to your application's Gemfile:

    gem 'mongomapper-archive'

Or install it yourself as:

    $ gem install mongomapper-archive

## Usage

Add it to a model:
```
class Post
  include MongoMapper::Document
  plugin MongoMapper::Archive
end
```

After that, any call to `destroy` a document of this class will first copy the document to a separate collection, *then* destroy the document.

## Limitations

* Archive does not currently provide a means to recover archived documents.
* Archive adds an `ArchiveDocument` collection to your database.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
