using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cart
/// </summary>
public class Cart
{
    public int[] product=new int[100];
    public int[] qty = new int[100];
    public int noOfIds=0;
    public bool flag;
    public Cart()
    {
        noOfIds = 0;

        //
        // TODO: Add constructor logic here
        //
    }
    public bool addProduct(int bd_id)
    {
        int i;
        flag = false;
        
        for (i = 0; i < noOfIds; i++)
        {
            if (bd_id == product[i])
            {
                qty[noOfIds-1] = qty[noOfIds-1]+1; 
                flag = true;
            }
        }
        if (flag == false)
        {
            product[noOfIds] = bd_id;
            qty[noOfIds] = 1;
            noOfIds = noOfIds + 1;
            return true;
        }
        else
            return false;

    }
    public bool deleteProduct(int bd_id)
    {
        int i;
        flag = false;

        for (i = 0; i <= noOfIds; i++)
        {
            if (bd_id == product[i])
            {
                flag = true;
                while (i <= noOfIds)
                {
                    if (i == noOfIds)
                    {
                        i++;
                    }
                    else
                    {
                        product[i] = product[i + 1];
                        i++;
                    }
                }
            }
        }

        if (flag == true)
        {
            noOfIds = noOfIds - 1;
            return true;
        }
        else
        {

            return false;
        }
    }

}  



