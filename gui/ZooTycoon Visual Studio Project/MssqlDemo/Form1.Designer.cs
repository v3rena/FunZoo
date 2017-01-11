namespace MssqlDemo
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.btn_tierhinzufuegen_hinzufuegen = new System.Windows.Forms.Button();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tb_tierhinzufuegen_futterBedarf = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.tb_tierhinzufuegen_futterName = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.tb_tierhinzufuegen_tierpflegerNachname = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.tb_tierhinzufuegen_tierpflegerVorname = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.tb_tierhinzufuegen_tierSpezies = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.tb_tierhinzufuegen_tierGeschlecht = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.tb_tierhinzufuegen_tierName = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tb_tierhinzufuegen_gehegeName = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tb_tierloeschen_tierName = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.btn_tierloeschen_loeschen = new System.Windows.Forms.Button();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.btn_futterbestellung_loeschen = new System.Windows.Forms.Button();
            this.btn_futterbestellung_bestellen = new System.Windows.Forms.Button();
            this.tb_futterbestellung_lieferant = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.btn_futterbestellung_hinzufuegen = new System.Windows.Forms.Button();
            this.tb_futterbestellung_futterMenge = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.tb_futterbestellung_futterArt = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.lb_futterbestellung_liste = new System.Windows.Forms.ListBox();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.tb_fuetterung_spezies = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.btn_fuetterung_fuettern = new System.Windows.Forms.Button();
            this.tabPage5 = new System.Windows.Forms.TabPage();
            this.btn_strukturmueslitiere_load = new System.Windows.Forms.Button();
            this.dgv_strukturmueslitiere_content = new System.Windows.Forms.DataGridView();
            this.tabPage6 = new System.Windows.Forms.TabPage();
            this.btn_pflegertiere_load = new System.Windows.Forms.Button();
            this.dgv_pflegertiere_content = new System.Windows.Forms.DataGridView();
            this.tabPage7 = new System.Windows.Forms.TabPage();
            this.btn_futterhinzufuegen_hinzufuegen = new System.Windows.Forms.Button();
            this.label21 = new System.Windows.Forms.Label();
            this.tb_futterhinzufuegen_lieferant = new System.Windows.Forms.TextBox();
            this.label20 = new System.Windows.Forms.Label();
            this.tb_futterhinzufuegen_futter = new System.Windows.Forms.TextBox();
            this.label19 = new System.Windows.Forms.Label();
            this.tb_futterhinzufuegen_preis = new System.Windows.Forms.TextBox();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.tabPage4.SuspendLayout();
            this.tabPage5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_strukturmueslitiere_content)).BeginInit();
            this.tabPage6.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_pflegertiere_content)).BeginInit();
            this.tabPage7.SuspendLayout();
            this.SuspendLayout();
            // 
            // btn_tierhinzufuegen_hinzufuegen
            // 
            this.btn_tierhinzufuegen_hinzufuegen.Location = new System.Drawing.Point(165, 224);
            this.btn_tierhinzufuegen_hinzufuegen.Name = "btn_tierhinzufuegen_hinzufuegen";
            this.btn_tierhinzufuegen_hinzufuegen.Size = new System.Drawing.Size(75, 23);
            this.btn_tierhinzufuegen_hinzufuegen.TabIndex = 0;
            this.btn_tierhinzufuegen_hinzufuegen.Text = "Hinzufügen";
            this.btn_tierhinzufuegen_hinzufuegen.UseVisualStyleBackColor = true;
            this.btn_tierhinzufuegen_hinzufuegen.Click += new System.EventHandler(this.btn_tierhinzufuegen_hinzufuegen_Click);
            // 
            // tabControl1
            // 
            this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.tabPage7);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Controls.Add(this.tabPage4);
            this.tabControl1.Controls.Add(this.tabPage5);
            this.tabControl1.Controls.Add(this.tabPage6);
            this.tabControl1.Location = new System.Drawing.Point(12, 12);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(689, 441);
            this.tabControl1.TabIndex = 1;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.tb_tierhinzufuegen_futterBedarf);
            this.tabPage1.Controls.Add(this.label8);
            this.tabPage1.Controls.Add(this.tb_tierhinzufuegen_futterName);
            this.tabPage1.Controls.Add(this.label7);
            this.tabPage1.Controls.Add(this.tb_tierhinzufuegen_tierpflegerNachname);
            this.tabPage1.Controls.Add(this.label6);
            this.tabPage1.Controls.Add(this.tb_tierhinzufuegen_tierpflegerVorname);
            this.tabPage1.Controls.Add(this.label5);
            this.tabPage1.Controls.Add(this.tb_tierhinzufuegen_tierSpezies);
            this.tabPage1.Controls.Add(this.label4);
            this.tabPage1.Controls.Add(this.tb_tierhinzufuegen_tierGeschlecht);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Controls.Add(this.tb_tierhinzufuegen_tierName);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.tb_tierhinzufuegen_gehegeName);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Controls.Add(this.btn_tierhinzufuegen_hinzufuegen);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(681, 415);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Tier hinzufügen";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tb_tierhinzufuegen_futterBedarf
            // 
            this.tb_tierhinzufuegen_futterBedarf.Location = new System.Drawing.Point(140, 198);
            this.tb_tierhinzufuegen_futterBedarf.Name = "tb_tierhinzufuegen_futterBedarf";
            this.tb_tierhinzufuegen_futterBedarf.Size = new System.Drawing.Size(100, 20);
            this.tb_tierhinzufuegen_futterBedarf.TabIndex = 16;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(26, 201);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(108, 13);
            this.label8.TabIndex = 15;
            this.label8.Text = "Futter Bedarf pro Tag";
            // 
            // tb_tierhinzufuegen_futterName
            // 
            this.tb_tierhinzufuegen_futterName.Location = new System.Drawing.Point(140, 172);
            this.tb_tierhinzufuegen_futterName.Name = "tb_tierhinzufuegen_futterName";
            this.tb_tierhinzufuegen_futterName.Size = new System.Drawing.Size(100, 20);
            this.tb_tierhinzufuegen_futterName.TabIndex = 14;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(69, 175);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(65, 13);
            this.label7.TabIndex = 13;
            this.label7.Text = "Futter Name";
            // 
            // tb_tierhinzufuegen_tierpflegerNachname
            // 
            this.tb_tierhinzufuegen_tierpflegerNachname.Location = new System.Drawing.Point(140, 146);
            this.tb_tierhinzufuegen_tierpflegerNachname.Name = "tb_tierhinzufuegen_tierpflegerNachname";
            this.tb_tierhinzufuegen_tierpflegerNachname.Size = new System.Drawing.Size(100, 20);
            this.tb_tierhinzufuegen_tierpflegerNachname.TabIndex = 12;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(22, 149);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(112, 13);
            this.label6.TabIndex = 11;
            this.label6.Text = "Tierpfleger Nachname";
            // 
            // tb_tierhinzufuegen_tierpflegerVorname
            // 
            this.tb_tierhinzufuegen_tierpflegerVorname.Location = new System.Drawing.Point(140, 120);
            this.tb_tierhinzufuegen_tierpflegerVorname.Name = "tb_tierhinzufuegen_tierpflegerVorname";
            this.tb_tierhinzufuegen_tierpflegerVorname.Size = new System.Drawing.Size(100, 20);
            this.tb_tierhinzufuegen_tierpflegerVorname.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(32, 123);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(102, 13);
            this.label5.TabIndex = 9;
            this.label5.Text = "Tierpfleger Vorname";
            // 
            // tb_tierhinzufuegen_tierSpezies
            // 
            this.tb_tierhinzufuegen_tierSpezies.Location = new System.Drawing.Point(140, 94);
            this.tb_tierhinzufuegen_tierSpezies.Name = "tb_tierhinzufuegen_tierSpezies";
            this.tb_tierhinzufuegen_tierSpezies.Size = new System.Drawing.Size(100, 20);
            this.tb_tierhinzufuegen_tierSpezies.TabIndex = 8;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(69, 97);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 13);
            this.label4.TabIndex = 7;
            this.label4.Text = "Tier Spezies";
            // 
            // tb_tierhinzufuegen_tierGeschlecht
            // 
            this.tb_tierhinzufuegen_tierGeschlecht.Location = new System.Drawing.Point(140, 68);
            this.tb_tierhinzufuegen_tierGeschlecht.Name = "tb_tierhinzufuegen_tierGeschlecht";
            this.tb_tierhinzufuegen_tierGeschlecht.Size = new System.Drawing.Size(100, 20);
            this.tb_tierhinzufuegen_tierGeschlecht.TabIndex = 6;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(52, 71);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(82, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Tier Geschlecht";
            // 
            // tb_tierhinzufuegen_tierName
            // 
            this.tb_tierhinzufuegen_tierName.Location = new System.Drawing.Point(140, 42);
            this.tb_tierhinzufuegen_tierName.Name = "tb_tierhinzufuegen_tierName";
            this.tb_tierhinzufuegen_tierName.Size = new System.Drawing.Size(100, 20);
            this.tb_tierhinzufuegen_tierName.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(78, 45);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Tier Name";
            // 
            // tb_tierhinzufuegen_gehegeName
            // 
            this.tb_tierhinzufuegen_gehegeName.Location = new System.Drawing.Point(140, 16);
            this.tb_tierhinzufuegen_gehegeName.Name = "tb_tierhinzufuegen_gehegeName";
            this.tb_tierhinzufuegen_gehegeName.Size = new System.Drawing.Size(100, 20);
            this.tb_tierhinzufuegen_gehegeName.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(58, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(76, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Gehege Name";
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.tb_tierloeschen_tierName);
            this.tabPage2.Controls.Add(this.label9);
            this.tabPage2.Controls.Add(this.btn_tierloeschen_loeschen);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(681, 415);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Tier löschen";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tb_tierloeschen_tierName
            // 
            this.tb_tierloeschen_tierName.Location = new System.Drawing.Point(70, 6);
            this.tb_tierloeschen_tierName.Name = "tb_tierloeschen_tierName";
            this.tb_tierloeschen_tierName.Size = new System.Drawing.Size(100, 20);
            this.tb_tierloeschen_tierName.TabIndex = 19;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(8, 9);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(56, 13);
            this.label9.TabIndex = 18;
            this.label9.Text = "Tier Name";
            // 
            // btn_tierloeschen_loeschen
            // 
            this.btn_tierloeschen_loeschen.Location = new System.Drawing.Point(95, 32);
            this.btn_tierloeschen_loeschen.Name = "btn_tierloeschen_loeschen";
            this.btn_tierloeschen_loeschen.Size = new System.Drawing.Size(75, 23);
            this.btn_tierloeschen_loeschen.TabIndex = 17;
            this.btn_tierloeschen_loeschen.Text = "Löschen";
            this.btn_tierloeschen_loeschen.UseVisualStyleBackColor = true;
            this.btn_tierloeschen_loeschen.Click += new System.EventHandler(this.btn_tierloeschen_loeschen_Click);
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.btn_futterbestellung_loeschen);
            this.tabPage3.Controls.Add(this.btn_futterbestellung_bestellen);
            this.tabPage3.Controls.Add(this.tb_futterbestellung_lieferant);
            this.tabPage3.Controls.Add(this.label12);
            this.tabPage3.Controls.Add(this.btn_futterbestellung_hinzufuegen);
            this.tabPage3.Controls.Add(this.tb_futterbestellung_futterMenge);
            this.tabPage3.Controls.Add(this.label11);
            this.tabPage3.Controls.Add(this.tb_futterbestellung_futterArt);
            this.tabPage3.Controls.Add(this.label10);
            this.tabPage3.Controls.Add(this.lb_futterbestellung_liste);
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(681, 415);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Futter bestellung";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // btn_futterbestellung_loeschen
            // 
            this.btn_futterbestellung_loeschen.Location = new System.Drawing.Point(342, 164);
            this.btn_futterbestellung_loeschen.Name = "btn_futterbestellung_loeschen";
            this.btn_futterbestellung_loeschen.Size = new System.Drawing.Size(75, 23);
            this.btn_futterbestellung_loeschen.TabIndex = 28;
            this.btn_futterbestellung_loeschen.Text = "Löschen";
            this.btn_futterbestellung_loeschen.UseVisualStyleBackColor = true;
            this.btn_futterbestellung_loeschen.Click += new System.EventHandler(this.btn_futterbestellung_loeschen_Click);
            // 
            // btn_futterbestellung_bestellen
            // 
            this.btn_futterbestellung_bestellen.Location = new System.Drawing.Point(342, 135);
            this.btn_futterbestellung_bestellen.Name = "btn_futterbestellung_bestellen";
            this.btn_futterbestellung_bestellen.Size = new System.Drawing.Size(75, 23);
            this.btn_futterbestellung_bestellen.TabIndex = 27;
            this.btn_futterbestellung_bestellen.Text = "Bestellen";
            this.btn_futterbestellung_bestellen.UseVisualStyleBackColor = true;
            this.btn_futterbestellung_bestellen.Click += new System.EventHandler(this.btn_futterbestellung_bestellen_Click);
            // 
            // tb_futterbestellung_lieferant
            // 
            this.tb_futterbestellung_lieferant.Location = new System.Drawing.Point(236, 137);
            this.tb_futterbestellung_lieferant.Name = "tb_futterbestellung_lieferant";
            this.tb_futterbestellung_lieferant.Size = new System.Drawing.Size(100, 20);
            this.tb_futterbestellung_lieferant.TabIndex = 26;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(182, 140);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(48, 13);
            this.label12.TabIndex = 25;
            this.label12.Text = "Lieferant";
            // 
            // btn_futterbestellung_hinzufuegen
            // 
            this.btn_futterbestellung_hinzufuegen.Location = new System.Drawing.Point(342, 6);
            this.btn_futterbestellung_hinzufuegen.Name = "btn_futterbestellung_hinzufuegen";
            this.btn_futterbestellung_hinzufuegen.Size = new System.Drawing.Size(75, 23);
            this.btn_futterbestellung_hinzufuegen.TabIndex = 24;
            this.btn_futterbestellung_hinzufuegen.Text = "Hinzufügen";
            this.btn_futterbestellung_hinzufuegen.UseVisualStyleBackColor = true;
            this.btn_futterbestellung_hinzufuegen.Click += new System.EventHandler(this.btn_futterbestellung_hinzufuegen_Click);
            // 
            // tb_futterbestellung_futterMenge
            // 
            this.tb_futterbestellung_futterMenge.Location = new System.Drawing.Point(236, 8);
            this.tb_futterbestellung_futterMenge.Name = "tb_futterbestellung_futterMenge";
            this.tb_futterbestellung_futterMenge.Size = new System.Drawing.Size(100, 20);
            this.tb_futterbestellung_futterMenge.TabIndex = 23;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(164, 11);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(66, 13);
            this.label11.TabIndex = 22;
            this.label11.Text = "Futtermenge";
            // 
            // tb_futterbestellung_futterArt
            // 
            this.tb_futterbestellung_futterArt.Location = new System.Drawing.Point(58, 8);
            this.tb_futterbestellung_futterArt.Name = "tb_futterbestellung_futterArt";
            this.tb_futterbestellung_futterArt.Size = new System.Drawing.Size(100, 20);
            this.tb_futterbestellung_futterArt.TabIndex = 21;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(6, 11);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(46, 13);
            this.label10.TabIndex = 20;
            this.label10.Text = "Futterart";
            // 
            // lb_futterbestellung_liste
            // 
            this.lb_futterbestellung_liste.FormattingEnabled = true;
            this.lb_futterbestellung_liste.Location = new System.Drawing.Point(6, 34);
            this.lb_futterbestellung_liste.Name = "lb_futterbestellung_liste";
            this.lb_futterbestellung_liste.Size = new System.Drawing.Size(411, 95);
            this.lb_futterbestellung_liste.TabIndex = 0;
            // 
            // tabPage4
            // 
            this.tabPage4.Controls.Add(this.tb_fuetterung_spezies);
            this.tabPage4.Controls.Add(this.label13);
            this.tabPage4.Controls.Add(this.btn_fuetterung_fuettern);
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage4.Size = new System.Drawing.Size(681, 415);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "Fütterung";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // tb_fuetterung_spezies
            // 
            this.tb_fuetterung_spezies.Location = new System.Drawing.Point(56, 6);
            this.tb_fuetterung_spezies.Name = "tb_fuetterung_spezies";
            this.tb_fuetterung_spezies.Size = new System.Drawing.Size(100, 20);
            this.tb_fuetterung_spezies.TabIndex = 22;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(6, 9);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(44, 13);
            this.label13.TabIndex = 21;
            this.label13.Text = "Spezies";
            // 
            // btn_fuetterung_fuettern
            // 
            this.btn_fuetterung_fuettern.Location = new System.Drawing.Point(81, 32);
            this.btn_fuetterung_fuettern.Name = "btn_fuetterung_fuettern";
            this.btn_fuetterung_fuettern.Size = new System.Drawing.Size(75, 23);
            this.btn_fuetterung_fuettern.TabIndex = 20;
            this.btn_fuetterung_fuettern.Text = "Füttern";
            this.btn_fuetterung_fuettern.UseVisualStyleBackColor = true;
            this.btn_fuetterung_fuettern.Click += new System.EventHandler(this.btn_fuetterung_fuettern_Click);
            // 
            // tabPage5
            // 
            this.tabPage5.Controls.Add(this.btn_strukturmueslitiere_load);
            this.tabPage5.Controls.Add(this.dgv_strukturmueslitiere_content);
            this.tabPage5.Location = new System.Drawing.Point(4, 22);
            this.tabPage5.Name = "tabPage5";
            this.tabPage5.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage5.Size = new System.Drawing.Size(681, 415);
            this.tabPage5.TabIndex = 4;
            this.tabPage5.Text = "Strukturmüsli Tiere";
            this.tabPage5.UseVisualStyleBackColor = true;
            // 
            // btn_strukturmueslitiere_load
            // 
            this.btn_strukturmueslitiere_load.Location = new System.Drawing.Point(6, 6);
            this.btn_strukturmueslitiere_load.Name = "btn_strukturmueslitiere_load";
            this.btn_strukturmueslitiere_load.Size = new System.Drawing.Size(75, 23);
            this.btn_strukturmueslitiere_load.TabIndex = 1;
            this.btn_strukturmueslitiere_load.Text = "Load";
            this.btn_strukturmueslitiere_load.UseVisualStyleBackColor = true;
            this.btn_strukturmueslitiere_load.Click += new System.EventHandler(this.btn_strukturmueslitiere_load_Click);
            // 
            // dgv_strukturmueslitiere_content
            // 
            this.dgv_strukturmueslitiere_content.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgv_strukturmueslitiere_content.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_strukturmueslitiere_content.Location = new System.Drawing.Point(6, 35);
            this.dgv_strukturmueslitiere_content.Name = "dgv_strukturmueslitiere_content";
            this.dgv_strukturmueslitiere_content.Size = new System.Drawing.Size(669, 374);
            this.dgv_strukturmueslitiere_content.TabIndex = 0;
            // 
            // tabPage6
            // 
            this.tabPage6.Controls.Add(this.btn_pflegertiere_load);
            this.tabPage6.Controls.Add(this.dgv_pflegertiere_content);
            this.tabPage6.Location = new System.Drawing.Point(4, 22);
            this.tabPage6.Name = "tabPage6";
            this.tabPage6.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage6.Size = new System.Drawing.Size(681, 415);
            this.tabPage6.TabIndex = 5;
            this.tabPage6.Text = "Alle Tiere eines Pflegers";
            this.tabPage6.UseVisualStyleBackColor = true;
            // 
            // btn_pflegertiere_load
            // 
            this.btn_pflegertiere_load.Location = new System.Drawing.Point(6, 6);
            this.btn_pflegertiere_load.Name = "btn_pflegertiere_load";
            this.btn_pflegertiere_load.Size = new System.Drawing.Size(75, 23);
            this.btn_pflegertiere_load.TabIndex = 3;
            this.btn_pflegertiere_load.Text = "Load";
            this.btn_pflegertiere_load.UseVisualStyleBackColor = true;
            this.btn_pflegertiere_load.Click += new System.EventHandler(this.btn_pflegertiere_load_Click);
            // 
            // dgv_pflegertiere_content
            // 
            this.dgv_pflegertiere_content.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgv_pflegertiere_content.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_pflegertiere_content.Location = new System.Drawing.Point(6, 35);
            this.dgv_pflegertiere_content.Name = "dgv_pflegertiere_content";
            this.dgv_pflegertiere_content.Size = new System.Drawing.Size(669, 374);
            this.dgv_pflegertiere_content.TabIndex = 2;
            // 
            // tabPage7
            // 
            this.tabPage7.Controls.Add(this.tb_futterhinzufuegen_preis);
            this.tabPage7.Controls.Add(this.label19);
            this.tabPage7.Controls.Add(this.tb_futterhinzufuegen_futter);
            this.tabPage7.Controls.Add(this.label20);
            this.tabPage7.Controls.Add(this.tb_futterhinzufuegen_lieferant);
            this.tabPage7.Controls.Add(this.label21);
            this.tabPage7.Controls.Add(this.btn_futterhinzufuegen_hinzufuegen);
            this.tabPage7.Location = new System.Drawing.Point(4, 22);
            this.tabPage7.Name = "tabPage7";
            this.tabPage7.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage7.Size = new System.Drawing.Size(681, 415);
            this.tabPage7.TabIndex = 6;
            this.tabPage7.Text = "Neue Futterart hinzufügen";
            this.tabPage7.UseVisualStyleBackColor = true;
            // 
            // btn_futterhinzufuegen_hinzufuegen
            // 
            this.btn_futterhinzufuegen_hinzufuegen.Location = new System.Drawing.Point(183, 56);
            this.btn_futterhinzufuegen_hinzufuegen.Name = "btn_futterhinzufuegen_hinzufuegen";
            this.btn_futterhinzufuegen_hinzufuegen.Size = new System.Drawing.Size(75, 23);
            this.btn_futterhinzufuegen_hinzufuegen.TabIndex = 17;
            this.btn_futterhinzufuegen_hinzufuegen.Text = "Hinzufügen";
            this.btn_futterhinzufuegen_hinzufuegen.UseVisualStyleBackColor = true;
            this.btn_futterhinzufuegen_hinzufuegen.Click += new System.EventHandler(this.btn_futterhinzufuegen_hinzufuegen_Click);
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(9, 9);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(48, 13);
            this.label21.TabIndex = 18;
            this.label21.Text = "Lieferant";
            // 
            // tb_futterhinzufuegen_lieferant
            // 
            this.tb_futterhinzufuegen_lieferant.Location = new System.Drawing.Point(63, 6);
            this.tb_futterhinzufuegen_lieferant.Name = "tb_futterhinzufuegen_lieferant";
            this.tb_futterhinzufuegen_lieferant.Size = new System.Drawing.Size(100, 20);
            this.tb_futterhinzufuegen_lieferant.TabIndex = 19;
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Location = new System.Drawing.Point(23, 35);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(34, 13);
            this.label20.TabIndex = 20;
            this.label20.Text = "Futter";
            // 
            // tb_futterhinzufuegen_futter
            // 
            this.tb_futterhinzufuegen_futter.Location = new System.Drawing.Point(63, 32);
            this.tb_futterhinzufuegen_futter.Name = "tb_futterhinzufuegen_futter";
            this.tb_futterhinzufuegen_futter.Size = new System.Drawing.Size(100, 20);
            this.tb_futterhinzufuegen_futter.TabIndex = 21;
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(23, 61);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(30, 13);
            this.label19.TabIndex = 22;
            this.label19.Text = "Preis";
            // 
            // tb_futterhinzufuegen_preis
            // 
            this.tb_futterhinzufuegen_preis.Location = new System.Drawing.Point(63, 58);
            this.tb_futterhinzufuegen_preis.Name = "tb_futterhinzufuegen_preis";
            this.tb_futterhinzufuegen_preis.Size = new System.Drawing.Size(100, 20);
            this.tb_futterhinzufuegen_preis.TabIndex = 23;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(713, 465);
            this.Controls.Add(this.tabControl1);
            this.Name = "Form1";
            this.Text = "ZooTycoon";
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.tabPage3.ResumeLayout(false);
            this.tabPage3.PerformLayout();
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            this.tabPage5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_strukturmueslitiere_content)).EndInit();
            this.tabPage6.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_pflegertiere_content)).EndInit();
            this.tabPage7.ResumeLayout(false);
            this.tabPage7.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btn_tierhinzufuegen_hinzufuegen;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TextBox tb_tierhinzufuegen_futterBedarf;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox tb_tierhinzufuegen_futterName;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox tb_tierhinzufuegen_tierpflegerNachname;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox tb_tierhinzufuegen_tierpflegerVorname;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox tb_tierhinzufuegen_tierSpezies;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox tb_tierhinzufuegen_tierGeschlecht;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tb_tierhinzufuegen_tierName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tb_tierhinzufuegen_gehegeName;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TextBox tb_tierloeschen_tierName;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button btn_tierloeschen_loeschen;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.ListBox lb_futterbestellung_liste;
        private System.Windows.Forms.TextBox tb_futterbestellung_futterMenge;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox tb_futterbestellung_futterArt;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button btn_futterbestellung_hinzufuegen;
        private System.Windows.Forms.Button btn_futterbestellung_bestellen;
        private System.Windows.Forms.TextBox tb_futterbestellung_lieferant;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox tb_fuetterung_spezies;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Button btn_fuetterung_fuettern;
        private System.Windows.Forms.Button btn_futterbestellung_loeschen;
        private System.Windows.Forms.TabPage tabPage5;
        private System.Windows.Forms.DataGridView dgv_strukturmueslitiere_content;
        private System.Windows.Forms.TabPage tabPage6;
        private System.Windows.Forms.Button btn_strukturmueslitiere_load;
        private System.Windows.Forms.Button btn_pflegertiere_load;
        private System.Windows.Forms.DataGridView dgv_pflegertiere_content;
        private System.Windows.Forms.TabPage tabPage7;
        private System.Windows.Forms.TextBox tb_futterhinzufuegen_preis;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.TextBox tb_futterhinzufuegen_futter;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.TextBox tb_futterhinzufuegen_lieferant;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Button btn_futterhinzufuegen_hinzufuegen;
    }
}

