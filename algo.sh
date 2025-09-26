#!/bin/bash
clear

#make desine and banner
echo ""
echo -e "\e[35m Welcome to khalidx456 repo.\e[0m"
echo -e "\e[34m this tool made for algebric calculation\e[0m"
echo ""
echo -e "\e[31m
                 .*..+:                 
                -.    .=                
               =.      .=               
              =.:-+**+-::=              
             -%+..    .:*%-             
            .= :-:+..+::- ::.           
            +-  -.    .=  .+.           
            -:- -#.   =* .*=.           
         .:-*+.=:+-++=-=:=+-:..  \e[0m \e[33m [ By : Khalidx456 ] \e[0m \e[31m     
        .+    .:+*+*+:*-.     :-        
        =         .. *.        =.       
       :- =..................+..=       
       =  -                  +. -.      
      =.  ..                 =   =.     
     -:-+-..      \e[1;36mALGO\e[0m\e[31m       -.. .+     
    .*-*+=-=                .*+:.-=.    
     =.  -#*.               .*-  .+     
     .+*++#%#***+++++********@%#+..\e[0m"

echo ""
echo ""
# use info
echo -e "
  ╔══════════════════════════════════════════════════╗
  ║          \e[31mhow to use this tool example.\e[0m           ║
  ║             \e[33mExample : 2x + 3x = 5x\e[0m               ║
  ║                                                  ║
  ║  [\e[36m*\e[0m] \e[36mfirst term is 2x\e[0m                            ║
  ║  [\e[36m*\e[0m] \e[36msecond term is 3x\e[0m                           ║
  ║  [\e[36m*\e[0m] \e[36m2 ~ first term intizer \e[0m                     ║
  ║  [\e[36m*\e[0m] \e[36mx ~ first term variable\e[0m                     ║
  ║  [\e[36m*\e[0m] \e[36m3 ~ second intizer\e[0m                          ║
  ║  [\e[36m*\e[0m] \e[36mx ~ second term variable\e[0m                    ║
  ║                                                  ║
  ╚══════════════════════════════════════════════════╝
"

# main code section 1
echo -e "[\e[31m*\e[0m] \e[33mLets start...\e[0m"
echo ""
read -p $'[\e[36m*\e[0m] \e[34mfirst term intizer \e[0m\e[33m[defult : 1] \e[0m:' first_term_int
if [[ ! "$first_term_int" =~ ^[0-9]+$ ]];
then
        echo ""
        echo -e "[\e[31m!\e[0m] \e[31m intizer cannot equal to variable \e[0m"
        exit
fi
if [[ -z $first_term_int ]];
then
        first_term_int=1
fi
read -p $'[\e[36m*\e[0m] \e[34mfirst term variable \e[0m\e[33m[required] \e[0m :' first_term_var
if [[ "$first_term_var" =~ ^[0-9]+$ ]];
then
        echo ""
        echo -e "[\e[31m!\e[0m] \e[31m Variable cannot equal to intizer \e[0m"
        exit
fi

if [[ -z "$first_term_var" ]];
then
        echo "" 
        echo -e "[\e[31m!\e[0m] \e[31m Exit \e[0m[\e[36mit cannot empty\e[0m]"
        exit
fi
read -p $'[\e[36m*\e[0m] \e[34mselect what do you want \e[0m\e[33m [+, -, *] \e[0m:' oprator
if [[ ! $oprator =~ ^["-","+","*"]+$ ]];
then
        echo -e "[\e[31m*\e[0m] \e[31m unvalid oprater \e[0m" 
        exit
fi
read -p $'[\e[36m*\e[0m] \e[34msecond term intizer \e[0m\e[33m[defult : 1] \e[0m: ' sec_term_int
if [[ ! "$sec_term_int" =~ ^[0-9]+$ ]];
then
        echo ""
        echo -e "[\e[31m!\e[0m] \e[31m intizer cannot equal to variable \e[0m"
        exit
fi

if [[ -z $sec_term_int ]];
then
         sec_term_int=1
fi
read -p $'[\e[36m*\e[0m] \e[34msecond term variable\e[0m \e[0m\e[33m[required] \e[0m: ' sec_term_var
if [[ "$sec_term_var" =~ ^[0-9]+$ ]];
then
        echo ""
        echo -e "[\e[31m!\e[0m] \e[31m Variable cannot equal to intizer \e[0m"
        exit
fi

if [[ -z "$sec_term_var" ]];
then
        echo "" 
        echo -e "[\e[31m!\e[0m] \e[31m Exit \e[0m[\e[36mit cannot empty\e[0m]"
        exit
fi

# main code section 2
echo ""

if [[ $first_term_var = $sec_term_var ]];
then
        if [[ $oprator = "+" ]];
        then
            add=$(expr $first_term_int + $sec_term_int)
            echo -e "[\e[31m*\e[0m] \e[33m result : \e[0m \e[36m $add$first_term_var\e[0m"
        elif [[ $oprator = "-" ]]; 
        then
            sub=$(expr $first_term_int - $sec_term_int)
            echo -e "[\e[31m*\e[0m] \e[33m result : \e[0m \e[36m $sub$first_term_var\e[0m"
        elif [[ $oprator = "*" ]]; then
            mul=$((first_term_int*sec_term_int))
            echo -e "[\e[31m*\e[0m] \e[33m result : \e[0m \e[36m $mul$first_term_var²\e[0m"
        else 
            echo -e "[\e[31m!\e[0m] \e[31m select valid oprator\e[0m"
            exit
        fi
elif [[ $first_term_var != $sec_term_var ]];
then    
        if [[ $oprator = "+" ]] || [[ $oprator = "-" ]]
        then
            echo -e "[\e[31m*\e[0m] \e[33m result : \e[0m \e[36m $first_term_int$first_term_var $oprator $sec_term_int$sec_term_var \e[0m"
        elif [[ $oprator = "*" ]];
        then
            int_mul=$((first_term_int*sec_term_int))
            echo -e "[\e[31m*\e[0m] \e[33m result : \e[0m \e[36m $int_mul$first_term_var$sec_term_var \e[0m"
        else
            echo -e "\e[31mExit\e[0m"
        fi
else
    echo -e "\e[31mExit\e[0m"
fi


