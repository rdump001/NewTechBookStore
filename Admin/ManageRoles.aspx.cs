using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class ManageRoles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MembershipUserCollection allUsers = Membership.GetAllUsers();
            foreach (MembershipUser userCurrent in allUsers)
            {
                if (Roles.IsUserInRole(userCurrent.UserName, "Members"))
                {
                    lbxMembersRoleMembers.Items.Add(userCurrent.UserName);
                }
                else
                {
                    lbxMembersRoleNonMembers.Items.Add(userCurrent.UserName);
                }
                if (Roles.IsUserInRole(userCurrent.UserName, "Admins"))
                {
                    lbxAdminsRoleMembers.Items.Add(userCurrent.UserName);
                }
                else
                {
                    lbxAdminsRoleNonMembers.Items.Add(userCurrent.UserName);
                }
            }
        }
    }
    protected void btnMembersRemove_Click(object sender, EventArgs e)
    {
        string selectedUsername = lbxMembersRoleMembers.SelectedValue;
        if (selectedUsername != "")
        {
            lbxMembersRoleNonMembers.Items.Add(selectedUsername);
            lbxMembersRoleMembers.Items.Remove(selectedUsername);
            Roles.RemoveUserFromRole(selectedUsername, "Members");
        }
    }
    protected void btnMembersAdd_Click(object sender, EventArgs e)
    {
        string selectedUsername = lbxMembersRoleNonMembers.SelectedValue;
        if (selectedUsername != "")
        {
            lbxMembersRoleMembers.Items.Add(selectedUsername);
            lbxMembersRoleNonMembers.Items.Remove(selectedUsername);
            if (!Roles.RoleExists("Members"))
                Roles.CreateRole("Members");
            Roles.AddUserToRole(selectedUsername, "Members");
        }
    }
    protected void btnAdminRemove_Click(object sender, EventArgs e)
    {
        string selectedUsername = lbxAdminsRoleMembers.SelectedValue;
        if (selectedUsername != "")
        {
            lbxAdminsRoleNonMembers.Items.Add(selectedUsername);
            lbxAdminsRoleMembers.Items.Remove(selectedUsername);
            Roles.RemoveUserFromRole(selectedUsername, "Admins");
        }
    }
    protected void btnAdminsAdd_Click(object sender, EventArgs e)
    {
        string selectedUsername = lbxAdminsRoleNonMembers.SelectedValue;
        if (selectedUsername != "")
        {
            lbxAdminsRoleMembers.Items.Add(selectedUsername);
            lbxAdminsRoleNonMembers.Items.Remove(selectedUsername);
            if (!Roles.RoleExists("Admins"))
                Roles.CreateRole("Admins");
            Roles.AddUserToRole(selectedUsername, "Admins");
        }
    }
}
