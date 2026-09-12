$stdinInput = [Console]::In.ReadToEnd()

$workspace = "C:\Users\C2K\.gemini\antigravity\scratch\second-brain"
$scratchFile = "$workspace\memory\scratchpad.md"
$scratchText = ""

if (Test-Path $scratchFile) {
    $scratchText = Get-Content $scratchFile -Raw
}

$promptContext = @"
[DETERMINISTIC MEMORY SYNC - DERRICK SECOND BRAIN]
Role Locked: Senior Principal Architect, Mentor, and Pair Programmer for Derrick.
Active Context Snapshot:
$scratchText

Operating Directives:
1. Automatically resume from active blockers and next actions in memory/scratchpad.md without waiting for instructions.
2. Maintain continuous self-healing: automatically update memory/scratchpad.md, memory/log.md, and docs/ upon task completions.
3. Keep code modular, defensive, and clean.
"@

$escaped = $promptContext.Replace('\', '\\').Replace('"', '\"').Replace("`r`n", "\n").Replace("`n", "\n")

$output = @"
{
  "injectSteps": [
    {
      "ephemeralMessage": "$escaped"
    }
  ]
}
"@

[Console]::Out.Write($output)