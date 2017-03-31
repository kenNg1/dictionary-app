require('sinatra')
    require('sinatra/reloader')
    also_reload('lib/**/*.rb')
    require('./lib/word')
    require('./lib/definition')

    get('/') do
      erb(:index)
    end

    get('/allwords') do
      @words = Word.all()
      erb(:allwords)
    end

    get('/form') do
      erb(:word_form)
    end

    get('/add') do
      Word.all()
      @word = params.fetch('word')
      new_word = Word.new(@word)
      new_word.save()
      erb(:index)
    end

    get('/allwords/:id') do
      id = params.fetch("id").to_i
      @word = Word.find(id)
      erb(:word)
    end

    get('/add_def') do
      definition = params.fetch("definition")
      by = params.fetch("by")
      id = params.fetch("id").to_i
      @word = Word.find(id)
      new_definition = Definition.new({:content => definition, :by =>by})
      new_definition.save()
      @word.add_def(new_definition)
      erb(:index)
    end
