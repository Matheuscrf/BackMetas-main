DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='goals' AND column_name='desired_weekly_0frequency') THEN
        ALTER TABLE "goals" RENAME COLUMN "desired_weekly_0frequency" TO "desired_weekly_frequency";
    END IF;
END $$;