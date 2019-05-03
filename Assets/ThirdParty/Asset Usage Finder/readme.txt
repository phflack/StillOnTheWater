Asset Usage Finder v3.0.4 - Added scene usages search support (thanks to Fingerbob!)

Importing new version of an asset:
1) Delete an old version of the product - Assets/DependencyPro folder
2) Import from Asset Store to Assets folder

IMPORTANT NOTICE:
In v3.0, we added caching feature that will make usage search up to 20 times faster. In order to initialize cache for a project, you need to:
1) Run any usage search - File, Scene, Component
2) Wait for it to finish. It will take 4x less time any search took in v2.0
Benefits:
- Every other search will take less than 2 seconds. On huge projects, it should take less than 5 seconds
- Cache will be stored permanently and will be available after you close the project and turn off computer
- In case of changes that were made after cache initialization, only those changes will be cached. So you don't need to wait for cacheing of whole project every time


Changelog

Features:
1) Dependencies caching (up to 20 times faster search) - thanks to jaywinyeah, Stefan Andersson
2) Full prefab path (on mouse hover, in a tooltip) - thanks to Aims_
3) Showing full nested search list instead of 3
4) Feedback window
5) Fixed width of field names that are using the asset
6) Both Pro and Personal skins supported

Bugs fixed:
1) Discarding unsaved changes in scene after opening another scene
2) Window closing after click on a "Search in Scene" button in window
3) Exceptions when clicking on breadcrump (asset nesting level)