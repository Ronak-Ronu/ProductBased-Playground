## Angular Workspace
### Steps to clone this specific Angular-workspace folder

1. clone the repository
```cmd
git clone --filter=blob:none --no-checkout https://github.com/Ronak-Ronu/ProductBased-Playground.git
```

2. Navegate to the cloned empty repo
```cmd
cd <Folder-Name>
```

3. Set Sparse

```cmd
git sparse-checkout set --cone
```

Note: the sparse-checkout command just works on git version 2.25.0 so make sure you have your git version updated.

4. Select a Branch
```cmd
git checkout master
```

5. Cloining the specific folder

```cmd
git sparse-checkout set Angular-workspace
```
 
6. install required packages inside BeRony folder
```cmd
npm install
```

7. To run angular 
```cmd
ng serve -o
```
or
```cmd
ng serve
```


<b>OR</b>
<b>Refer to the below blog to get more precise info.</b> <br/>
<a href="https://medium.com/@gabrielcruz_68416/clone-a-specific-folder-from-a-github-repository-f8949e7a02b4">Take Me There</a>