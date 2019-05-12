# Copyright (c) Julian Cohen. All rights reserved.

If ($args.Count -gt 0) {
    $gpm = Get-ProcessMitigation @args
} else {
    $gpm = Get-ProcessMitigation -System
}

Write-Host
Write-Host "== Exploit Mitigations =="
Write-Host

#$gpm.CFG
Write-Host "CFG:"
Write-Host -NoNewline "`tControl Flow Guard [CFG]:`t`t`t`t`t`t"
Switch ($gpm.CFG.Enable) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tStrict CFG [StrictCFG]:`t`t`t`t`t`t`t"
Switch ($gpm.CFG.StrictControlFlowGuard) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

<#
Write-Host -NoNewline "CFG Suppress Exports:`t"
Switch ($gpm.CFG.SupressExports) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "? (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
#>

#$gpm.DEP
Write-Host "DEP:"
Write-Host -NoNewline "`tData Execution Prevention [DEP]:`t`t`t`t`t"
Switch ($gpm.DEP.Enable) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tATL Thunk Emulation [EmulateAtlThunks]:`t`t`t`t`t"
Switch ($gpm.DEP.EmulateAtlThunks) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.ASLR
Write-Host "ASLR:"
Write-Host -NoNewline "`tMandatory ASLR [ForceRelocateImages]:`t`t`t`t`t"
Switch ($gpm.ASLR.ForceRelocateImages) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tBottom-Up ASLR [BottomUp]:`t`t`t`t`t`t"
Switch ($gpm.ASLR.BottomUp) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tHigh-Entropy ASLR [HighEntropy]:`t`t`t`t`t"
Switch ($gpm.ASLR.HighEntropy) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.SEHOP
Write-Host "SEHOP:"
Write-Host -NoNewline "`tStructured Exception Handling Overwrite Protection [SEHOP]:`t`t"
Switch ($gpm.SEHOP.Enable) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.Heap
Write-Host "Heap Integrity:"
Write-Host -NoNewline "`tValidate Heap Integrity [TerminateOnHeapError]:`t`t`t`t"
Switch ($gpm.Heap.TerminateOnError) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.DynamicCode
Write-Host "Dynamic Code:"
Write-Host -NoNewline "`tArbitrary Code Guard (ACG) [DynamicCode]:`t`t`t`t"
Switch ($gpm.DynamicCode.BlockDynamicCode) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tAllow Threads To Opt-Out:`t`t`t`t`t`t"
Switch ($gpm.DynamicCode.AllowThreadsToOptOut) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.ImageLoad
Write-Host "Image Load:"
Write-Host -NoNewline "`tBlock Low Integrity Images [BlockLowLabel]:`t`t`t`t"
Switch ($gpm.ImageLoad.BlockLowLabelImageLoads) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tBlock Remote Images [BlockRemoteImages]:`t`t`t`t"
Switch ($gpm.ImageLoad.BlockRemoteImageLoads) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tPrefer System32 [PreferSystem32]:`t`t`t`t`t"
Switch ($gpm.ImageLoad.PreferSystem32) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.FontDisable
Write-Host "Fonts:"
Write-Host -NoNewline "`tDisable Non-System Fonts [DisableNonSystemFonts]:`t`t`t"
Switch ($gpm.FontDisable.DisableNonSystemFonts) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.BinarySignature
Write-Host "Binary Signature (Code Integrity Guard):"
Write-Host -NoNewline "`tMicrosoft Signed Only [BlockNonMicrosoftSigned]:`t`t`t"
Switch ($gpm.BinarySignature.MicrosoftSignedOnly) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tAllow Store Signed Binaries [AllowStoreSigned]:`t`t`t`t"
Switch ($gpm.BinarySignature.AllowStoreSignedBinaries) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tImage Dependency Integrity [EnforceModuleDepencySigning]:`t`t"
Switch ($gpm.BinarySignature.EnforceModuleDependencySigning) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.ExtensionPoint
Write-Host "Extension Point (DLL Injection):"
Write-Host -NoNewline "`tDisable DLL Extension Points [ExtensionPoint]:`t`t`t`t"
Switch ($gpm.ExtensionPoint.DisableExtensionPoints) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.SystemCall
Write-Host "System Call:"
Write-Host -NoNewline "`tDisable Win32k system calls [DisableWin32kSystemCalls]:`t`t`t"
Switch ($gpm.SystemCall.DisableWin32kSystemCalls) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.ChildProcess
Write-Host "Child Process:"
Write-Host -NoNewline "`tDo Not Allow Child Processes [DisallowChildProcessCreation]:`t`t"
Switch ($gpm.ChildProcess.DisallowChildProcessCreation) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.Payload
Write-Host "Payload Prevention:"
Write-Host -NoNewline "`tExport Address Filter (EAF) [EnableExportAddressFilter]:`t`t"
Switch ($gpm.Payload.EnableExportAddressFilter) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tExport Address Filter Plus (EAF+) [EnableExportAddressFilterPlus]:`t"
Switch ($gpm.Payload.EnableExportAddressFilterPlus) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tImport Address Filtering (IAF) [EnableImportAddressFilter]:`t`t"
Switch ($gpm.Payload.EnableImportAddressFilter) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tStack Integrity (ROP StackPivot) [EnableRopStackPivot]:`t`t`t"
Switch ($gpm.Payload.EnableRopStackPivot) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tAPI Invocation (ROP CallerCheck) [EnableRopCallerCheck]:`t`t"
Switch ($gpm.Payload.EnableRopCallerCheck) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}

