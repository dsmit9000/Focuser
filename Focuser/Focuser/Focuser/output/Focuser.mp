Project:      output/Focuser
Build Number: 0
Date:         Wed Dec 23 11:24:13 2020
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   0040 =     64. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0150  LoadConfigTBL_focuser_Bank0
       016D  LoadConfigTBL_focuser_Bank1
       0190  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0190   0010 =     16. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0190  __idata_start
       01A0  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01A0   00C3 =    195. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_focuser_Ordered
       0205  LoadConfigInit
       0205  _LoadConfigInit
       020C  _LoadConfig_focuser
       020C  LoadConfig_focuser
       0263  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0263   00F8 =    248. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0263  __text_start
       0263  _main
       02D0  _Step
       032D  _SetOutput
       035B  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0010 =     16. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  _stepdata
       0000  __data_start
       0010  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0010   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0010  __rX
       0011  __r1
       0012  __r0
       0013  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0013   0008 =      8. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0013  _lstep
       0013  __bss_start
       0015  _delay
       0017  _enable
       0019  _pos
       001B  __ramareas_end
       001B  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   0101 =    257. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       00FE  _bGetPowerSetting
       00FE  bGetPowerSetting

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, rX.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x150.0xfff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

