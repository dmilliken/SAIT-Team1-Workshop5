using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Team1_Workshop4_Part2
{   //Brodie Zoschke Code starts
    [DataObject(true)]
    public class PackagesDB
    {
        //get packages with the bookingdate using the booking id
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<PackagesWBooking> GetPackagesWithBookingDate(int bookingId) 
        {
            //create a list using the packages with dates objects
            List<PackagesWBooking> packagesWBookings = new List<PackagesWBooking>();
            SqlConnection connection = TravelExpertsDB.GetConnection();
            //select statement with inner join to get the booking date
            string selectStatement = "SELECT PkgName, PkgStartDate, PkgEndDate, PkgDesc, PkgBasePrice, PkgAgencyCommission, BookingDate " +
                                     "FROM Packages p INNER JOIN Bookings b on b.PackageId = p.PackageId Where BookingId = @bookingId";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            selectCommand.Parameters.AddWithValue("@bookingId", bookingId);


            try
            {
                connection.Open();

                SqlDataReader reader = selectCommand.ExecuteReader();
                //while reader is executing 
                while (reader.Read())
                {
                    //create a new package with booking object 
                    PackagesWBooking p = new PackagesWBooking();
                    //fill the object values with using the reader and converting to proper data types
                    p.PkgName = reader["PkgName"].ToString();
                    p.PkgStartDate = reader["PkgStartDate"].ToString();
                    p.PkgEndDate = reader["PkgEndDate"].ToString();
                    p.PkgDesc = reader["PkgDesc"].ToString();
                    p.PkgBasePrice = Convert.ToDouble(reader["PkgBasePrice"]);
                    p.PkgAgencyCommission = Convert.ToDouble(reader["PkgAgencyCommission"]);
                    p.BookingDate= reader["BookingDate"].ToString();
                    //add new object to the list created
                    packagesWBookings.Add(p);
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            //return the list 
            return packagesWBookings;

        }

        //variation of the get packages class that returns just the packages in the database and only using the columns of the table
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Packages> GetAllPackages()
        {
            List<Packages> packages = new List<Packages>();
            SqlConnection connection = TravelExpertsDB.GetConnection();
            string selectStatement = "SELECT PkgName, PkgStartDate, PkgEndDate, PkgDesc, PkgBasePrice, PkgAgencyCommission " +
                                     "FROM Packages";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            
            


            try
            {
                connection.Open();

                SqlDataReader reader = selectCommand.ExecuteReader();
                

                while (reader.Read())
                {
                    Packages p = new Packages();
                    p.PkgName = reader["PkgName"].ToString();
                    p.PkgStartDate = reader["PkgStartDate"].ToString();
                    p.PkgEndDate = reader["PkgEndDate"].ToString();
                    p.PkgDesc = reader["PkgDesc"].ToString();
                    p.PkgBasePrice = Convert.ToDouble(reader["PkgBasePrice"]);
                    p.PkgAgencyCommission = Convert.ToDouble(reader["PkgAgencyCommission"]);
                    
                    packages.Add(p);
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return packages;

        }
        //third variation where the customer Id is used to obtain the packages
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<PackagesWBooking> GetPackagesFromCustomers(int customerId)
        {
            List<PackagesWBooking> packagesWBooking = new List<PackagesWBooking>();
            SqlConnection connection = TravelExpertsDB.GetConnection();
            string selectStatement = "SELECT BookingNo, PkgName, PkgStartDate, PkgEndDate, PkgDesc, PkgBasePrice, PkgAgencyCommission, BookingDate " +
                                     "FROM Packages p INNER JOIN Bookings b on b.PackageId = p.PackageId "+
                                                     "INNER JOIN Customers c on c.CustomerId = b.CustomerId "+
                                                     "WHERE c.CustomerId = @customerId";
                                      
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            selectCommand.Parameters.AddWithValue("@customerId", customerId);


            try
            {
                connection.Open();

                SqlDataReader reader = selectCommand.ExecuteReader();
                

                while (reader.Read())
                {
                    PackagesWBooking p = new PackagesWBooking();
                    p.BookingNo = reader["BookingNo"].ToString();
                    p.PkgName = reader["PkgName"].ToString();
                    p.PkgStartDate = reader["PkgStartDate"].ToString();
                    p.PkgEndDate = reader["PkgEndDate"].ToString();
                    p.PkgDesc = reader["PkgDesc"].ToString();
                    p.PkgBasePrice = Convert.ToDouble(reader["PkgBasePrice"]);
                    p.PkgAgencyCommission = Convert.ToDouble(reader["PkgAgencyCommission"]);
                    p.BookingDate = reader["BookingDate"].ToString();
                    packagesWBooking.Add(p);
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return packagesWBooking;

        }



    }
        
}
