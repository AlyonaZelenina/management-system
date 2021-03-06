BEGIN;

ALTER TABLE resources
    DROP COLUMN IF EXISTS resourceName CASCADE,
    DROP COLUMN IF EXISTS resourceDescription CASCADE,
    DROP COLUMN IF EXISTS modified_at CASCADE;

ALTER TABLE rooms
    DROP COLUMN IF EXISTS room CASCADE,
    DROP COLUMN IF EXISTS modified_at CASCADE;

ALTER TABLE subjects
    DROP COLUMN IF EXISTS subject_name CASCADE,
    DROP COLUMN IF EXISTS modified_at CASCADE;

COMMIT;