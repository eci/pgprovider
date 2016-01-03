using System;
using pgProvider;

namespace GenEncryptionKeyConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            var encryptKey = Encryption.GenerateAESKey().ToBase64();
            Console.WriteLine(encryptKey);
            Console.WriteLine("Hit Enter to end.");
            Console.ReadLine();
        }
    }
}
