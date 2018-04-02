using System;

namespace fwappc02
{
    public partial class GridViewSample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // 選択行の主キーの取得
            var employeeId = GridView1.SelectedValue;

            // 単票画面に遷移
            Response.Redirect($"~/Basic/FormViewSample.aspx?EmployeeId={employeeId}");


        }
    }
}