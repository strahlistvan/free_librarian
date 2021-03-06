DROP TABLE lib_t_borrowing CASCADE CONSTRAINTS
/
CREATE TABLE lib_t_borrowing (
  id              NUMBER,
  user_id         NUMBER NOT NULL,
  document_id     NUMBER NOT NULL,
  end_date        DATE NOT NULL, 
  renewal_count   NUMBER DEFAULT 0
)
/
ALTER TABLE lib_t_borrowing ADD CONSTRAINT lib_pk_borrowing 
PRIMARY KEY (id)
/
COMMENT ON TABLE lib_t_borrowing IS 'Contains borrowing (loan) details.'
/
COMMENT ON COLUMN lib_t_borrowing.id IS 'Borrowing record identifier (technical field)'
/
COMMENT ON COLUMN lib_t_borrowing.user_id IS 'Borrower library user identifier.'
/
COMMENT ON COLUMN lib_t_borrowing.document_id IS 'Borrowed document''s identifier.'
/
COMMENT ON COLUMN lib_t_borrowing.end_date IS 'Borrowing end date.'
/
COMMENT ON COLUMN lib_t_borrowing.renewal_count IS 'How many times did the user renew this borrow record?'
/
