RIAK_HOME ?= $HOME/src/riak_search/rel/riaksearch

SC = $(RIAK_HOME)/bin/search-cmd

.PHONY: schema index search

schema:
	$(SC) set_schema n1 data/nodes-schema.erl
	$(SC) set_schema n2 data/nodes-schema.erl

index:
	bin/load_via_post n1
	bin/load_via_cmd n2
	$(SC) index txt data/a.txt
	$(SC) index txt data/b.txt

search:
	-$(SC) search_doc n1 'X_CHEF_id_CHEF_X:a'
	-$(SC) search_doc n2 'X_CHEF_id_CHEF_X:a'
	-$(SC) search_doc n2 'X_CHEF_id_CHEF_X:foo_bar_baz'
	-$(SC) search_doc txt 'name__=__a'
	-$(SC) search_doc txt 'name__=__b'
	-$(SC) search_doc txt 'value__=__1'
