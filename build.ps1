$Version = (Get-Date).ToString("yyyy.MM.dd.HHmm") + "-rc";
nuget pack -Version $Version -OutputDirectory ./nuget;