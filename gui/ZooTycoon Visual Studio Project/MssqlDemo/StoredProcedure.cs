using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data;
using System.Data.SqlClient;

namespace ZooTycoon
{
    class StoredProcedure
    {
        static String _uid;
        static String _passw;
        static String _server;
        static String _database;

        public static void setLogin(String uid, String passw, String server, String database)
        {
            _uid = uid;
            _passw = passw;
            _server = server;
            _database = database;
        }

        public static SqlConnection connectToDB()
        {
            try
            {
                SqlConnection myConnection = 
                    new SqlConnection ("user id=" + _uid + ";" +
                                        "password=" + _passw + ";" +
                                        "server=" + _server + ";" +
                                        "Trusted_Connection=yes;" +
                                        "database=" + _database + ";" +
                                        "connection timeout=5");
                return myConnection;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }

        public static void AddAnimal(String gehegeName, String tierName, String tierGeschlecht, String tierSpezies, String tierpflegerVorname, String tierpflegerNachname, String futterName, int futterBedarf)
        {

            try
            {
                SqlConnection myConnection = connectToDB();
                myConnection.Open();
                MessageBox.Show("Verbindung hergestellt");

                SqlCommand cmd = new SqlCommand("InsertAnimal", myConnection);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@Gehege_Name", gehegeName));
                cmd.Parameters.Add(new SqlParameter("@Tier_Name", tierName));
                cmd.Parameters.Add(new SqlParameter("@Tier_Geschlecht", tierGeschlecht));
                cmd.Parameters.Add(new SqlParameter("@Tier_Spezies", tierSpezies));
                cmd.Parameters.Add(new SqlParameter("@Tierpfleger_Vorname", tierpflegerVorname));
                cmd.Parameters.Add(new SqlParameter("@Tierpfleger_Nachname", tierpflegerNachname));
                cmd.Parameters.Add(new SqlParameter("@Futter_Name", futterName));
                cmd.Parameters.Add(new SqlParameter("@Futterbedarf_pro_Tag", futterBedarf));

                cmd.ExecuteNonQuery();
                MessageBox.Show("Tier hinzugefuegt");
                myConnection.Close();
            } 
            catch (SqlException ex)
            {
                MessageBox.Show(ErrorMessages.RaiseSqlError(ex));
            }
        }

        public static void DeleteAnimal(String tierName)
        {

            try
            {
                SqlConnection myConnection = new SqlConnection("user id=" + _uid + ";" +
                                                               "password=" + _passw + ";" +
                                                               "server=" + _server + ";" +
                                                               "Trusted_Connection=yes;" +
                                                               "database=" + _database + ";" +
                                                               "connection timeout=5");

                myConnection.Open();
                MessageBox.Show("Verbindung hergestellt");
                SqlCommand cmd = new SqlCommand("DeleteAnimal", myConnection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Tier_Name", tierName));
                cmd.ExecuteNonQuery();
                MessageBox.Show("Stored Procedure ausgeführt");
                myConnection.Close();
            }
            catch (SqlException ex)
            {
                StringBuilder errorMessages = new StringBuilder();
                for (int i = 0; i < ex.Errors.Count; i++)
                {
                    errorMessages.Append("Index #" + i + "\n" +
                        "Message: " + ex.Errors[i].Message + "\n" +
                        "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
                        "Source: " + ex.Errors[i].Source + "\n" +
                        "Procedure: " + ex.Errors[i].Procedure + "\n");
                }
                MessageBox.Show(errorMessages.ToString());
            }
        }

        public static void AddFood(String lieferantenName, String futterName, float preis)
        {
            try
            {
                SqlConnection myConnection = new SqlConnection("user id=" + _uid + ";" +
                                                               "password=" + _passw + ";" +
                                                               "server=" + _server + ";" +
                                                               "Trusted_Connection=yes;" +
                                                               "database=" + _database + ";" +
                                                               "connection timeout=5");

                myConnection.Open();

                MessageBox.Show("Verbindung hergestellt");

                SqlCommand cmd = new SqlCommand("AddFood", myConnection);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Lieferantenname", lieferantenName));
                cmd.Parameters.Add(new SqlParameter("@FutterName", futterName));
                cmd.Parameters.Add(new SqlParameter("@Preis", preis));

                int affectedRows = cmd.ExecuteNonQuery();
           
                MessageBox.Show("Stored Procedure ausgeführt\nRows affected: " + affectedRows);

                myConnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public static int CreateOrder(String lieferantenName)
        {
            try
            {
                SqlConnection myConnection = new SqlConnection("user id=" + _uid + ";" +
                                                               "password=" + _passw + ";" +
                                                               "server=" + _server + ";" +
                                                               "Trusted_Connection=yes;" +
                                                               "database=" + _database + ";" +
                                                               "connection timeout=5");

                myConnection.Open();

                MessageBox.Show("Verbindung hergestellt");

                SqlCommand cmd = new SqlCommand("CreateOrder", myConnection);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Lieferantenname", lieferantenName));
                cmd.Parameters.Add("@OrderID", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.Output;

                int affectedRows = cmd.ExecuteNonQuery();
                int orderID = Convert.ToInt32(cmd.Parameters["@OrderID"].Value);

                MessageBox.Show("Stored Procedure ausgeführt\nRows affected: " + affectedRows + "\nOrderID: " + orderID);

                myConnection.Close();

                return orderID;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return -1;
            }
        }

        public static void CreateOrderItem(int bestellungsNummer, String futterArt, float menge)
        {
            try
            {
                SqlConnection myConnection = new SqlConnection("user id=" + _uid + ";" +
                                                               "password=" + _passw + ";" +
                                                               "server=" + _server + ";" +
                                                               "Trusted_Connection=yes;" +
                                                               "database=" + _database + ";" +
                                                               "connection timeout=5");

                myConnection.Open();

                MessageBox.Show("Verbindung hergestellt");

                SqlCommand cmd = new SqlCommand("CreateOrderItem", myConnection);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Bestellungsnummer", bestellungsNummer));
                cmd.Parameters.Add(new SqlParameter("@Futterart", futterArt));
                cmd.Parameters.Add(new SqlParameter("@Menge", menge));

                int affectedRows = cmd.ExecuteNonQuery();

                MessageBox.Show("Stored Procedure ausgeführt\nRows affected: " + affectedRows);

                myConnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public static void Fuetterung(String spezies)
        {
            try
            {
                SqlConnection myConnection = new SqlConnection("user id=" + _uid + ";" +
                                                               "password=" + _passw + ";" +
                                                               "server=" + _server + ";" +
                                                               "Trusted_Connection=yes;" +
                                                               "database=" + _database + ";" +
                                                               "connection timeout=5");

                myConnection.Open();

                MessageBox.Show("Verbindung hergestellt");

                SqlCommand cmd = new SqlCommand("fuetterung", myConnection);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@species", spezies));

                int affectedRows = cmd.ExecuteNonQuery();

                MessageBox.Show("Stored Procedure ausgeführt\nRows affected: " + affectedRows);

                myConnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public static DataTable ViewPflegerTiere()
        {
            try
            {
                DataTable table = new DataTable();

                SqlConnection myConnection = new SqlConnection("user id=" + _uid + ";" +
                                                               "password=" + _passw + ";" +
                                                               "server=" + _server + ";" +
                                                               "Trusted_Connection=yes;" +
                                                               "database=" + _database + ";" +
                                                               "connection timeout=5");
   
                myConnection.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM pflegertiere_view", myConnection);
                
                table.Load(cmd.ExecuteReader());
                
                myConnection.Close();

                return table;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }

        }

        public static DataTable ViewStrukturmuesliTiere()
        {
            try
            {
                DataTable table = new DataTable();

                SqlConnection myConnection = new SqlConnection("user id=" + _uid + ";" +
                                                               "password=" + _passw + ";" +
                                                               "server=" + _server + ";" +
                                                               "Trusted_Connection=yes;" +
                                                               "database=" + _database + ";" +
                                                               "connection timeout=5");

                myConnection.Open();
                
                SqlCommand cmd = new SqlCommand("SELECT * FROM Strukturmuesli_view", myConnection);

                table.Load(cmd.ExecuteReader());

                myConnection.Close();

                return table;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }

        }
    }
}
