/* contrib/pgpool_adm/pgpool_adm--1.0.sql */

/* ***********************************************
 * Administrative functions for pgPool
 * *********************************************** */

/**
 * input parameters: node_id, host, timeout, port, username, password
 */
CREATE FUNCTION pcp_node_info(integer, text, integer, integer, text, text, OUT host text, OUT port integer, OUT status text, OUT weight float4)
RETURNS record
AS 'MODULE_PATHNAME', '_pcp_node_info'
LANGUAGE C VOLATILE STRICT;

/**
 * input parameters: node_id, server_name
 */
CREATE FUNCTION pcp_node_info(integer, text, OUT host text, OUT port integer, OUT status text, OUT weight float4)
RETURNS record
AS 'MODULE_PATHNAME', '_pcp_node_info'
LANGUAGE C VOLATILE STRICT;

/**
 * input parameters: host, timeout, port, username, password
 */
CREATE FUNCTION pcp_pool_status(text, integer, integer, text, text, OUT item text, OUT value text, OUT description text)
RETURNS record
AS 'MODULE_PATHNAME', '_pcp_pool_status'
LANGUAGE C VOLATILE STRICT;

/**
 * input parameters: server_name
 */
CREATE FUNCTION pcp_pool_status(text, OUT item text, OUT value text, OUT description text)
RETURNS record
AS 'MODULE_PATHNAME', '_pcp_pool_status'
LANGUAGE C VOLATILE STRICT;

/**
 * input parameters: host, timeout, port, username, password
 */
CREATE FUNCTION pcp_node_count(text, integer, integer, text, text, OUT node_count integer)
RETURNS integer
AS 'MODULE_PATHNAME', '_pcp_node_count'
LANGUAGE C VOLATILE STRICT;

/**
 * input parameters: server_name
 */
CREATE FUNCTION pcp_node_count(text, OUT node_count integer)
RETURNS integer
AS 'MODULE_PATHNAME', '_pcp_node_count'
LANGUAGE C VOLATILE STRICT;
