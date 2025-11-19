package fetch_test_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"

import fetch_env_pkg::*;
import bpu_agent_pkg::*;
import exec_agent_pkg::*;
import if_id_agent_pkg::*;
import seq_pkg::*;
import fetch_vseq_pkg::*;

`include "fetch_test_base.svh"
`include "fetch_inorder_test.svh"
`include "fetch_random_test.svh"

endpackage
