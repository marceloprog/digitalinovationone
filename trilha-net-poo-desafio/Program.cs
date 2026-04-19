using DesafioPOO.Models;

Console.WriteLine("Seja bem vindo ao sistema de celular.\n" +
                  "Marcelo Vidal.");


Smartphone iphone = new Iphone("99123-456", "Iphone x", "333444555", 12);
iphone.Ligar();

Smartphone nokia = new Nokia("99235-587", "Nokia a20", "567888888", 16);
nokia.ReceberLigacao();

iphone.Ligar();
nokia.ReceberLigacao();

iphone.InstalarAplicativo("orcaobra");
nokia.InstalarAplicativo("orcaobra");