class HomeController < ApplicationController
  def index
    RDF::Reader.open("departments.owl") do |reader|
      reader.each_statement do |statement|
        puts statement.inspect
      end
    end
  end

  def writing
  end

  def reading
  end

  def querying
    # repository = RDF::Repository.load("departments.owl")
    # byebug
    # sparql = SPARQL::Client.new(repository)
    # query = sparql.select.limit
    #
    # query.each_solution do |solution|
    #   puts solution.inspect
    # end

    queryable = RDF::Repository.load("departments.owl")
    sse = SPARQL.parse("SELECT * WHERE { ?s ?p ?o }")
    result = queryable.query(sse)
    result.
  end

  def using
  end
end
