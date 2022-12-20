vcs -full64 -R -sverilog bench/hht2_685_bus.sv hht_bench.vg  -v svt_16nm.v +define+VCD

vcs -full64 -R -sverilog bench/hht2_jpwh.sv hht_bench.vg  -v svt_16nm.v +define+VCD

vcs -full64 -R -sverilog bench/hht2_rbsa.sv hht_bench.vg  -v svt_16nm.v +define+VCD

vcs -full64 -R -sverilog bench/tb.sv hht_bench.vg  -v svt_16nm.v +define+VCD

vcs -full64 -R -sverilog bench/hht2_pesa.sv netlists/hht_1G.vg  -v svt_16nm.v +define+VCD +neg_tchk