Write-Host -NoNewline "`tSimulate Execution (ROP SimExec) [EnableRopSimExec]:`t`t`t"
Switch ($gpm.Payload.EnableRopSimExec) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

#$gpm.StrictHandle
Write-Host "Strict Handle:"
Write-Host -NoNewline "`tValidate Handle Usage [StrictHandle]:`t`t`t`t`t"
Switch ($gpm.StrictHandle.Enable) {
    "ON" {
        Write-Host -ForegroundColor White -BackgroundColor Green "On";
        Break;
    }
    "OFF" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off";
        Break;
    }
    "NOTSET" {
        Write-Host -ForegroundColor White -BackgroundColor Red "Off (default)";
        Break;
    }
    default {
        Write-Host -ForegroundColor White -BackgroundColor Black "Unexpected value!";
        Break;
    }
}
Write-Host

Write-Host
Write-Host "== Overrides =="
Write-Host

#$gpm.CFG.OverrideCFG
If (-not $gpm.CFG.OverrideCFG -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideCFG Not False!";
}

#$gpm.CFG.OverrideStrictCFG
If (-not $gpm.CFG.OverrideStrictCFG -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideStrictCFG Not False!";
}

#$gpm.DEP.OverrideDEP
If (-not $gpm.DEP.OverrideDEP -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideDEP Not False!";
}

#$gpm.ASLR.OverrideForceRelocateImages
If (-not $gpm.ASLR.OverrideForceRelocateImages -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideForceRelocateImages Not False!";
}

#$gpm.ASLR.OverrideBottomUp
If (-not $gpm.ASLR.OverrideBottomUp -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideBottomUp Not False!";
}

#$gpm.ASLR.OverrideHighEntropy
If (-not $gpm.ASLR.OverrideHighEntropy -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideHighEntropy Not False!";
}

#$gpm.SEHOP.OverrideSEHOP
If (-not $gpm.SEHOP.OverrideSEHOP -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideSEHOP Not False!";
}

#$gpm.Heap.OverrideHeap
If (-not $gpm.Heap.OverrideHeap -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideHeap Not False!";
}

#$gpm.DynamicCode.OverrideDynamicCode
If (-not $gpm.DynamicCode.OverrideDynamicCode -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideDynamicCode Not False!";
}

#$gpm.ImageLoad.OverrideBlockRemoteImages
If (-not $gpm.ImageLoad.OverrideBlockRemoteImages -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideBlockRemoteImages Not False!";
}

#$gpm.ImageLoad.OverrideBlockLowLabel
If (-not $gpm.ImageLoad.OverrideBlockLowLabel -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideBlockLowLabel Not False!";
}

#$gpm.ImageLoad.OverridePreferSystem32
If (-not $gpm.ImageLoad.OverridePreferSystem32 -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverridePreferSystem32 Not False!";
}

#$gpm.FontDisable.OverrideFontDisable
If (-not $gpm.FontDisable.OverrideFontDisable -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideFontDisable Not False!";
}

#$gpm.BinarySignature.OverrideMicrosoftSignedOnly
If (-not $gpm.BinarySignature.OverrideMicrosoftSignedOnly -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideMicrosoftSignedOnly Not False!";
}

#$gpm.BinarySignature.OverrideDependencySigning
If (-not $gpm.BinarySignature.OverrideDependencySigning -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideDependencySigning Not False!";
}

#$gpm.ExtensionPoint.OverrideExtensionPoint
If (-not $gpm.ExtensionPoint.OverrideExtensionPoint -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideExtensionPoint Not False!";
}

#$gpm.SystemCall.OverrideSystemCall
If (-not $gpm.SystemCall.OverrideSystemCall -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideSystemCall Not False!";
}

#$gpm.ChildProcess.OverrideChildProcess
If (-not $gpm.ChildProcess.OverrideChildProcess -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideChildProcess Not False!";
}

#$gpm.Payload.OverrideExportAddressFilter
If (-not $gpm.Payload.OverrideExportAddressFilter -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideExportAddressFilter Not False!";
}

#$gpm.Payload.OverrideExportAddressFilterPlus
If (-not $gpm.Payload.OverrideExportAddressFilterPlus -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideExportAddressFilterPlus Not False!";
}

#$gpm.Payload.OverrideImportAddressFilter
If (-not $gpm.Payload.OverrideImportAddressFilter -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideImportAddressFilter Not False!";
}

#$gpm.Payload.OverrideEnableRopStackPivot
If (-not $gpm.Payload.OverrideEnableRopStackPivot -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideEnableRopStackPivot Not False!";
}

#$gpm.Payload.OverrideEnableRopCallerCheck
If (-not $gpm.Payload.OverrideEnableRopCallerCheck -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideEnableRopCallerCheck Not False!";
}

#$gpm.Payload.OverrideEnableRopSimExec
If (-not $gpm.Payload.OverrideEnableRopSimExec -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "OverrideEnableRopSimExec Not False!";
}

#$gpm.StrictHandle.OverrideStrictHandle
If (-not $gpm.ASLR.OverrideStrictHandle -match "False") {
    Write-Host -ForegroundColor White -BackgroundColor Red "Unexpected value!";
}
Write-Host

Write-Host
Write-Host "== Speculation Control Settings =="
Write-Host

if (Get-Command Get-SpeculationControlSettings -errorAction SilentlyContinue) {
    Get-SpeculationControlSettings
} else {
    "Get-SpeculationControlSettings is not installed.  Install it by running Install-Module SpeculationControl"
}
Write-Host

Write-Host
Write-Host "== Execution Policy Settings =="
Write-Host

Get-ExecutionPolicy -List