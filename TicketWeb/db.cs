using System;
using System.Data;
using System.Data.SqlClient;

namespace TicketWeb
{
    public class db
    {
        public db()
        {
        }

        public static SqlConnection ceratcon()
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(@"Data Source=azurewebapplication.database.windows.net;Initial Catalog=TicketSale;User ID=joy51744;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            return con;
        }
    }
}