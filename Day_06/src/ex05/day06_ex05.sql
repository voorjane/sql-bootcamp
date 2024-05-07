COMMENT ON TABLE person_discounts IS 'This table contains personal discounts for all visitors';
COMMENT ON COLUMN person_discounts.id IS 'Primary key of discount table';
COMMENT ON COLUMN person_discounts.person_id IS 'Id of person whose given a discount';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Id of pizzeria where discount is given';
COMMENT ON COLUMN person_discounts.discount IS 'Discount in percents';
