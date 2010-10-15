{
  schema,
  [
   {version, "1.1"},
   {default_field, "value"},
   {default_op, "or"},
   {n_val, 3},
   {analyzer_factory, "com.basho.search.analysis.WhitespaceAnalyzerFactory"}
  ],
  [

   % Everything else is a string
   {dynamic_field, [
                    {name, "*"},
                    {type, string}
                   ]}
  ]
 }.
