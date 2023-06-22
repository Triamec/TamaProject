// The number of these two  directives must match the device's Tama Virtual Machine ID and Register Layout ID,
// respectively.
using System.Reflection;
using Triamec.Tama.Rlid19;
using Triamec.Tama.Vmid5;

[assembly: AssemblyVersion("2.0.0.0")]

// The class name (as well as the project name and the namespace) contributes to the file name of the produced Tama
// program. This file is located in the bin\Debug or bin\Release subfolders and will commonly be copied into the
// Tama directory of the default workspace, too.
[Tama]
static class TamaProgram
{

    // Define constants for enhanced readability.
    static class State
    {
        public const int Idle = 0;
        public const int Working = 1;
    }
    static class Command
    {
        public const int None = 0;
        public const int Go = 1;
    }

    // Static variables can be used, but are not shared between the AsynchronousMain and the other tasks (Imagine a
    // [ThreadStatic] attribute here). For sharing, use general purpose registers.
    static int _counter = 0;

    // Choose how to run the program. Additional entry points for other tasks can be specified in this same program.
    [TamaTask(Task.IsochronousMain)]
    static void Main()
    {
        // Template state machine showing the picture of how a task is structured and which registers are commonly used
        // for status/control operations.
        if(_counter < 1){
            Register.Application.TamaControl.IsochronousMainState = State.Working;
        }
        switch (Register.Application.TamaControl.IsochronousMainState) {
			case State.Idle: {
                    //do nothing 
                    break;
                    }

			case State.Working: {
                    Register.Application.Variables.Integers[0] += 1;
                    Register.Application.TamaControl.IsochronousMainState = State.Idle;
                    _counter += 1;
                    break;
                }
    }
}
}
