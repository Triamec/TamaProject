# Tama assembly file
# Target virtual machine (VMID): 0x00000005
# Source: TamaProgram, C:\Users\ns\AppData\Local\Temp\Tamac\TamaProgram.dll
# Compile time: 22.06.2023 10:48:19
# Target register layout (RLID): 0x00000013
# Space for static fields: 0x00000001
# Maximal stack size: 0x00000005
# Init entry point                 : 0x00000028 (local stack size = 0x00000000)
# Task entry point AsynchronousMain: 0x00000000 (local stack size = 0x00000000)
# Task entry point IsochronousMain : 0x00000001 (local stack size = 0x00000002)
# Task entry point Axis1Init       : 0x00000000 (local stack size = 0x00000000)
# Task entry point Axis1Coupling   : 0x00000000 (local stack size = 0x00000000)
# Task entry point Axis2Init       : 0x00000000 (local stack size = 0x00000000)
# Task entry point Axis2Coupling   : 0x00000000 (local stack size = 0x00000000)
0x00000000   halt                                             # precautious halt

# Method TamaProgram.Main()
0x00000001   ldabs     0x00000000                             # load static field _counter : Int32
0x00000003   ldc.1                                            # 1
0x00000004   bge.i     0x00000009                             # branch if greater
0x00000006   ldc.1                                            # 1
0x00000007   rst       0x00237e00                             # set Register.Application.TamaControl.IsochronousMainState : Int32
0x00000009   rld       0x00237e00                             # get Register.Application.TamaControl.IsochronousMainState : Int32
0x0000000b   stloc     0x00000000                             # store local variable CS$0$0000 : Int32
0x0000000d   ldloc     0x00000000                             # load local variable CS$0$0000 : Int32
0x0000000f   switch.   0x00000002                             # switch table
      (   0x00000027   0x00000014   )
0x00000013   halt                                             # return from Tama task routine
0x00000014   ldc.0                                            # 0
0x00000015   ldc.0                                            # 0
0x00000016   rlde      0x00000008   0x00238701                # get Register.Application.Variables.Integers[TOS] : Int32
0x00000019   ldc.1                                            # 1
0x0000001a   add.i4                                           # integer addition
0x0000001b   rste      0x00000008   0x00238701                # set Register.Application.Variables.Integers[TOS] : Int32
0x0000001e   ldc.0                                            # 0
0x0000001f   rst       0x00237e00                             # set Register.Application.TamaControl.IsochronousMainState : Int32
0x00000021   ldabs     0x00000000                             # load static field _counter : Int32
0x00000023   ldc.1                                            # 1
0x00000024   add.i4                                           # integer addition
0x00000025   stabs     0x00000000                             # store static field _counter : Int32
0x00000027   halt                                             # return from Tama task routine

# Method TamaProgram..cctor()
0x00000028   halt                                             # return from Tama task routine
