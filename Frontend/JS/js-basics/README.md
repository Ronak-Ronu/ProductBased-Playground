## javascript fundamentals exercises

### Program -1
![alt text](image.png)

### Progrm -2 
![alt text](image-1.png)
![alt text](image-2.png)

### Program -3
![alt text](image-3.png)

### Program -4
![alt text](image-4.png)

### Program -5
![alt text](image-5.png)
![alt text](image-6.png)

```js
function changebgcolor()
        {
            let colorname=document.getElementById("pickcolor").value;
            document.body.bgColor=colorname;

        }
          
function changecolorbyname(){
            let colorname=prompt("Enter the new background color")
            document.body.bgColor=colorname;
        }
    
function changetextcolor()
        {
            let colorname = document.getElementById("pickcolor").value;
            document.body.style.color=colorname;
        }
```

### Program -6 
![alt text](image-7.png)

```js
let fact=(n)=>
    {

        if(n>=1){
            return n*fact(n-1);
            }

        else{
            return 1;
        } 
                    
    }
function factorial(){
        let num=document.getElementById("num1").value*1;
        let result=fact(num);
        document.getElementById("result").innerHTML="<font color='green'>"+result+"</font>"
    }
```

### Program -7
![alt text](image-8.png)

```js
<script>
    let isprime = (n,i)=>{
        if(n<=2)
            {
                return (n===2)?true:false;
            }
        if(n%i===0)
            {
                return false;
            }
        if(i*i>n)
            {
                return true;
            }
        return isprime(n,i+1);
    }
    
function prime()
    {
        let pnum=document.("num2").value*1;
        let output=isprime(pnum,2);
        document.getElementById("output").innerHTML="<font color='green'+output+"</font>"
    }
</script>
```