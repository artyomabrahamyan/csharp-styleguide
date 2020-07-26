$Version = "$((Get-Date).ToString('yyyy.M.d.Hmm'))-rc";
$propsDir = "./CSharp.Styleguide.Fork.props"
[xml]$xml = Get-Content $propsDir;
$xml.Project.PropertyGroup[0].PackageVersion = $Version;
$xml.Save("$pwd\$propsDir");
dotnet pack -p:PackageVersion=$Version -p:NoBuild=true -o nuget;