# Check-Security

Written in the style of [checksec.sh](https://www.trapkit.de/tools/checksec.html) for Linux.
Check-Security is a simpler view of the current state of the exploit mitigation settings on your machine.

## Use

Run `Check-Security` with the same parameters you would use with `Get-ProcessMitigation`.

Run without parameters to system defaults.

```
.\Check-Security.ps1
```

Run with parameters like this to get settings for specific processes.

```
.\Check-Security.ps1 -Name iexplore.exe
```

## Output

For each exploit mitigation `Check-Security` will output "On", "Off", "On (default)", "Off (default)", or "Unexpected value!".

```
Category:
    Specific Mitigation (More details or Abbreviation) [CmdletName]:  Result
```

You can use the `CmdletName` to change the exploit mitigation settings with `Set-ProcessMitigation`.

```
Set-ProcessMitigation -System -Enable CmdletName
```

## References

* (Customize exploit protection)[https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/customize-exploit-protection]
* (Protect devices from exploits)[https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/exploit-protection-exploit-guard]
* (Enable exploit protection)[https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/enable-exploit-protection]