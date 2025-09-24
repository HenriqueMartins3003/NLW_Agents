ALTER TABLE "audio_chunks" ADD PRIMARY KEY ("id");--> statement-breakpoint
ALTER TABLE "audio_chunks" ALTER COLUMN "id" SET DEFAULT gen_random_uuid();--> statement-breakpoint
ALTER TABLE "audio_chunks" ALTER COLUMN "id" SET NOT NULL;