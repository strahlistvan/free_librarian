DROP TABLE lib_borrowing_h CASCADE CONSTRAINTS;

CREATE TABLE lib_borrowing_h (
  id              NUMBER,
  user_id         NUMBER,
  document_id     NUMBER,
  end_date        DATE, 
  renewal_count   NUMBER,
  surcharge       NUMBER DEFAULT 0,
  
  modified_by     VARCHAR2(100 CHAR),
  dml_flag        VARCHAR2(1),
  mod_date        DATE,
  version_no      NUMBER
 
);

COMMENT ON TABLE lib_borrowing_h IS 'Contains borrowing (loan) details.';

COMMENT ON COLUMN lib_borrowing_h.id IS 'Borrowing record identifier (technical field)';
COMMENT ON COLUMN lib_borrowing_h.user_id IS 'Borrower library user identifier.';
COMMENT ON COLUMN lib_borrowing_h.document_id IS 'Borrowed document''s identifier.';
COMMENT ON COLUMN lib_borrowing_h.end_date IS 'Borrowing end date.';
COMMENT ON COLUMN lib_borrowing_h.renewal_count IS 'How many times did the user renew this borrow record?';
COMMENT ON COLUMN lib_borrowing_h.surcharge IS 'If you don''t bring the document back in time, you must pay.';
