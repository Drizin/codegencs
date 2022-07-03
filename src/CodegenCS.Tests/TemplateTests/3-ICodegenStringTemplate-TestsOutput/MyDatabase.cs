/// Auto-Generated by CodegenCS (https://github.com/Drizin/CodegenCS)
/// Copyright Rick Drizin (just kidding - this is MIT license - use however you like it!)
 
namespace MyNamespace
{
    /// <summary>
    /// POCO for Users
    /// </summary>
    public class Users
    {
        /// <summary>
        /// [dbo].[Users][UserId] (int)
        /// </summary>
        public int UserId { get; set; }

        /// <summary>
        /// [dbo].[Users][FirstName] (nvarchar)
        /// </summary>
        public string FirstName { get; set; }

        /// <summary>
        /// [dbo].[Users][LastName] (nvarchar)
        /// </summary>
        public string LastName { get; set; }
    }

    /// <summary>
    /// POCO for Users
    /// </summary>
    public class Products
    {
        /// <summary>
        /// [dbo].[Products][Description] (int)
        /// </summary>
        public int Description { get; set; }

        /// <summary>
        /// [dbo].[Products][ProductId] (nvarchar)
        /// </summary>
        public string ProductId { get; set; }
    }
}