{
  schema,
  [
   {version, "1.1"},
   {default_field, "content"},
   {default_op, "or"},
   {n_val, 3},
   {analyzer_factory, "com.basho.search.analysis.WhitespaceAnalyzerFactory"}
  ],
  [
   {field, [
            {name, "id"},
            {type, string}
           ]},
   {dynamic_field, [
                    {name, "*"},
                    {type, string}
                   ]},
   {field, [
            {name, "content"},
            {type, string},
            {analyzer_factory, "com.basho.search.analysis.WhitespaceAnalyzerFactory"}
           ]},
   {field, [
            {name, "X_CHEF_id_CHEF_X"},
            {type, string},
            {analyzer_factory, "com.basho.search.analysis.WhitespaceAnalyzerFactory"}
           ]},
   {field, [
            {name, "X_CHEF_database_CHEF_X"},
            {type, string},
            {analyzer_factory, "com.basho.search.analysis.WhitespaceAnalyzerFactory"}
           ]},
   {field, [
            {name, "X_CHEF_type_CHEF_X"},
            {type, string},
            {analyzer_factory, "com.basho.search.analysis.WhitespaceAnalyzerFactory"}
           ]}
  ]
 }.
