void exibirOla(){
 print("Oi");
}
void exibirMsgPosicional(String msg){
  print("Msg: $msg");
   
}

void exibirMsgNomeado({required String msg}){
 print("Msg: $msg");
}

void main(List<String> args){
  exibirOla();
  exibirMsgPosicional('Msg1');
  exibirMsgNomeado(msg:"Msg2");


  print(menorQue5(2));
  
  print(par(6));
  print(soma(4,7));

   
 }


 bool menorQue5(int numero){
  return numero < 5;
 }

 bool par(int numero){
  return  numero % 2 == 0;
 }

 int soma(int num1,int num2){
  return num1 + num2;
 }

