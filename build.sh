version=$(date +%Y.%-m.%-d.%-H%M-rc);
sed -i "s/\(<PackageVersion>\)[^<]*\(<\/PackageVersion>\)/\1$version\2/g" ./CSharp.Styleguide.Fork.props;
dotnet pack -p:PackageVersion=$version -p:NoBuild=true -o nuget;