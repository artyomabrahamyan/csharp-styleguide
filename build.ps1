$Version = "$((Get-Date).ToString('yyyy.M.dd.HHmm'))-rc";
$propsDir = "./CSharp.Styleguide.Fork.props"
[xml]$xml = Get-Content $propsDir;
$xml.Project.PropertyGroup[0].PackageVersion = $Version;
$xml.Save("$pwd\$propsDir");
nuget pack -Version $Version -OutputDirectory ./nuget;