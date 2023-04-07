INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Anonymous Alias', 'aa123' , '', ''),
  ('Andrew Bayko', 'bayko' , 'email2@gmail.com', 'MOCK'),
  ('Londo Mollari','londo','lmollari@centari.com','MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'aa123' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  );