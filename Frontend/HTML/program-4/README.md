# HTML Frameset 

This repository is an example of using HTML framesets to create a structured layout with multiple frames.

## Files:

- **frameset.html**: Defines the main frameset structure.
- **heading.html**: Content displayed in the top.
- **sidebar.html**: Content displayed in the sidebar frame.

### frameset.html:

```html
<!DOCTYPE html>
<html>
<head>
    <title>Example Frameset</title>
    <frameset rows="10%, 80%" border="2">
        <frame src="./heading.html" />
        <frameset cols="20%, 80%">
            <frame src="./sidebar.html" noresize="noresize"/>
            <frame src="./heading.html" name="content" noresize="noresize"/>
        </frameset> 
    </frameset>
</head>
<body>
   
</body>
</html>
