MODULE_big = tdigest
OBJS = tdigest.o

EXTENSION = tdigest
DATA = tdigest--1.0.0.sql tdigest--1.0.0--1.0.1.sql tdigest--1.0.1--1.2.0.sql  tdigest--1.2.0--1.3.0.sql tdigest--1.3.0--1.4.0-dev.sql
MODULES = tdigest

CFLAGS=`pg_config --includedir-server`

TESTS        = $(wildcard test/sql/*.sql)
REGRESS      = $(patsubst test/sql/%.sql,%,$(TESTS))
REGRESS_OPTS = --inputdir=test

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
