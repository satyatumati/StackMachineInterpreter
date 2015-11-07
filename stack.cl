class Main inherits IO{
	n:Int;
	pst:String;
	tval:Bool;
	cint:Int;
    	top1:String;
    	top2:String;
	a2iobj:A2I;
	stat:Int;
    	com:String;
	head:Element;
	temp:Element;
	last:Element;
	temp2:Element;
    	tempstr:String;
	main():Object{{
	n<-0;
	tval<-true;
	a2iobj<-new A2I;
	out_string("Commands available\n1.<int>\n2.+\n3.s\n4.e\n5.d\n6.x\n");
	while tval loop 
			{
			 out_string(">");
			com<-in_string();
                        if com ="x" then {out_string("\nTerminating ....\n");tval<-false;}
			else
                        	if com="e" then 
					{pst<-popstack();
					if pst="+" then
						if n<2 then {out_string("\nImproper Stack .Not enough integers\nAborting ...\n");abort();}
						else
						{      	
							top1<-popstack();
							top2<-popstack();
							pushstack(a2iobj.i2a(a2iobj.a2i(top1)+a2iobj.a2i(top2)));
						}fi

                               		else 
						if pst="s" then {top1<-popstack();top2<-popstack();pushstack(top1);pushstack(top2);}
                                   		else
						pushstack(pst)   				
						fi
                               		fi;}
                           	else 
					if com="d" then printstack() 
					else pushstack(com)
					fi
				fi
			fi;
			 }
			 pool;	
			 
			 		
	}};
    pushstack(st:String):Object{{
        n<-n+1;
	temp<-new Element;
        temp.init(st);
        if n=1 then head<-temp else
        {temp.addthis(head);
            head<-temp;}
        fi;
    
    
    }};
    popstack():String{{
        n<-n-1;
        tempstr<-head.getelem();
        head<-head.getnext();
        tempstr;
    
    }};

    
	printstack():Object{{
		
		temp2<-head;
		out_string("The stack now is :\n");
		while not isvoid temp2 
						   loop 
						   {out_string(temp2.getelem());out_string("\n");
						   temp2<-temp2.getnext();
						   }
						   pool;
	
	}};


};

class Element inherits IO{

	h:String;
	t:Element;
	init(x:String):Object{
	h<-x
	};
	addthis(y:Element):Object{
	t<-y
	};
	getelem():String{h};
	getnext():Element{t};
};
