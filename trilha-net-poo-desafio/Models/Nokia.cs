namespace DesafioPOO.Models
{

    public class Nokia : Smartphone
    {
         public Nokia(string numero, string modelo, string imei, int memoria) : base(numero, modelo, imei, memoria)
        {
                    Console.WriteLine($"Criando Nokia numero {numero}");
        }
        
        public override void InstalarAplicativo(string nomeApp)
        {
            Console.WriteLine($"Instalando o aplicativo {nomeApp} no Nokia");
        }

    }
    
}