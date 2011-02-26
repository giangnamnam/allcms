using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;
using Mobile.Common;

namespace Mobile.DomainObjects
{
    public class ProductRepair
    {
        public virtual int ID
        {
            get;
            set;
        }

        public virtual string RepairNo
        {
            get;
            set;
        }

        public virtual Contact Contact
        {
            get;
            set;
        }

        public virtual string StaffName
        {
            get;
            set;
        }

        public virtual string CustomerName
        {
            get;
            set;
        }

        public virtual DateTime? CustomerDate
        {
            get;
            set;
        }

        public virtual string CustomerContact
        {
            get;
            set;
        }

        public virtual string ProductModel
        {
            get;
            set;
        }

        public virtual string ProductColor
        {
            get;
            set;
        }

        public virtual string ProductIMEI
        {
            get;
            set;
        }

        public virtual string ProductFaultReport
        {
            get;
            set;
        }

        public virtual bool ProductNoSim
        {
            get;
            set;
        }

        public virtual string ProductWB
        {
            get;
            set;
        }

        public virtual string ProductNB
        {
            get;
            set;
        }
        public virtual bool ProductMemoryCard
        {
            get;
            set;
        }
        public virtual string ProductExteriorCondition
        {
            get;
            set;
        }
        public virtual string MemoLabourCode
        {
            get;
            set;
        }
        public virtual string MemoPartsCode
        {
            get;
            set;
        }
        public virtual string MemoTotalInCludingGST
        {
            get;
            set;
        }
        public virtual string PartsFixed
        {
            get;
            set;
        }
        public virtual string PartsFixedOthers
        {
            get;
            set;
        }
        public virtual string SignName
        {
            get;
            set;
        }

        public virtual DateTime? SignDate
        {
            get;
            set;
        }

        public virtual string SignCustomerName
        {
            get;
            set;
        }

        public virtual DateTime? SignCustomerDate
        {
            get;
            set;
        }

        public virtual string ModifiedBy
        {
            get;
            set;
        }

        public virtual DateTime? ModifiedDate
        {
            get;
            set;
        }
        #region RepairToString
        private string m_RepairToString = string.Empty;
        /// <summary>
        /// Gets RepairToString
        /// </summary>
        public virtual string StatusToString
        {
            get
            {
                switch (Status)
                {
                    case 1:
                        m_RepairToString = "Pending";
                        break;
                    case 2:
                        m_RepairToString = "In Processing";
                        break;
                    case 3:
                        m_RepairToString = "Repaired";
                        break;
                }
                return m_RepairToString;
            }

        }
        #endregion

        public virtual int Status
        {
            get;
            set;
        }
    }
}
