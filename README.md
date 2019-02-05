# verification_code_widget

![](https://raw.githubusercontent.com/m7mdra/VerificationCodeWidget/master/art/screen.gif)

## How to use?

     VerificationCodeWidget(  
	  4,  //cells count
	  key: _key,  //key to be able to clear the cells
	  onCodeChange: (code) {},  
	  onComplete: (bool) {  
	    print("is completed? $bool");  
	  },  
	) 

