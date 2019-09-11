# h2-ignite-perf

I am trying to compare performances porting applications from Oracle & SQL Server to H2 database & Ignite.

I created a test including:
- A set of tables and indexes.
- A data set of random generated data with 50k records per tables. 
- A query with couple of INNER & LEFT OUTER join (query returned around 188k records).

I noticed significant differences in terms of performance.

Running the query, on my machine (i5 dual core, 16Gb RAM):
- Oracle manages to run this query in around 350ms.
- H2 takes 4.5s (regardless of the mode - server & in-memory).
- Ignite takes 9s.

Iterating over the JDBC result set:
- Less than 50ms for H2 in-memory mode
- Around 2s for the H2 server mode
- Around 5s for Oracle
- Around 1s for Ignite

.