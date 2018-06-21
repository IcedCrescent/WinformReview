using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace WinformReview
{
    public partial class Form1 : Form
    {
        string connectionStr = ConfigurationManager.ConnectionStrings["ProjectDB"].ConnectionString;
        public Form1()
        {
            InitializeComponent();
            string selectQuery = "SELECT * FROM EmployeeTBL";
            SqlDataAdapter adapter = new SqlDataAdapter(selectQuery, connectionStr);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            comboBoxEmp.DataSource = dt;
            comboBoxEmp.DisplayMember = "EmployeeName";
            comboBoxEmp.ValueMember = "EmployeeID";
            comboBoxEmp.SelectedIndexChanged += ComboBoxEmp_SelectedIndexChanged;
            ComboBoxEmp_SelectedIndexChanged(null, null);
        }

        private void ComboBoxEmp_SelectedIndexChanged(object sender, EventArgs e)
        {
            int employeeID = int.Parse(comboBoxEmp.SelectedValue.ToString());
            string query = string.Format("select [ProjectID], [ProjectName] from Projects where ProjectID not in (select ProjectID from ProjectResourceTBL where EmployeeID = {0})", employeeID);
            SqlDataAdapter adapter = new SqlDataAdapter(query, connectionStr);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            dataGridViewProject.DataSource = dt;
            //resize column name
            dataGridViewProject.Columns[1].Width = dataGridViewProject.Columns[1].GetPreferredWidth(DataGridViewAutoSizeColumnMode.AllCells, true);
            DataGridViewCheckBoxColumn c = new DataGridViewCheckBoxColumn();
            c.HeaderText = "Available Projects";
            c.Name = "JoinProject";
            c.TrueValue = true;
            c.FalseValue = false;
            dataGridViewProject.Columns.Insert(2, c);
        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null; 
            //for (int i = 0; i < dataGridViewProject.Rows.Count; i++)
            //{
            //    DataGridViewRow row = dataGridViewProject.Rows[i];
            //    object obj = row.Cells["JoinProject"].Value;
            //    if (obj != null && obj.ToString().ToLower().Equals("true"))
            //    {
            //        string id = row.Cells["ProjectID"].Value.ToString();
            //        string name = row.Cells["ProjectName"].Value.ToString();
            //        //do insertion
            //        string insertQuery = "insert into ProjectResourceTBL values(@pid, @eid)";
            //        SqlCommand cmd = new SqlCommand(insertQuery, conn);

            //    }
            //}
            SqlTransaction transaction = null;
            try
            {
                conn = new SqlConnection(connectionStr);
                conn.Open();
                transaction = conn.BeginTransaction();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                for (int i = 0; i < dataGridViewProject.Rows.Count; i++)
                {
                    DataGridViewRow row = dataGridViewProject.Rows[i];
                    object obj = row.Cells["JoinProject"].Value;
                    if (obj != null && obj.ToString().ToLower().Equals("true"))
                    {
                        string id = row.Cells["ProjectID"].Value.ToString();
                        string name = row.Cells["ProjectName"].Value.ToString();
                        cmd.CommandText += string.Format("INSERT INTO ProjectResourceTBL VALUES(@pid{0}, @eid{0});", i);
                        cmd.Parameters.Add(string.Format("@pid{0}", i), SqlDbType.VarChar).Value = id;
                        cmd.Parameters.Add(string.Format("@eid{0}", i), SqlDbType.Int).Value = int.Parse(comboBoxEmp.SelectedValue.ToString());
                    }
                }
                Debug.WriteLine(cmd.CommandText);
                cmd.Transaction = transaction;
                cmd.ExecuteNonQuery();
                transaction.Commit();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("ex: " + ex.Message);
                Debug.WriteLine("msg: " + ex.StackTrace);
                try
                {
                    transaction.Rollback();
                    return;
                }
                catch (Exception exRollback)
                {
                    MessageBox.Show(exRollback.StackTrace, exRollback.Message, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            finally
            {
                if (conn.State != ConnectionState.Closed)
                    conn.Close();
                transaction.Dispose();
            }
            MessageBox.Show("Successfully updated");
            ComboBoxEmp_SelectedIndexChanged(null, null);
        }
    }
}
