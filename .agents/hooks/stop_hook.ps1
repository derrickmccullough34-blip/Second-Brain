$stdinInput = [Console]::In.ReadToEnd()
$workspace = "C:\Users\C2K\.gemini\antigravity\scratch\second-brain"

$requiredFiles = @(
    "$workspace\memory\scratchpad.md",
    "$workspace\memory\log.md",
    "$workspace\docs\architecture.md",
    "$workspace\docs\decisions.md"
)

$missing = @()
foreach ($file in $requiredFiles) {
    if (-not (Test-Path $file)) {
        $missing += $file
    }
}

if ($missing.Count -gt 0) {
    $missingList = $missing -join ", "
    $reason = "Self-Healing Triggered: Critical memory files missing: $missingList. Auto-restore required."
    $escaped = $reason.Replace('\', '\\').Replace('"', '\"')
    [Console]::Out.Write("{`"decision`": `"continue`", `"reason`": `"$escaped`"}")
} else {
    [Console]::Out.Write("{`"decision`": `"allow`"}")
}