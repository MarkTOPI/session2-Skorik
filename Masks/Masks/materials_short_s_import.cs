//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Masks
{
    using System;
    using System.Collections.Generic;
    
    public partial class materials_short_s_import
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public materials_short_s_import()
        {
            this.products_s_import = new HashSet<products_s_import>();
        }
    
        public int Id { get; set; }
        public string Наименование_материала { get; set; }
        public string C_Тип_материала { get; set; }
        public Nullable<int> Id_type_materials { get; set; }
        public Nullable<int> C_Количество_в_упаковке { get; set; }
        public string C_Единица_измерения { get; set; }
        public Nullable<int> C_Количество_на_складе { get; set; }
        public Nullable<int> C_Минимальный_возможный_остаток { get; set; }
        public Nullable<decimal> C_Стоимость { get; set; }
    
        public virtual id_type_materials id_type_materials1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<products_s_import> products_s_import { get; set; }
    }
}
