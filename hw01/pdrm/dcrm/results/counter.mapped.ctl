STIL 1.0 {
    CTL P2001.10;
    Design 2005;
}
Header {
    Title "Minimal STIL for design `counter'";
    Date "Wed Sep  6 16:28:20 2023";
    Source "DFT Compiler S-2021.06-SP3";
}
Signals {
    "clock" In;
    "dec" In;
    "in[0]" In;
    "in[1]" In;
    "in[2]" In;
    "in[3]" In;
    "latch" In;
    "reset" In;
    "zero" Out;
    "test_si" In;
    "test_so" Out;
    "test_se" In;
    "value_reg[0]/SCD" Pseudo;
    "value_reg[3]/Q" Pseudo;
}
SignalGroups  {
    "all_inputs" = '"clock" + "dec" + "in[0]" + "in[1]" + "in[2]" + "in[3]" + 
    "latch" + "reset" + "test_si" + "test_se"';
    "all_outputs" = '"zero" + "test_so"';
    "all_ports" = '"all_inputs" + "all_outputs"';
    "_pi" = '"clock" + "dec" + "in[0]" + "in[1]" + "in[2]" + "in[3]" + "latch" + 
    "reset" + "test_si" + "test_se"';
    "_po" = '"zero" + "test_so"';
}
SignalGroups all_dft_protocol {
    "_clk" = '"clock" + "reset"';
}
SignalGroups Internal_scan {
    "_si" = "test_si" {
        ScanIn;
    }
    "_so" = "test_so" {
        ScanOut;
    }
    "_clk" = '"clock" + "reset"';
}
ScanStructures Internal_scan {
    ScanChain "1" {
        ScanLength 4;
        ScanCells "value_reg[1]" "value_reg[2]" "value_reg[0]" "value_reg[3]";
        ScanIn "test_si";
        ScanOut "test_so";
        ScanEnable "test_se";
        ScanMasterClock "clock";
    }
}
CoreType "SNPS_CLOCK_GATE_HIGH_counter" {
    Signals {
        "CLK" In;
        "EN" In;
        "ENCLK" Out;
        "TE" In;
    }
    SignalGroups  {
    }
}
CoreInstance "SNPS_CLOCK_GATE_HIGH_counter" {
    "clk_gate_value_reg";
}
Timing  {
    WaveformTable "_default_WFT_" {
        Period '100ns';
        Waveforms {
            "all_inputs" {
                0 {
                    '0ns' D;
                }
            }
            "all_inputs" {
                1 {
                    '0ns' U;
                }
            }
            "all_inputs" {
                Z {
                    '0ns' Z;
                }
            }
            "all_inputs" {
                N {
                    '0ns' N;
                }
            }
            "all_outputs" {
                X {
                    '0ns' X;
                    '40ns' X;
                }
            }
            "all_outputs" {
                H {
                    '0ns' X;
                    '40ns' H;
                }
            }
            "all_outputs" {
                T {
                    '0ns' X;
                    '40ns' T;
                }
            }
            "all_outputs" {
                L {
                    '0ns' X;
                    '40ns' L;
                }
            }
            "clock" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '55ns' D;
                }
            }
            "reset" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '55ns' D;
                }
            }
        }
    }
    WaveformTable "_multiclock_capture_WFT_" {
        Period '100ns';
        Waveforms {
            "all_inputs" {
                0 {
                    '0ns' D;
                }
            }
            "all_inputs" {
                1 {
                    '0ns' U;
                }
            }
            "all_inputs" {
                Z {
                    '0ns' Z;
                }
            }
            "all_inputs" {
                N {
                    '0ns' N;
                }
            }
            "all_outputs" {
                X {
                    '0ns' X;
                    '40ns' X;
                }
            }
            "all_outputs" {
                H {
                    '0ns' X;
                    '40ns' H;
                }
            }
            "all_outputs" {
                T {
                    '0ns' X;
                    '40ns' T;
                }
            }
            "all_outputs" {
                L {
                    '0ns' X;
                    '40ns' L;
                }
            }
            "clock" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '55ns' D;
                }
            }
            "reset" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '55ns' D;
                }
            }
        }
    }
    WaveformTable "_allclock_capture_WFT_" {
        Period '100ns';
        Waveforms {
            "all_inputs" {
                0 {
                    '0ns' D;
                }
            }
            "all_inputs" {
                1 {
                    '0ns' U;
                }
            }
            "all_inputs" {
                Z {
                    '0ns' Z;
                }
            }
            "all_inputs" {
                N {
                    '0ns' N;
                }
            }
            "all_outputs" {
                X {
                    '0ns' X;
                    '40ns' X;
                }
            }
            "all_outputs" {
                H {
                    '0ns' X;
                    '40ns' H;
                }
            }
            "all_outputs" {
                T {
                    '0ns' X;
                    '40ns' T;
                }
            }
            "all_outputs" {
                L {
                    '0ns' X;
                    '40ns' L;
                }
            }
            "clock" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '55ns' D;
                }
            }
            "reset" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '55ns' D;
                }
            }
        }
    }
    WaveformTable "_allclock_launch_WFT_" {
        Period '100ns';
        Waveforms {
            "all_inputs" {
                0 {
                    '0ns' D;
                }
            }
            "all_inputs" {
                1 {
                    '0ns' U;
                }
            }
            "all_inputs" {
                Z {
                    '0ns' Z;
                }
            }
            "all_inputs" {
                N {
                    '0ns' N;
                }
            }
            "all_outputs" {
                X {
                    '0ns' X;
                    '40ns' X;
                }
            }
            "all_outputs" {
                H {
                    '0ns' X;
                    '40ns' H;
                }
            }
            "all_outputs" {
                T {
                    '0ns' X;
                    '40ns' T;
                }
            }
            "all_outputs" {
                L {
                    '0ns' X;
                    '40ns' L;
                }
            }
            "clock" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '55ns' D;
                }
            }
            "reset" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '55ns' D;
                }
            }
        }
    }
    WaveformTable "_allclock_launch_capture_WFT_" {
        Period '100ns';
        Waveforms {
            "all_inputs" {
                0 {
                    '0ns' D;
                }
            }
            "all_inputs" {
                1 {
                    '0ns' U;
                }
            }
            "all_inputs" {
                Z {
                    '0ns' Z;
                }
            }
            "all_inputs" {
                N {
                    '0ns' N;
                }
            }
            "all_outputs" {
                X {
                    '0ns' X;
                    '40ns' X;
                }
            }
            "all_outputs" {
                H {
                    '0ns' X;
                    '40ns' H;
                }
            }
            "all_outputs" {
                T {
                    '0ns' X;
                    '40ns' T;
                }
            }
            "all_outputs" {
                L {
                    '0ns' X;
                    '40ns' L;
                }
            }
            "clock" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '55ns' D;
                }
            }
            "reset" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '55ns' D;
                }
            }
        }
    }
}
PatternBurst "__burst__" {
    PatList {
        "counter_Internal_scan_patterns" {
            SignalGroups Internal_scan;
            ScanStructures Internal_scan;
            Procedures Internal_scan;
            MacroDefs Internal_scan;
        }
    }
}
PatternExec  {
    PatternBurst "__burst__";
}
Procedures all_dft_protocol {
    "multiclock_capture" {
        W "_multiclock_capture_WFT_";
        C {
            "clock" = 0;
            "reset" = 0;
            "zero" = X;
        }
        V {
            "_po" = #;
            "_pi" = \r8 #;
        }
    }
    "allclock_capture" {
        W "_allclock_capture_WFT_";
        C {
            "clock" = 0;
            "reset" = 0;
            "zero" = X;
        }
        V {
            "_po" = #;
            "_pi" = \r8 #;
        }
    }
    "allclock_launch" {
        W "_allclock_launch_WFT_";
        C {
            "clock" = 0;
            "reset" = 0;
            "zero" = X;
        }
        V {
            "_po" = #;
            "_pi" = \r8 #;
        }
    }
    "allclock_launch_capture" {
        W "_allclock_launch_capture_WFT_";
        C {
            "clock" = 0;
            "reset" = 0;
            "zero" = X;
        }
        V {
            "_po" = #;
            "_pi" = \r8 #;
        }
    }
}
Procedures Internal_scan {
    "multiclock_capture" {
        W "_multiclock_capture_WFT_";
        C {
            "all_inputs" = 0 \r6 N 0NN;
            "all_outputs" = XX;
        }
        V {
            "_pi" = \r10 #;
            "_po" = ##;
        }
    }
    "allclock_capture" {
        W "_allclock_capture_WFT_";
        C {
            "all_inputs" = 0 \r6 N 0NN;
            "all_outputs" = XX;
        }
        V {
            "_pi" = \r10 #;
            "_po" = ##;
        }
    }
    "allclock_launch" {
        W "_allclock_launch_WFT_";
        C {
            "all_inputs" = 0 \r6 N 0NN;
            "all_outputs" = XX;
        }
        V {
            "_pi" = \r10 #;
            "_po" = ##;
        }
    }
    "allclock_launch_capture" {
        W "_allclock_launch_capture_WFT_";
        C {
            "all_inputs" = 0 \r6 N 0NN;
            "all_outputs" = XX;
        }
        V {
            "_pi" = \r10 #;
            "_po" = ##;
        }
    }
    "load_unload" {
        W "_default_WFT_";
        C {
            "all_inputs" = 0 \r6 N 0NN;
            "all_outputs" = XX;
        }
        "Internal_scan_pre_shift" : V {
            "test_se" = 1;
        }
        Shift {
            V {
                "_clk" = P0;
                "_si" = #;
                "_so" = #;
            }
        }
    }
}
Procedures Mission_mode {
    "multiclock_capture" {
        W "_multiclock_capture_WFT_";
        C {
            "all_inputs" = 0 \r6 N 0NN;
            "all_outputs" = XX;
        }
        V {
            "_pi" = \r10 #;
            "_po" = ##;
        }
    }
    "allclock_capture" {
        W "_allclock_capture_WFT_";
        C {
            "all_inputs" = 0 \r6 N 0NN;
            "all_outputs" = XX;
        }
        V {
            "_pi" = \r10 #;
            "_po" = ##;
        }
    }
    "allclock_launch" {
        W "_allclock_launch_WFT_";
        C {
            "all_inputs" = 0 \r6 N 0NN;
            "all_outputs" = XX;
        }
        V {
            "_pi" = \r10 #;
            "_po" = ##;
        }
    }
    "allclock_launch_capture" {
        W "_allclock_launch_capture_WFT_";
        C {
            "all_inputs" = 0 \r6 N 0NN;
            "all_outputs" = XX;
        }
        V {
            "_pi" = \r10 #;
            "_po" = ##;
        }
    }
}
MacroDefs all_dft_protocol {
    "test_setup" {
        W "_default_WFT_";
        V {
            "clock" = 0;
        }
        V {
            "reset" = 0;
        }
    }
}
MacroDefs Internal_scan {
    "test_setup" {
        W "_default_WFT_";
        C {
            "all_inputs" = \r10 N;
            "all_outputs" = XX;
        }
        V {
            "clock" = 0;
            "reset" = 0;
        }
        V {
        }
    }
}
MacroDefs Mission_mode {
    "test_setup" {
        W "_default_WFT_";
        C {
            "all_inputs" = \r10 N;
            "all_outputs" = XX;
        }
        V {
            "clock" = 0;
        }
        V {
            "reset" = 0;
        }
    }
}
Environment  {
    NameMaps DFTC {
        ScanCells {
            "value_reg[0]" "value_reg_0_";
            "value_reg[1]" "value_reg_1_";
            "value_reg[2]" "value_reg_2_";
            "value_reg[3]" "value_reg_3_";
        }
    }
    CTL  {
    }
}
Environment "counter" {
    CTL  {
    }
    CTL all_dft_user {
        TestMode ForInheritOnly;
        Internal {
            "clock" {
                DataType ScanMasterClock MasterClock {
                    ActiveState ForceUp;
                }
            }
            "reset" {
                DataType Reset {
                    ActiveState ForceUp;
                }
            }
        }
    }
    CTL all_dft_protocol {
        TestMode ForInheritOnly;
        Inherit all_dft_user;
        DomainReferences {
            SignalGroups all_dft_protocol;
            Procedures all_dft_protocol;
            MacroDefs all_dft_protocol;
        }
    }
    CTL all_dft {
        TestMode ForInheritOnly;
        Inherit all_dft_protocol;
        Internal {
            "test_se" {
                CaptureClock "clock" {
                    LeadingEdge;
                }
            }
        }
    }
    CTL Internal_scan_user {
        TestMode ForInheritOnly;
        Inherit all_dft;
        Internal {
            "test_se" {
                CaptureClock "clock" {
                    LeadingEdge;
                }
            }
        }
    }
    CTL Internal_scan_protocol {
        TestMode ForInheritOnly;
        Inherit Internal_scan_user;
        Internal {
            "test_se" {
                CaptureClock "clock" {
                    LeadingEdge;
                }
            }
        }
    }
    CTL Internal_scan {
        TestMode InternalTest;
        Focus Top {
        }
        Inherit Internal_scan_protocol;
        DomainReferences {
            SignalGroups Internal_scan;
            ScanStructures Internal_scan;
            MacroDefs Internal_scan;
            Procedures Internal_scan;
        }
        Internal {
            "clock" {
                DataType ScanMasterClock MasterClock;
            }
            "test_si" {
                IsConnected In {
                    Signal "value_reg[0]/SCD";
                }
                CaptureClock "clock" {
                    LeadingEdge;
                }
                DataType ScanDataIn {
                    ScanDataType Internal;
                }
                ScanStyle MultiplexedData;
            }
            "test_so" {
                IsConnected Out {
                    Signal "value_reg[3]/Q";
                }
                LaunchClock "clock" {
                    LeadingEdge;
                }
                DataType ScanDataOut {
                    ScanDataType Internal;
                }
                ScanStyle MultiplexedData;
            }
            "test_se" {
                CaptureClock "clock" {
                    LeadingEdge;
                }
                DataType ScanEnable {
                    ActiveState ForceUp;
                }
            }
        }
    }
    CTL Mission_mode_user {
        TestMode ForInheritOnly;
        Inherit all_dft;
        Internal {
            "test_se" {
                CaptureClock "clock" {
                    LeadingEdge;
                }
            }
        }
    }
    CTL Mission_mode_protocol {
        TestMode ForInheritOnly;
        Inherit Mission_mode_user;
        Internal {
            "test_se" {
                CaptureClock "clock" {
                    LeadingEdge;
                }
            }
        }
    }
    CTL Mission_mode {
        TestMode Normal;
        Inherit Mission_mode_protocol;
        DomainReferences {
            MacroDefs Mission_mode;
            Procedures Mission_mode;
        }
        Internal {
            "clock" {
                DataType Functional;
            }
            "dec" {
                DataType Functional;
            }
            "in[0]" {
                DataType Functional;
            }
            "in[1]" {
                DataType Functional;
            }
            "in[2]" {
                DataType Functional;
            }
            "in[3]" {
                DataType Functional;
            }
            "latch" {
                DataType Functional;
            }
            "reset" {
                DataType Functional;
            }
            "zero" {
                DataType Functional;
            }
            "test_si" {
                DataType Functional;
            }
            "test_so" {
                DataType Functional;
            }
            "test_se" {
                CaptureClock "clock" {
                    LeadingEdge;
                }
                DataType Functional;
            }
        }
    }
}
Environment dftSpec {
    CTL  {
    }
    CTL all_dft {
        TestMode ForInheritOnly;
    }
    CTL Internal_scan {
        TestMode InternalTest;
        Inherit all_dft;
    }
    CTL Mission_mode {
        TestMode InternalTest;
        Inherit all_dft;
    }
}

