CLASS zcl_abapgit_object_ecvo DEFINITION
  PUBLIC
  INHERITING FROM zcl_abapgit_object_ecatt_super
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor
        IMPORTING
          !is_item     TYPE zif_abapgit_definitions=>ty_item
          !iv_language TYPE spras.

  PROTECTED SECTION.
    METHODS:
      get_object_type REDEFINITION,
      get_upload REDEFINITION,
      get_download REDEFINITION,
      get_lock_object REDEFINITION.

ENDCLASS.



CLASS zcl_abapgit_object_ecvo IMPLEMENTATION.


  METHOD constructor.

    super->constructor( is_item     = is_item
                        iv_language = iv_language ).

  ENDMETHOD.


  METHOD get_object_type.

*    constant missing in 702
*    rv_object_type = cl_apl_ecatt_const=>obj_type_ecatt_vo.
    rv_object_type = 'ECVO'.

  ENDMETHOD.

  METHOD get_upload.

    CREATE OBJECT ro_upload TYPE zcl_abapgit_ecatt_val_obj_upl.

  ENDMETHOD.

  METHOD get_download.

    CREATE OBJECT ro_download TYPE zcl_abapgit_ecatt_val_obj_down.

  ENDMETHOD.

  METHOD get_lock_object.

    rv_lock_object = 'E_ECATT_TD'.

  ENDMETHOD.

ENDCLASS.
