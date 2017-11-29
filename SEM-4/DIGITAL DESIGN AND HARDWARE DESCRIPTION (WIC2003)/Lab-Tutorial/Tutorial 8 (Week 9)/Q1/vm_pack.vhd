PACKAGE vm_pack IS
  TYPE t_vm_state IS (main_st, review_st, repeat_st, save_st,
                                   erase_st, send_st, address_st, record_st,
                                   begin_rec_st, message_st);
END vm_pack;