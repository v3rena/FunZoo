using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data.SqlClient;

namespace MssqlDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            StoredProcedure.setLogin("gui", "1234", "localhost", "ZooTycoon");
        }

        private void btn_tierhinzufuegen_hinzufuegen_Click(object sender, EventArgs e)
        {
            try
            {
                StoredProcedure.AddAnimal(tb_tierhinzufuegen_gehegeName.Text,
                    tb_tierhinzufuegen_tierName.Text,
                    tb_tierhinzufuegen_tierGeschlecht.Text,
                    tb_tierhinzufuegen_tierSpezies.Text,
                    tb_tierhinzufuegen_tierpflegerVorname.Text,
                    tb_tierhinzufuegen_tierpflegerNachname.Text,
                    tb_tierhinzufuegen_futterName.Text,
                    int.Parse(tb_tierhinzufuegen_futterBedarf.Text));

                tb_tierhinzufuegen_gehegeName.Clear();
                tb_tierhinzufuegen_tierName.Clear();
                tb_tierhinzufuegen_tierGeschlecht.Clear();
                tb_tierhinzufuegen_tierSpezies.Clear();
                tb_tierhinzufuegen_tierpflegerVorname.Clear();
                tb_tierhinzufuegen_tierpflegerNachname.Clear();
                tb_tierhinzufuegen_futterName.Clear();
                tb_tierhinzufuegen_futterBedarf.Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_tierloeschen_loeschen_Click(object sender, EventArgs e)
        {
            try
            {
                StoredProcedure.DeleteAnimal(tb_tierloeschen_tierName.Text);
                tb_tierloeschen_tierName.Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        // ############################################################################
        // Futterbestellung
        // ############################################################################

        struct BestellungItem
        {
            public string futterArt;
            public float futterMenge;
        }
        
        List<BestellungItem> items = new List<BestellungItem>();

        private void btn_futterbestellung_hinzufuegen_Click(object sender, EventArgs e)
        {
            BestellungItem item = new BestellungItem();

            item.futterArt = tb_futterbestellung_futterArt.Text;
            item.futterMenge = float.Parse(tb_futterbestellung_futterMenge.Text);

            items.Add(item);

            lb_futterbestellung_liste.Items.Add(item.futterArt + " - " + item.futterMenge);

            tb_futterbestellung_futterArt.Clear();
            tb_futterbestellung_futterMenge.Clear();
        }

        private void btn_futterbestellung_bestellen_Click(object sender, EventArgs e)
        {
            int orderID = -1;
            orderID = StoredProcedure.CreateOrder(tb_futterbestellung_lieferant.Text);

            foreach(BestellungItem i in items)
            {
                StoredProcedure.CreateOrderItem(orderID, i.futterArt, i.futterMenge);
            }

            MessageBox.Show("Bestellung durchgeführt");

            btn_futterbestellung_loeschen_Click(sender, e);
        }

        private void btn_futterbestellung_loeschen_Click(object sender, EventArgs e)
        {
            items.Clear();
            lb_futterbestellung_liste.Items.Clear();
            tb_futterbestellung_futterArt.Clear();
            tb_futterbestellung_futterMenge.Clear();
            tb_futterbestellung_lieferant.Clear();
        }

        // ############################################################################
        // Fütterung
        // ############################################################################

        private void btn_fuetterung_fuettern_Click(object sender, EventArgs e)
        {
            StoredProcedure.Fuetterung(tb_fuetterung_spezies.Text);
            tb_fuetterung_spezies.Clear();
        }

        private void btn_strukturmueslitiere_load_Click(object sender, EventArgs e)
        {
            dgv_strukturmueslitiere_content.DataSource = StoredProcedure.ViewStrukturmuesliTiere();
            dgv_strukturmueslitiere_content.Update();
        }

        private void btn_pflegertiere_load_Click(object sender, EventArgs e)
        {
            dgv_pflegertiere_content.DataSource = StoredProcedure.ViewPflegerTiere();
            dgv_pflegertiere_content.Update();
        }

        private void btn_futterhinzufuegen_hinzufuegen_Click(object sender, EventArgs e)
        {
            try
            {
                StoredProcedure.AddFood(tb_futterhinzufuegen_lieferant.Text,
                    tb_futterhinzufuegen_futter.Text,
                    float.Parse(tb_futterhinzufuegen_preis.Text));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
