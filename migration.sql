-- Riad di Siena: Supabase Migration
-- Generated from Google Sheets export

-- Table: settings (14 rows)
DROP TABLE IF EXISTS settings CASCADE;
CREATE TABLE settings (
  id serial PRIMARY KEY,
  "key" text,
  value text,
  description text
);

INSERT INTO settings ("key", value, description) VALUES
('site_name', 'Riad di Siena', 'Brand name'),
('site_tagline', 'Old walls, steady and sure. A place that keeps you safe from the city''s rush.', 'Footer tagline'),
('contact_email', 'happy@riaddisiena.com', 'Primary contact email'),
('contact_phone', '+212 600 000 000', 'Primary phone/WhatsApp'),
('contact_address', '37 Derb Fhal Zefriti, Marrakech Medina', 'Physical address'),
('whatsapp_number', NULL, 'WhatsApp (no + or spaces)'),
('instagram_url', NULL, 'Instagram profile'),
('check_in_time', '15:00:00', 'Check-in time'),
('check_out_time', '11:00', 'Check-out time'),
('breakfast_start', '08:30', 'Breakfast start'),
('breakfast_end', '10:30', 'Breakfast end'),
('city_tax_eur', '2.50', 'City tax per person per night'),
('deposit_percent', 100, 'Deposit percentage'),
('journey_banner_title', 'The Slow Journey South', 'Title for Slow Morocco journey banner');

-- Table: home (1 rows)
DROP TABLE IF EXISTS home CASCADE;
CREATE TABLE home (
  id serial PRIMARY KEY,
  section text,
  title text,
  subtitle text,
  body text,
  image_url text,
  button_text text,
  button_link text,
  "order" integer
);

INSERT INTO home (section, title, subtitle, body, image_url, button_text, button_link, "order") VALUES
('hero', 'Welcome home', 'Step into this 18th-century riad, a place of clear thoughts, deep sleep, and days that move at their own pace.', NULL, 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766282556/riadlife26_uanf6j.png', 'THE HOUSE', '/the-riad', 1);

-- Table: the_riad (5 rows)
DROP TABLE IF EXISTS the_riad CASCADE;
CREATE TABLE the_riad (
  id serial PRIMARY KEY,
  section text,
  title text,
  subtitle text,
  body text,
  image_url text,
  "order" integer
);

INSERT INTO the_riad (section, title, subtitle, body, image_url, "order") VALUES
('hero', NULL, 'Three hundred years old. Built in the K''sour quarter when the Sultan''s ministers lived on these alleys. The walls are two feet of clay. The beams are original. The tilework is original. Generations have lived here  –  laughed here, cried here, raised children here.', NULL, 'https://res.cloudinary.com/drstfu5yr/image/upload/v1767072923/riadlife4_fwthco.png', 1),
('history', NULL, 'The house has a soul. You feel it when you step inside and the noise falls away. You feel it in the quiet of the courtyard, in the cool of the walls, in the way the light moves through the day.', NULL, NULL, 2),
('authentic', NULL, 'She is not here to impress you. She hopes to hold you.', NULL, NULL, 3),
('original', NULL, NULL, NULL, NULL, NULL),
('location', NULL, 'Two minutes from Jemaa el-Fna. Steps from the souks and the Koutoubia. On a quiet alley where the only sound is birdsong.', NULL, NULL, NULL);

-- Table: rooms (3 rows)
DROP TABLE IF EXISTS rooms CASCADE;
CREATE TABLE rooms (
  id serial PRIMARY KEY,
  room_id text,
  name text,
  description text,
  price_eur numeric,
  features text,
  image_url text,
  widget_id text,
  ical_url text,
  "order" integer,
  bookable text
);

INSERT INTO rooms (room_id, name, description, price_eur, features, image_url, widget_id, ical_url, "order", bookable) VALUES
('hidden-gem', 'Hidden Gem', 'A room that wraps around you. Tadelakt walls in desert rose, bejmat floors worn smooth by time, and the particular quiet of old stone. Soft light from the courtyard. You sleep well here.', 95.0, '30m¬≤,Courtyard view,Air conditioning,Private bathroom,Breakfast included,Linens & towels,Shower gel & shampoo', 'https://drive.google.com/file/d/1KseALX2dQFsiH8maSs7zfQPOsTDBh3K2/view?usp=drive_link', '772306b1-4927-48a9-b92e-c3e4a19b8cd8', 'https://www.airbnb.com/calendar/ical/29763825.ics?s=1730e0e4c97767863437b93b04c9ccef', 1, 'Yes'),
('tresor-cache', 'Trésor Caché', 'The name means hidden treasure. This is our brightest room, morning light fills the space and stays. Tadelakt in natural lime, artisanal details you notice over days not hours. A room to linger in.', 105.0, '30m¬≤,Courtyard view,Air conditioning,Private bathroom,Breakfast included,Linens & towels,Shower gel & shampoo', 'https://drive.google.com/file/d/1fvBqlVSXBxF_s1PPmk3JRpD1H62kqsz1/view?usp=drive_link', 'fd265408-d2af-4185-83fe-dcef228fe881', 'https://www.airbnb.com/calendar/ical/29755574.ics?s=3e3a57b54dca852247a73930138435d8', 2, 'Yes'),
('jewel-box', 'Jewel Box', 'Perfectly formed. Tadelakt and bejmat in desert rose tones, a window onto the courtyard, and the feeling of being held by something old and well-made. The essence of the house.', 75.0, '30m¬≤,Courtyard view,Air conditioning,Private bathroom,Breakfast included,Linens & towels,Shower gel & shampoo', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1767015143/Jewel3_hh4hyc.png', '98fb1f30-3509-4d8a-9cfc-c9ebbe2dbca9', 'https://ical.booking.com/v1/export/t/485c4e2f-c572-481c-9f5e-405661208051.ics', 3, 'No');

-- Table: rooms_hero (1 rows)
DROP TABLE IF EXISTS rooms_hero CASCADE;
CREATE TABLE rooms_hero (
  id serial PRIMARY KEY,
  title text,
  subtitle text,
  image_url text
);

INSERT INTO rooms_hero (title, subtitle, image_url) VALUES
('Where you rest', 'Each room shaped by traditional Moroccan aesthetics and thoughtful simplicity.', 'https://drive.google.com/file/d/1oi3sjBOpNWzkoAlF19ykYZF7NbTyBrOm/view?usp=drive_link');

-- Table: amenities (4 rows)
DROP TABLE IF EXISTS amenities CASCADE;
CREATE TABLE amenities (
  id serial PRIMARY KEY,
  amenity_id text,
  title text,
  subtitle text,
  image_url text,
  "order" integer
);

INSERT INTO amenities (amenity_id, title, subtitle, image_url, "order") VALUES
('breakfast', 'Home-Made Breakfast', 'Each morning, a homemade breakfast is served in the courtyard of the main riad, made from scratch with organic, seasonal ingredients. You''ll find Moroccan breads, homemade jams and nut butters, local eggs, fresh fruit, yogurt, juice, mint tea, and coffee.', 'https://drive.google.com/file/d/1BhJBfujFSTw7fu6u3xsvqEDFVhBC8wlG/view?usp=drive_link', 1),
('textiles', 'Handmade Comforts', 'Every bed is dressed in lovingly hand-stitched bedding and soft towels woven by Moroccan artisans. 100% cotton, 100% wool – natural fibres only. Vintage rugs ground each room in warmth and history.', 'https://drive.google.com/file/d/1fTUwTw282P-1T3qBJqqQ4aoSIf8funld/view?usp=drive_link', 2),
('bathrooms', 'Ensuite Bathrooms', 'Each room features a private ensuite bathroom with traditional tadelakt walls and artisanal finishes. Hot water, good pressure, space to breathe.', 'https://drive.google.com/file/d/1OtXK39f__6AQL4ewWoCmFdouCuazHX5H/view?usp=drive_link', 3),
('toiletries', 'Botanical Toiletries', 'Our bathrooms are stocked with natural, botanical-based toiletries in refillable dispensers to reduce waste. Gentle on skin, gentle on the earth.', 'https://drive.google.com/file/d/1dHIbbR-ORUWTF0v7WQEc7oaqdDxemN1Z/view?usp=drive_link', 4);

-- Table: amenities_hero (1 rows)
DROP TABLE IF EXISTS amenities_hero CASCADE;
CREATE TABLE amenities_hero (
  id serial PRIMARY KEY,
  title text,
  subtitle text,
  image_url text
);

INSERT INTO amenities_hero (title, subtitle, image_url) VALUES
('The Little Things', 'High quality where it matters. What touches your skin, what you eat, how you''re cared for.', 'https://drive.google.com/file/d/1uS2_ERynycSOKYG2ndaoDo0W3hEKJO9e/view?usp=drive_link');

-- Table: philosophy (5 rows)
DROP TABLE IF EXISTS philosophy CASCADE;
CREATE TABLE philosophy (
  id serial PRIMARY KEY,
  section text,
  title text,
  subtitle text,
  body text,
  image_url text,
  "order" integer
);

INSERT INTO philosophy (section, title, subtitle, body, image_url, "order") VALUES
('hero', NULL, 'Before the systems and the scripts, before the branded amenities and the service standards  –  there was simply this: a door that opens. A meal prepared. A bed made ready. Someone paying attention.', NULL, 'https://drive.google.com/file/d/1lj-LzcLVddM7tJ_71FB_wPlLthhjO4yh/view?usp=drive_link', 1),
('intro', NULL, 'We do not perform hospitality. We practice it. The difference is simple: one is for the audience, the other is for the guest.', NULL, NULL, 2),
('imperfection', NULL, 'Care cannot be systematized or scaled. It happens because someone is present  –  actually present  –  and paying attention.', NULL, NULL, 3),
('wabi-sabi', NULL, NULL, NULL, NULL, 4),
('soul', 'The right guests recognize it immediately.', NULL, NULL, NULL, 5);

-- Table: disclaimer (4 rows)
DROP TABLE IF EXISTS disclaimer CASCADE;
CREATE TABLE disclaimer (
  id serial PRIMARY KEY,
  section text,
  title text,
  content text,
  "order" integer
);

INSERT INTO disclaimer (section, title, content, "order") VALUES
('intro', 'Before You Book', 'Riad di Siena is not a hotel. It is a house  –  a three-hundred-year-old house, not a new build styled to look ancient.', 1),
('real', NULL, 'What makes it real is also what makes it imperfect. Old houses carry their history in their walls. This is what gives a place soul. It is also what some guests mistake for flaws.', 2),
('filter', NULL, 'If you are looking for the polish of a modern boutique hotel, we are not it. If you understand the difference, you will feel at home here.', 3),
('closing', NULL, 'Our strengths lie in our outstanding hospitality and care. If this is not as important to you as the perfection of the walls, this house will not please you. She is not here to impress visitors. She is here to hold the souls who cross the threshold of her open-sky courtyard.', 4);

-- Table: faq (32 rows)
DROP TABLE IF EXISTS faq CASCADE;
CREATE TABLE faq (
  id serial PRIMARY KEY,
  section text,
  question text,
  answer text,
  "order" integer
);

INSERT INTO faq (section, question, answer, "order") VALUES
('About Riad di Siena', 'What is included?', 'Your room, breakfast each morning, Wi-Fi, air conditioning, and a peaceful place to return to.', 2),
('About Riad di Siena', 'What is the architecture like?', 'An 18th-century Medina house with thick walls that keep the heat out. Some rooms have interior windows ‚Äî the traditional way of staying cool.', 3),
('About Riad di Siena', 'Is this a boutique hotel?', 'No. This is a private house with three rooms. There is no reception desk, no room service, no concierge. Just a house, and someone paying attention.', 6),
('About Riad di Siena', 'Is there 24-hour reception?', 'No. We are a house, not a hotel. We will always respond to your needs, but there is no front desk.', 7),
('About Riad di Siena', 'What is The Douaria?', 'Our sister property, a modern annex across the alley with three additional rooms. Same care, different character.', 8),
('Booking & Payment', 'How do I book?', 'Direct through our website or via Booking.com and Airbnb. Direct bookings receive our best rate.', 9),
('Booking & Payment', 'What payment methods do you accept?', 'PayPal, bank transfer, and cash on arrival. Credit cards accepted through Booking.com and Airbnb.', 10),
('Booking & Payment', 'What is your cancellation policy?', 'See our Booking Conditions page for full details. We require notice for cancellations.', NULL),
('Booking & Payment', 'Do you require a deposit?', 'Yes. A deposit is required to confirm your booking. Details are provided at time of reservation.', NULL),
('Check-in & Check-out', 'What are check-in and check-out times?', 'Check-in from 14:00, check-out by 11:00. Early or late arrangements possible with advance notice.', NULL),
('Check-in & Check-out', 'Can you store luggage?', 'Yes, we can store luggage before check-in or after check-out.', NULL),
('Rooms & Facilities', 'Do rooms have private bathrooms?', 'Yes, all rooms have ensuite bathrooms.', NULL),
('Rooms & Facilities', 'Do rooms have air conditioning?', 'Yes, all rooms have air conditioning and heating.', NULL),
('Rooms & Facilities', 'Is there Wi-Fi?', 'Yes. Free Wi-Fi throughout the house.', NULL),
('Rooms & Facilities', 'Is there a safe in the rooms?', 'Yes, each room has a safe.', NULL),
('Rooms & Facilities', 'Is there a pool?', 'No. The house has a traditional courtyard, not a pool.', NULL),
('Rooms & Facilities', 'Is there a terrace?', 'Yes, a rooftop terrace with views over the Medina.', NULL),
('Rooms & Facilities', 'What voltage are the outlets?', '220V, European two-pin plugs. Bring an adapter if needed.', NULL),
('Rooms & Facilities', 'Is there laundry service?', 'Yes, with advance notice.', NULL),
('Meals & Services', 'Is breakfast included?', 'Yes, a homemade Moroccan breakfast is served each morning in the courtyard.', NULL),
('Meals & Services', 'Do you serve lunch or dinner?', 'No, only breakfast. We are happy to recommend restaurants nearby.', NULL),
('Meals & Services', 'Can you accommodate dietary restrictions?', 'Yes, with advance notice. Let us know when you book.', NULL),
('Meals & Services', 'Can you arrange restaurant reservations?', 'Yes, we can recommend and book restaurants for you.', NULL),
('House Rules & Atmosphere', 'Is this a party place?', 'No. We maintain quiet hours from 23:00 to 08:00. This is a place for rest.', NULL),
('House Rules & Atmosphere', 'Are children welcome?', 'Yes, though the house is best suited to guests who appreciate quiet.', NULL),
('House Rules & Atmosphere', 'Are pets allowed?', 'No. We do not accept pets.', NULL),
('House Rules & Atmosphere', 'Is smoking allowed?', 'Smoking is permitted on the terrace only, not inside the house.', NULL),
('Location', 'Where is the riad located?', 'In the K''sour quarter of the Medina ‚Äî the historic neighborhood where the Sultan''s Viziers once built their residences. Two minutes walk to the Koutoubia Mosque and Place Jemaa el Fna, with direct access to the souks.', NULL),
('Location', 'How do I get there?', 'Vehicles cannot enter the Medina. Ask your driver to drop you at Caf√© Medina Rouge near Parking Bennani ‚Äî from there it is a two-minute walk. We send detailed directions before your arrival, and can meet you at the caf√© if you prefer.', NULL),
('Location', 'Can I get a taxi nearby?', 'Yes. Taxis are available on Boulevard Mohamed V at any hour, a short walk from the house. We can also arrange airport transfers on request.', NULL),
('Location', 'Is there parking?', 'The nearest parking is Parking Bennani, a two-minute walk from the house. We can provide directions.', NULL),
('Location', 'How far is the airport?', 'Marrakech Menara Airport is approximately 20 minutes by taxi. We can arrange transfers.', NULL);

-- Table: house_rules (6 rows)
DROP TABLE IF EXISTS house_rules CASCADE;
CREATE TABLE house_rules (
  id serial PRIMARY KEY,
  title text,
  content text,
  "order" integer
);

INSERT INTO house_rules (title, content, "order") VALUES
('Quiet Hours', 'Please keep sound levels low between 11 PM and 8 AM, to preserve the stillness of the house.', 1),
('Visitors', 'In line with Moroccan law, outside guests are not permitted in the riad after 6 PM.', 2),
('Lighting & Air Conditioning', 'When returning late at night, kindly switch off common area lights. Please also turn off the air conditioner when leaving your room.', 3),
('Shoes', 'We ask that you remove outdoor shoes when entering the house. Slippers are provided.', 4),
('Smoking', 'Smoking is permitted only on the rooftop terrace, never inside the house.', 5),
('Rooftop', 'The rooftop terrace closes at 10 PM to respect our neighbors.', 6);

-- Table: privacy_policy (5 rows)
DROP TABLE IF EXISTS privacy_policy CASCADE;
CREATE TABLE privacy_policy (
  id serial PRIMARY KEY,
  title text,
  content text,
  "order" integer
);

INSERT INTO privacy_policy (title, content, "order") VALUES
('Intro', 'Your privacy matters to us. This policy explains how Riad di Siena collects, uses, and protects your personal information.', 1),
('Information We Collect', 'When you make a booking inquiry or reservation, we collect: your name, email address, phone number, arrival and departure dates, and any special requests you share with us.', 2),
('How We Use Your Information', 'We use your information solely to process your booking, communicate with you about your stay, and fulfill legal requirements (such as passport registration required by Moroccan law).', 3),
('Data Protection', 'Your personal information is stored securely and never shared with third parties for marketing purposes.', 4),
('Your Rights', 'You may request access to, correction of, or deletion of your personal data at any time by contacting us.', 5);

-- Table: booking_conditions (9 rows)
DROP TABLE IF EXISTS booking_conditions CASCADE;
CREATE TABLE booking_conditions (
  id serial PRIMARY KEY,
  section text,
  title text,
  content text,
  "order" integer
);

INSERT INTO booking_conditions (section, title, content, "order") VALUES
('By booking, you acknowledge', NULL, 'You have read our FAQ', 1),
('By booking, you acknowledge', NULL, 'You have read our House Rules', 2),
('By booking, you acknowledge', NULL, 'You have read our Disclaimer', 3),
('Cancellation Policy', '14+ days before arrival', 'Full refund', 4),
('Cancellation Policy', '7-13 days before arrival', '50% refund', 5),
('Cancellation Policy', 'Less than 7 days', 'No refund', 6),
('Payment', 'Deposit', '100% deposit required to confirm booking', 7),
('Payment', NULL, NULL, 8),
('Payment', 'Methods', 'Bank transfer, Paypal', 9);

-- Table: terms (5 rows)
DROP TABLE IF EXISTS terms CASCADE;
CREATE TABLE terms (
  id serial PRIMARY KEY,
  title text,
  content text,
  "order" integer
);

INSERT INTO terms (title, content, "order") VALUES
('Intro', 'By using this website and making a booking at Riad di Siena, you agree to the following terms.', 1),
('Booking Agreement', 'A booking is confirmed once we have received your deposit and sent you a confirmation email. By booking, you acknowledge that you have read and accepted our House Rules, FAQ, and Disclaimer.', 2),
('Guest Responsibilities', 'Guests are expected to treat the property with care and respect. Any damage caused during your stay may result in charges for repair or replacement.', 3),
('Liability', 'Riad di Siena is not liable for loss or damage to personal belongings during your stay. We recommend travel insurance.', 4),
('Governing Law', 'These terms are governed by the laws of Morocco.', 5);

-- Table: testimonials (3 rows)
DROP TABLE IF EXISTS testimonials CASCADE;
CREATE TABLE testimonials (
  id serial PRIMARY KEY,
  testimonial_id integer,
  guest_name text,
  quote text,
  source text,
  date text,
  featured boolean,
  "order" integer
);

INSERT INTO testimonials (testimonial_id, guest_name, quote, source, date, featured, "order") VALUES
(1, 'Belen', 'Todo❤️!! es una preciosidad de Riad. Habitación amplia, muy bien decorada y limpísima. El baño era como un hamam, espectacular. Los desayunos variados y muy ricos… y la atención por parte de las dueñas impecable.', 'Booking.com', '2025-12-05', TRUE, 1),
(2, 'Aleksey', 'Undoubtedly the best stay we had during our Moroccan trip. Amazing hospitality, great Moroccan breakfasts, sunny rooftop, good wifi - what else to ask! 3 minutes from Jemaa el-Fnaa, but tucked away in the quiet of narrow streets.', 'Booking.com', '2025-12-07', TRUE, 2),
(3, 'Fay', 'One of the best airbnbs I have ever stayed at. Instructions were super clear. The room was beautiful and very clean. Breakfast was amazing every day. Friendly staff and comfortable rooms.', 'Airbnb', '2025-11-29', TRUE, 3);

-- Table: bookings (8 rows)
DROP TABLE IF EXISTS bookings CASCADE;
CREATE TABLE bookings (
  id serial PRIMARY KEY,
  booking_id text,
  timestamp text,
  name text,
  email text,
  phone text,
  check_in text,
  check_out text,
  guests text,
  room_preference text,
  message text,
  status text,
  booking_data text
);

INSERT INTO bookings (booking_id, timestamp, name, email, phone, check_in, check_out, guests, room_preference, message, status) VALUES
('RDS-1765938351423', '2025-12-17T02:25:51.423Z', 'Lucio Finale', 'lucio.finale@gmail.com', 6462558713, NULL, NULL, NULL, NULL, 'Hello,
I hope you are well. I am interested in staying at your riad from 28 or 29 December until 2 or 3 January and would love to know if you have any rooms available during this period.
Best,
LF', 'New'),
('RDS-1765990900018', '2025-12-17T17:01:40.018Z', NULL, 'happy@indigoandlavender.love', 212618070450, NULL, NULL, 2, NULL, NULL, 'New'),
('RDS-1766169756785', '2025-12-19T18:42:36.785Z', 'Madeline', 'Bruno', 'madelinesbruno@gmail.com', '#ERROR!', NULL, NULL, NULL, NULL, 'PENDING'),
('RDS-1767180380993', '2025-12-31T11:26:20.993Z', 'Alfonso', 'Della Corte', 'dellacortephoto@gmail.com', 3662871613, NULL, NULL, NULL, NULL, 'PENDING'),
('RDS-1769722102765', '2026-01-29T21:28:22.765Z', 'Fiona', 'Carr', 'fiona.carr@hotmail.co.uk', 7950485163, NULL, NULL, NULL, NULL, 'PENDING'),
('RDS-1770048422539', '2026-02-02T16:07:02.539Z', 'mBBFlbznUMSveHiG', 'xBvDvaDfmdTiQzpqfEOPxZeE', 'ig.ax.av.od.a.48@gmail.com', 'NDlfEoNLsuKDEzezcVbPp', NULL, NULL, NULL, NULL, 'PENDING'),
('RDS-1770139671010', '2026-02-03T17:27:51.010Z', 'Carla', 'Gonzalez', 'carla_paola1st@hotmail.com', 3464977408, '2026-05-27 00:00:00', '2026-05-29 00:00:00', 2, NULL, 'PENDING'),
('RDS-1770142404956', '2026-02-03T18:13:24.956Z', 'Carla', 'Gonzalez', 'carla_paola1st@hotmail.com', 3464977408, NULL, NULL, NULL, NULL, 'PENDING');

-- Table: directions_caption_ar (9 rows)
DROP TABLE IF EXISTS directions_caption_ar CASCADE;
CREATE TABLE directions_caption_ar (
  id serial PRIMARY KEY,
  step_number integer,
  caption_ar text
);

INSERT INTO directions_caption_ar (step_number, caption_ar) VALUES
(1, 'سيأخذك سائق التاكسي إلى مقهى المدينة الحمراء في المدينة القديمة... على بعد دقيقتين سيراً من الرياض.'),
(2, 'امشِ في الشارع المجاور لمقهى المدينة الحمراء (شارع الكتبية)... فندق جاردان دو لا كتبية على يسارك.'),
(3, 'مباشرة بعد الفندق... انعطف إلى "زقاق النخيل" المعروف بمحلات التوابل والفواكه المجففة.'),
(4, 'راقب على يسارك محل فساتين. عندما تراه، ادخل من القوس الموجود هناك.'),
(5, 'أنت الآن في درب فحل زفريتي. أولاً ستمر بمحل تحف. بعد ذلك، اعبر القوس واستمر حتى نهاية الشارع.'),
(6, 'في نهاية الشارع، انعطف يميناً.'),
(7, 'هذا هو الزقاق الذي يقع فيه الرياض. البيت الرئيسي (رقم 37) هو أول باب على اليسار.'),
(8, 'ستلاحظ الرقم 37 على الحائط الأبيض فوق الباب الخشبي. يُقدم الفطور في الفناء من الساعة 8:30 إلى 10:30 صباحاً.'),
(1, 'للدويرية (رقم 35)، امشِ خطوات قليلة عبر الزقاق من البيت الرئيسي.');

-- Table: douaria_rooms (3 rows)
DROP TABLE IF EXISTS douaria_rooms CASCADE;
CREATE TABLE douaria_rooms (
  id serial PRIMARY KEY,
  room_id text,
  name text,
  description text,
  price_eur numeric,
  features text,
  image_url text,
  ical_url text,
  "order" integer,
  bookable text
);

INSERT INTO douaria_rooms (room_id, name, description, price_eur, features, image_url, ical_url, "order", bookable) VALUES
('love', 'Love', 'A serene retreat with soft natural light and handcrafted details. The perfect space for quiet mornings and restful nights.', 95.0, '25m¬≤,Courtyard view,King Bed,Air conditioning,Private bathroom,Breakfast included,Linens & towels,Shower gel & shampoo', 'https://drive.google.com/file/d/1qnJiu8D4DCpuu04HNyXgVZ0MX6mgo2Cr/view?usp=drive_link', 'https://ical.booking.com/v1/export/t/2c60f0b4-37f2-41f0-bd15-f1ee857fed3b.ics', 1, 'Yes'),
('joy', 'Joy', 'Bright and spacious with traditional tadelakt walls and contemporary comforts. Wake to the sounds of the medina coming alive.', 75.0, '25m¬≤,Queen Bed,Air conditioning,Private bathroom,Breakfast included,Linens & towels,Shower gel & shampoo', 'https://drive.google.com/file/d/1520n9un90C0ebxYQVH5mHwrYhlDkkabY/view?usp=drive_link', 'https://ical.booking.com/v1/export/t/dd48fbe6-ef19-4bda-a30e-27dad241a76d.ics', 2, 'Yes'),
('bliss', 'Bliss', 'Our largest suite with private terrace access. Modern luxury meets Moroccan craftsmanship in every detail.', 85.0, '25m¬≤,Queen Bed,Air conditioning,Private bathroom,Breakfast included,Linens & towels,Shower gel & shampoo', 'https://drive.google.com/file/d/1xfePklAu_mcSjnyU57z4kbzFsLijX5iS/view?usp=drive_link', 'https://ical.booking.com/v1/export/t/ae599ba0-54dd-4b27-bb38-6ecf83bd9582.ics', 3, 'Yes');

-- Table: kasbah_experience (1 rows)
DROP TABLE IF EXISTS kasbah_experience CASCADE;
CREATE TABLE kasbah_experience (
  id serial PRIMARY KEY,
  package_id text,
  name text,
  description text,
  price_eur numeric,
  extra_person_eur numeric,
  duration numeric,
  includes text,
  min_guests integer,
  "order" integer
);

INSERT INTO kasbah_experience (package_id, name, description, price_eur, extra_person_eur, duration, includes, min_guests, "order") VALUES
('kasbah-2night', 'Time travel to a 500-year old Kasbah', 'Complete kasbah experience - all meals included.', 120.0, 60.0, 1.0, 'One night accommodation,Air conditioning,Shower gel & shampoo,Wi-Fi,All meals (breakfast lunch dinner),Guided palm grove walk', 2, 1);

-- Table: douaria_hero (1 rows)
DROP TABLE IF EXISTS douaria_hero CASCADE;
CREATE TABLE douaria_hero (
  id serial PRIMARY KEY,
  title text,
  subtitle text,
  location text,
  image_url text
);

INSERT INTO douaria_hero (title, subtitle, location, image_url) VALUES
('The Douaria', 'Contemporary soul. Ancient bones.', 'Across the alley', 'https://drive.google.com/file/d/1qnJiu8D4DCpuu04HNyXgVZ0MX6mgo2Cr/view?usp=drive_link');

-- Table: douaria_content (3 rows)
DROP TABLE IF EXISTS douaria_content CASCADE;
CREATE TABLE douaria_content (
  id serial PRIMARY KEY,
  paragraph integer,
  content text,
  "order" integer
);

INSERT INTO douaria_content (paragraph, content, "order") VALUES
(1, 'In traditional Moroccan architecture, a douaria is a secondary dwelling, an annex built to house extended family, guests, or the next generation. It shares the same derb, the same neighborhood rhythms, but offers its own entrance, its own quiet.', 1),
(2, 'Our Douaria sits directly across the alley from the main riad. Built in the 1920s as an extension of the original house, it fell into disrepair before we restored it with contemporary sensibilities: clean lines, abundant natural light, modern bathrooms, while preserving the handcrafted tadelakt walls and zellige tilework that anchor it to place.', 2),
(3, 'Guests of The Douaria enjoy full access to the main house: breakfast in the courtyard, afternoon tea on the rooftop terrace, the garden fountain''s quiet music. But when you want solitude, your own front door awaits just steps away.', 3);

-- Table: kasbah_hero (1 rows)
DROP TABLE IF EXISTS kasbah_hero CASCADE;
CREATE TABLE kasbah_hero (
  id serial PRIMARY KEY,
  title text,
  subtitle text,
  location text,
  image_url text
);

INSERT INTO kasbah_hero (title, subtitle, location, image_url) VALUES
('The Kasbah', 'Five hundred years of silence.', 'Draa Valley', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766284719/kasbah_hero-2_fshyjr.jpg');

-- Table: kasbah_content (5 rows)
DROP TABLE IF EXISTS kasbah_content CASCADE;
CREATE TABLE kasbah_content (
  id serial PRIMARY KEY,
  paragraph integer,
  content text,
  "order" integer
);

INSERT INTO kasbah_content (paragraph, content, "order") VALUES
(1, 'A kasbah is a fortified home, a statement of permanence in a landscape that shifts with the wind. This one has stood at the edge of the Draa Valley for five hundred years, where the Atlas Mountains surrender to the Sahara.', 1),
(2, 'Built by a Berber chieftain in the early 1500s, the kasbah served as stronghold and symbol. Its pise walls, rammed earth mixed with straw and stone, were designed to withstand siege and summer alike. The thick construction keeps interiors cool when temperatures outside climb past 45oC.', 2),
(3, 'The property passed through generations of the same family until the 1970s, when rural exodus left many kasbahs abandoned. This one was saved.', 3),
(4, 'Nine rooms now occupy spaces that once housed grain stores, livestock, and extended family. From the rooftop, you can trace the green ribbon of the Draa, Morocco''s longest river, as it threads through palm groves before disappearing into the desert.', 4),
(5, 'The Kasbah is not a hotel. It is a place to arrive, to settle, to let the silence work on you.', 5);

-- Table: desert_hero (1 rows)
DROP TABLE IF EXISTS desert_hero CASCADE;
CREATE TABLE desert_hero (
  id serial PRIMARY KEY,
  title text,
  subtitle text,
  location text,
  image_url text
);

INSERT INTO desert_hero (title, subtitle, location, image_url) VALUES
('The Desert Camp', 'Far from the madding crowds. Close to the stars.', 'The Sahara', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1767072550/Bernadeta_Kupiec_-_Morocco-605_zvblfi.jpg');

-- Table: desert_content (5 rows)
DROP TABLE IF EXISTS desert_content CASCADE;
CREATE TABLE desert_content (
  id serial PRIMARY KEY,
  paragraph integer,
  content text,
  "order" integer
);

INSERT INTO desert_content (paragraph, content, "order") VALUES
(1, 'Deep in the Sahara, far from the crowds that gather at the desert''s edge, there is a camp run by people who have guided guests through this landscape for generations. Their grandfathers led camel caravans on the salt routes. They now lead guests to an understanding of the desert''s particular magic.', 1),
(2, 'The camp sits where the silence is complete. No generators, no artificial lights to dim the stars. You arrive by camel at sunset, that golden hour when the dunes seem to glow from within.', 2),
(3, 'Dinner is a feast, tagine cooked over fire, bread baked in sand, mint tea poured from height. After the meal, drums appear. The music has been played in these dunes for centuries.', 3),
(4, 'Then: sleep. In tents handwoven by nomadic families. On beds that are genuinely comfortable. Under skies so clear you''ll see the Milky Way''s dust lanes with naked eyes.', 4),
(5, 'Dawn comes early in the desert. The sunrise is not to be missed. Breakfast, then the return journey. You''ll come back changed in ways that take time to understand.', 5);

-- Table: desert_tents (2 rows)
DROP TABLE IF EXISTS desert_tents CASCADE;
CREATE TABLE desert_tents (
  id serial PRIMARY KEY,
  tent_id text,
  level text,
  name text,
  description text,
  price_eur numeric,
  extra_person_eur numeric,
  features text,
  "order" integer
);

INSERT INTO desert_tents (tent_id, level, name, description, price_eur, extra_person_eur, features, "order") VALUES
('boutique', 'Level One', 'Essentials', 'Traditional Berber tents with real beds, quality linens, and private ensuite bathroom. Authentic desert camping with essential comforts. Perfect for travelers who want the genuine experience.', 200.0, 100.0, 'Traditional handwoven tent,Comfortable beds with quality bedding,Private ensuite bathroom,Air conditioning,Linens & towels,Shower gel & shampoo,Dinner and breakfast included,Camel trek', 1),
('signature', 'Level Two', 'Boutique', 'Elevated desert luxury with private en-suite, premium furnishings, and exclusive tent positioning for maximum privacy and the best dune views. For those who want magic without compromise.', 250.0, 150.0, 'Premium,Larger traditional handwoven tent,Comfortable beds with quality bedding,Private ensuite bathroom,Air conditioning,Linens & towels,Shower gel & shampoo,Dinner and breakfast included,Camel trek', 2);

-- Table: farm_hero (1 rows)
DROP TABLE IF EXISTS farm_hero CASCADE;
CREATE TABLE farm_hero (
  id serial PRIMARY KEY,
  title text,
  subtitle text,
  location text,
  image_url text
);

INSERT INTO farm_hero (title, subtitle, location, image_url) VALUES
('The Farm', 'Where our table begins', 'Tameslouht, Morocco', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766283531/farm_hero_1_azicbs.jpg');

-- Table: farm_content (6 rows)
DROP TABLE IF EXISTS farm_content CASCADE;
CREATE TABLE farm_content (
  id serial PRIMARY KEY,
  paragraph integer,
  content text,
  "order" integer
);

INSERT INTO farm_content (paragraph, content, "order") VALUES
(1, 'Forty minutes south of Marrakech, past the bustle of the Amizmiz road, the land opens up near Tameslouht. The air is cooler here, the light softer. Olive groves line the fields, irrigated by channels that have run since the Almoravid dynasty.', 1),
(2, 'Our farm occupies a small plot here ‚Äî olive groves planted by someone''s great-grandfather, vegetable gardens we tend ourselves, herbs that perfume the morning air. It is not a large operation. It was never meant to be. It exists to supply our table at Riad di Siena with produce we can trust.', 2),
(3, 'The tomatoes that arrive in August, so ripe they barely survive the journey. The mint that goes into every pot of tea. The olive oil pressed each November from fruit we picked ourselves. The eggs from chickens who have never seen a cage.', 3),
(4, 'We don''t use pesticides. We don''t force growth. We plant according to season, harvest when ready, and accept that some years the yield is generous and some years it is not. This is how food was grown here for a thousand years before industrial agriculture arrived ‚Äî and it''s how we intend to keep growing it.', 4),
(5, 'The Farm is not open to visitors. But when you sit down to breakfast at Riad di Siena, know that much of what you''re eating traveled only forty minutes to reach your plate, grown by people we know, on land we tend.', 5),
(6, 'That''s the point. Not everything needs to scale. Some things are better kept small.', 6);

-- Table: farm_produce (6 rows)
DROP TABLE IF EXISTS farm_produce CASCADE;
CREATE TABLE farm_produce (
  id serial PRIMARY KEY,
  produce_id text,
  name text,
  description text,
  season text,
  "order" integer
);

INSERT INTO farm_produce (produce_id, name, description, season, "order") VALUES
('olive-oil', 'Olive Oil', 'Pressed each November', 'November', 1),
('vegetables', 'Seasonal Vegetables', 'Tomatoes, courgettes, peppers', 'Summer', 2),
('herbs', 'Fresh Herbs', 'Mint, coriander, parsley', 'Year-round', 3),
('citrus', 'Citrus', 'Oranges, lemons, limes', 'Winter', 4),
('eggs', 'Eggs', 'Free-range, always', 'Year-round', 5),
('honey', 'Honey', 'From our own hives', 'Spring', 6);

-- Table: journeys_page (1 rows)
DROP TABLE IF EXISTS journeys_page CASCADE;
CREATE TABLE journeys_page (
  id serial PRIMARY KEY,
  title text,
  subtitle text,
  body text,
  button_text text,
  button_link text
);

INSERT INTO journeys_page (title, subtitle, body, button_text, button_link) VALUES
('Beyond the Walls', 'Morocco is more than its cities.', 'When you''re ready to venture beyond Marrakech, we can help. Through our sister company Slow Morocco, we design private journeys that take you deeper – into the Atlas Mountains, across the Sahara, along the Atlantic coast. The same philosophy of authentic experience, extended across the country.', 'EXPLORE SLOW MOROCCO', 'https://slowmorocco.com');

-- Table: directions (9 rows)
DROP TABLE IF EXISTS directions CASCADE;
CREATE TABLE directions (
  id serial PRIMARY KEY,
  step_number integer,
  building text,
  caption text,
  caption_fr text,
  caption_es text,
  caption_it text,
  caption_pt text,
  caption_ar text,
  image_url text
);

INSERT INTO directions (step_number, building, caption, caption_fr, caption_es, caption_it, caption_pt, caption_ar, image_url) VALUES
(1, 'main', 'Your taxi will take you to Cafe Medina Rouge in the Medina... only about a 2-minute walk away from the house.', 'Votre taxi vous déposera au Café Medina Rouge dans la Médina... à seulement 2 minutes à pied de la maison.', 'Su taxi le llevará al Café Medina Rouge en la Medina... a solo 2 minutos a pie de la casa.', 'Il taxi vi porterà al Café Medina Rouge nella Medina... a soli 2 minuti a piedi dalla casa.', 'O seu táxi vai deixá-lo no Café Medina Rouge na Medina... a apenas 2 minutos a pé da casa.', 'سيأخذك سائق التاكسي إلى مقهى المدينة الحمراء في المدينة القديمة... على بعد دقيقتين سيراً من الرياض.', 'https://drive.google.com/file/d/1KJvYY_KcMP9O1P--PhaTANry0gZ0lFMJ/view?usp=sharing'),
(2, 'main', 'Walk on the street next to Cafe Medina Rouge (Koutoubia Street)... Hotel Jardins de la Koutoubia on your left.', 'Marchez dans la rue à côté du Café Medina Rouge (Rue Koutoubia)... l''Hôtel Jardins de la Koutoubia sera sur votre gauche.', 'Camine por la calle junto al Café Medina Rouge (Calle Koutoubia)... el Hotel Jardins de la Koutoubia estará a su izquierda.', 'Camminate lungo la strada accanto al Café Medina Rouge (Via Koutoubia)... l''Hotel Jardins de la Koutoubia sarà sulla vostra sinistra.', 'Caminhe pela rua ao lado do Café Medina Rouge (Rua Koutoubia)... o Hotel Jardins de la Koutoubia estará à sua esquerda.', 'امشِ في الشارع المجاور لمقهى المدينة الحمراء (شارع الكتبية)... فندق جاردان دو لا كتبية على يسارك.', 'https://drive.google.com/file/d/1f0BqHruRGZWZIjhqb6Otb074NC_cK1BM/view?usp=sharing'),
(3, 'main', 'Immediately after the hotel... curve onto "Allée des Dattiers," known for its spice and dried fruit shops.', 'Juste après l''hôtel... tournez dans l''"Allée des Dattiers", connue pour ses boutiques d''épices et de fruits secs.', 'Inmediatamente después del hotel... gire hacia la "Allée des Dattiers", conocida por sus tiendas de especias y frutos secos.', 'Subito dopo l''hotel... svoltate nell''"Allée des Dattiers", nota per i suoi negozi di spezie e frutta secca.', 'Logo após o hotel... vire para a "Allée des Dattiers", conhecida pelas suas lojas de especiarias e frutas secas.', 'مباشرة بعد الفندق... انعطف إلى "زقاق النخيل" المعروف بمحلات التوابل والفواكه المجففة.', 'https://drive.google.com/file/d/1T8n_Qf3Xpj3HYdJNc63NydkL8e2Uq9S3/view?usp=sharing'),
(4, 'main', 'Keep an eye on your left for a dress shop. Once you see it, go through the archway located there.', 'Cherchez une boutique de robes sur votre gauche. Une fois que vous la voyez, passez sous l''arche qui s''y trouve.', 'Busque una tienda de vestidos a su izquierda. Una vez que la vea, pase por el arco que está allí.', 'Cercate un negozio di abiti sulla vostra sinistra. Una volta visto, passate attraverso l''arco che si trova lì.', 'Procure uma loja de vestidos à sua esquerda. Quando a vir, passe pelo arco que está ali.', 'راقب على يسارك محل فساتين. عندما تراه، ادخل من القوس الموجود هناك.', 'https://drive.google.com/file/d/1gOe7gPlFArRmU5yDhPyUs3vbEggRSeBM/view?usp=sharing'),
(5, 'main', 'You are now on Derb Fhal Zefriti. First, you''ll see an antique shop. Next, pass through the arch and continue to the end.', 'Vous êtes maintenant sur Derb Fhal Zefriti. D''abord, vous verrez un antiquaire. Ensuite, passez sous l''arche et continuez jusqu''au bout.', 'Ahora está en Derb Fhal Zefriti. Primero verá una tienda de antigüedades. Luego, pase por el arco y continúe hasta el final.', 'Ora siete su Derb Fhal Zefriti. Prima vedrete un negozio di antiquariato. Poi, passate sotto l''arco e continuate fino in fondo.', 'Agora está em Derb Fhal Zefriti. Primeiro verá uma loja de antiguidades. Depois, passe pelo arco e continue até ao fim.', 'أنت الآن في درب فحل زفريتي. أولاً ستمر بمحل تحف. بعد ذلك، اعبر القوس واستمر حتى نهاية الشارع.', 'https://drive.google.com/file/d/1oL2aoT6j4kSj2wWG9_6RadjTg9sOzZN9/view?usp=sharing'),
(6, 'main', 'At the end of the street, turn right.', 'Au bout de la rue, tournez à droite.', 'Al final de la calle, gire a la derecha.', 'Alla fine della strada, girate a destra.', 'No final da rua, vire à direita.', 'في نهاية الشارع، انعطف يميناً.', 'https://drive.google.com/file/d/10yu8ciehRECtniMFy5R8HUV2zMWnEap0/view?usp=drive_link'),
(7, 'main', 'This is the alley where the house is located. The main house (no. 37) is the first door on the left.', 'C''est la ruelle où se trouve la maison. La maison principale (n° 37) est la première porte sur la gauche.', 'Este es el callejón donde está la casa. La casa principal (n° 37) es la primera puerta a la izquierda.', 'Questo è il vicolo dove si trova la casa. La casa principale (n. 37) è la prima porta sulla sinistra.', 'Este é o beco onde fica a casa. A casa principal (n.º 37) é a primeira porta à esquerda.', 'هذا هو الزقاق الذي يقع فيه الرياض. البيت الرئيسي (رقم 37) هو أول باب على اليسار.', 'https://drive.google.com/file/d/1HfXAdXUFchk90mk3sUHzBHitCsTY14Ie/view?usp=drive_link'),
(8, 'main', 'You will notice the number 37 on the white wall above the wooden door. Breakfast is served in the courtyard from 8.30 to 10.30 a.m.', 'Vous verrez le numéro 37 sur le mur blanc au-dessus de la porte en bois. Le petit-déjeuner est servi dans la cour de 8h30 à 10h30.', 'Verá el número 37 en la pared blanca sobre la puerta de madera. El desayuno se sirve en el patio de 8:30 a 10:30.', 'Vedrete il numero 37 sul muro bianco sopra la porta di legno. La colazione è servita nel cortile dalle 8:30 alle 10:30.', 'Verá o número 37 na parede branca acima da porta de madeira. O pequeno-almoço é servido no pátio das 8h30 às 10h30.', 'ستلاحظ الرقم 37 على الحائط الأبيض فوق الباب الخشبي. يُقدم الفطور في الفناء من الساعة 8:30 إلى 10:30 صباحاً.', 'https://drive.google.com/file/d/1-XYG3sW6JMnmtanQF9xIb1Qhs2-gVJA3/view?usp=drive_link'),
(9, 'annex', 'For The Douaria (no. 35), walk a few steps across the alley from the main house.', 'Pour The Douaria (n° 35), traversez la ruelle à quelques pas de la maison principale.', 'Para The Douaria (n° 35), cruce el callejón a pocos pasos de la casa principal.', 'Per The Douaria (n. 35), attraversate il vicolo a pochi passi dalla casa principale.', 'Para The Douaria (n.º 35), atravesse o beco a poucos passos da casa principal.', 'للدويرية (رقم 35)، امشِ خطوات قليلة عبر الزقاق من البيت الرئيسي.', 'https://drive.google.com/file/d/1x2DQn0ppxnmYFGO1xCLnxEoPyImcR5dv/view?usp=sharing');

-- Table: rooms_gallery (7 rows)
DROP TABLE IF EXISTS rooms_gallery CASCADE;
CREATE TABLE rooms_gallery (
  id serial PRIMARY KEY,
  image_id text,
  image_url text,
  caption text,
  "order" integer
);

INSERT INTO rooms_gallery (image_id, image_url, caption, "order") VALUES
('rooms-1', 'https://drive.google.com/file/d/1ITmev89HCFlShqsvBLzl73sD3pph3HGE/view?usp=drive_link', 1, NULL),
('rooms-2', 'https://drive.google.com/file/d/1K6NctczCail1-99r1RHdCHSMMHnYqzge/view?usp=drive_link', 2, NULL),
('rooms-3', 'https://drive.google.com/file/d/1ur7vcSCfGIhHTm07VLk6CDk3R1AOnsx5/view?usp=drive_link', 3, NULL),
('rooms-4', 'https://drive.google.com/file/d/1Mja-5_alQ64nCj0drTDA5CCjd_wXCD5p/view?usp=drive_link', 4, NULL),
('rooms-5', 'https://drive.google.com/file/d/130AP0EkWGjhHFP902K7ty2ydKkLq3G9p/view?usp=drive_link', 5, NULL),
('rooms-6', 'https://drive.google.com/file/d/1ptCVOx7JdkAOo5YojNAivky-099DYB-o/view?usp=drive_link', 6, NULL),
('rooms-7', 'https://drive.google.com/file/d/1fyAgWFFMjScDxmLzrGt7kgdDHJgAbkzc/view?usp=drive_link', 7, NULL);

-- Table: douaria_gallery (6 rows)
DROP TABLE IF EXISTS douaria_gallery CASCADE;
CREATE TABLE douaria_gallery (
  id serial PRIMARY KEY,
  image_id text,
  image_url text,
  caption text,
  "order" integer
);

INSERT INTO douaria_gallery (image_id, image_url, caption, "order") VALUES
('douaria-1', 'https://drive.google.com/file/d/1qnJiu8D4DCpuu04HNyXgVZ0MX6mgo2Cr/view?usp=drive_link', NULL, NULL),
('douaria-2', 'https://drive.google.com/file/d/1xfePklAu_mcSjnyU57z4kbzFsLijX5iS/view?usp=drive_link', NULL, NULL),
('douaria-3', 'https://drive.google.com/file/d/1520n9un90C0ebxYQVH5mHwrYhlDkkabY/view?usp=drive_link', NULL, NULL),
('douaria-4', 'https://drive.google.com/file/d/1zTuWyxR_jpF1PJyxY4Dyv2JJctOd5PHN/view?usp=drive_link', NULL, NULL),
('douaria-5', 'https://drive.google.com/file/d/11tPNbowshFGTTdP_ValE8eexZDX8iYJb/view?usp=drive_link', NULL, NULL),
('douaria-6', 'https://drive.google.com/file/d/10Tteget6CvCKn2btfWqvPodUgqtDyyGJ/view?usp=drive_link', NULL, NULL);

-- Table: kasbah_gallery (5 rows)
DROP TABLE IF EXISTS kasbah_gallery CASCADE;
CREATE TABLE kasbah_gallery (
  id serial PRIMARY KEY,
  image_id text,
  image_url text,
  caption text,
  "order" integer
);

INSERT INTO kasbah_gallery (image_id, image_url, caption, "order") VALUES
('kasbah-1', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766284154/kasbah_gallery_1_d515yv.jpg', NULL, NULL),
('kasbah-2', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766284169/kasbah_gallery_2_d0mwsn.jpg', NULL, NULL),
('kasbah-3', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766284174/kasbah_gallery_4_bpgsqn.jpg', NULL, NULL),
('kasbah-4', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766284172/kasbah_gallery_3_wduoc0.jpg', NULL, NULL),
('kasbah-5', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766284174/kasbah_5_i6vsdl.jpg', NULL, NULL);

-- Table: desert_gallery (6 rows)
DROP TABLE IF EXISTS desert_gallery CASCADE;
CREATE TABLE desert_gallery (
  id serial PRIMARY KEY,
  image_id text,
  image_url text,
  caption text,
  "order" integer
);

INSERT INTO desert_gallery (image_id, image_url, caption, "order") VALUES
('desert-1', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766864887/merzouga-1_qvwjx1.jpg', NULL, NULL),
('desert-2', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1767072776/Bernadeta_Kupiec_-_Morocco-653_zdyppe.jpg', NULL, NULL),
('desert-3', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766283332/desert_gallery_1_jnrudg.jpg', NULL, NULL),
('desert-4', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766283333/desert_gallery_4_qngkfi.jpg', NULL, NULL),
('desert-5', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766283334/desert_gallery_6_gxlmyt.jpg', NULL, NULL),
('desert-6', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766283334/desert_gallery_5_aq8xyu.jpg', NULL, NULL);

-- Table: beyond_the_walls (4 rows)
DROP TABLE IF EXISTS beyond_the_walls CASCADE;
CREATE TABLE beyond_the_walls (
  id serial PRIMARY KEY,
  property_id text,
  name text,
  tagline text,
  description text,
  image_url text,
  link text,
  "order" integer
);

INSERT INTO beyond_the_walls (property_id, name, tagline, description, image_url, link, "order") VALUES
('douaria', 'The Douaria', 'Across the alley. Contemporary eye, ancient bones.', 'Three rooms of contemporary calm in a 300-year-old house. Light-filled spaces where the medina fades to silence.', 'https://drive.google.com/file/d/10Tteget6CvCKn2btfWqvPodUgqtDyyGJ/view?usp=drive_link', '/the-douaria', 1),
('kasbah', 'The Kasbah', 'Draa Valley. Five hundred years of silence.', 'An ancient fortress where time moves differently. Stars you''ve never seen. Silence you''ve forgotten exists.', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1767068857/Bernadeta_Kupiec_-_Morocco-542_uuhwli.jpg', '/the-kasbah', 2),
('desert', 'The Desert Camp', 'Deep Sahara. Far from the madding crowds, close to the stars.', 'Sahara nights under canvas. The kind of quiet that changes how you breathe.', 'https://drive.google.com/file/d/1r2K_1onxWF7WOw7UcCcQIHGvch54p_bI/view?usp=drive_link', '/the-desert-camp', 3),
('farm', 'The Farm', 'From farm to table. Soul food.', 'Organic produce from the foothills of the Atlas. The eggs. The honey. The oranges still warm from the tree.', 'https://drive.google.com/file/d/1hMAhykqP3x9yjep5o10z-L5pAlImrT8b/view?usp=drive_link', '/the-farm', 4);

-- Table: beyond_the_walls_hero (1 rows)
DROP TABLE IF EXISTS beyond_the_walls_hero CASCADE;
CREATE TABLE beyond_the_walls_hero (
  id serial PRIMARY KEY,
  title text,
  subtitle text,
  intro text,
  image_url text
);

INSERT INTO beyond_the_walls_hero (title, subtitle, intro, image_url) VALUES
('Beyond the Walls', 'Where the sanctuary continues', 'These are places that share something with this house  –  a quality of quiet, a way of holding guests, a frequency that''s hard to name but easy to feel. If you''ve rested well here, you''ll rest well there.', 'https://res.cloudinary.com/drstfu5yr/image/upload/v1766618053/beyondthewalls-5_kbnvn2.jpg');

-- Table: directions_settings (10 rows)
DROP TABLE IF EXISTS directions_settings CASCADE;
CREATE TABLE directions_settings (
  id serial PRIMARY KEY,
  "key" text,
  en text,
  fr text,
  es text,
  it text,
  pt text,
  ar text
);

INSERT INTO directions_settings ("key", en, fr, es, it, pt, ar) VALUES
('page_title', 'Walking Directions', 'Itinéraire à Pied', 'Direcciones a Pie', 'Indicazioni a Piedi', 'Direções a Pé', 'اتجاهات المشي'),
('main_subtitle', 'To Riad di Siena (No. 37)', 'Vers Riad di Siena (N° 37)', 'A Riad di Siena (N° 37)', 'A Riad di Siena (N. 37)', 'Para Riad di Siena (N.º 37)', 'إلى رياض دي سيينا (رقم 37)'),
('annex_subtitle', 'To The Douaria (No. 35)', 'Vers The Douaria (N° 35)', 'A The Douaria (N° 35)', 'A The Douaria (N. 35)', 'Para The Douaria (N.º 35)', 'إلى الدويرية (رقم 35)'),
('main_button', 'MAIN HOUSE', 'MAISON PRINCIPALE', 'CASA PRINCIPAL', 'CASA PRINCIPALE', 'CASA PRINCIPAL', 'البيت الرئيسي'),
('annex_button', 'THE DOUARIA', 'THE DOUARIA', 'THE DOUARIA', 'THE DOUARIA', 'THE DOUARIA', 'الدويرية'),
('note_title', 'A gentle note:', 'Un petit conseil :', 'Un pequeño consejo:', 'Un piccolo consiglio:', 'Um pequeno conselho:', 'ملاحظة بسيطة:'),
('note_text', 'Google Maps will lead you to No. 43, which is a different riad. Trust these directions instead – they were written by someone who has walked this path many times. If you need help along the way, just send us a message and we''ll guide you home.', 'Google Maps vous mènera au n° 43, qui est un autre riad. Faites confiance à ces indications – elles ont été écrites par quelqu''un qui a parcouru ce chemin de nombreuses fois. Si vous avez besoin d''aide en chemin, envoyez-nous un message et nous vous guiderons.', 'Google Maps te llevará al n° 43, que es otro riad. Confía en estas direcciones – fueron escritas por alguien que ha recorrido este camino muchas veces. Si necesitas ayuda en el camino, envíanos un mensaje y te guiaremos.', 'Google Maps ti porterà al n. 43, che è un altro riad. Fidati di queste indicazioni – sono state scritte da qualcuno che ha percorso questo cammino molte volte. Se hai bisogno di aiuto lungo il percorso, inviaci un messaggio e ti guideremo.', 'O Google Maps irá levá-lo ao n.º 43, que é outro riad. Confie nestas direções – foram escritas por alguém que percorreu este caminho muitas vezes. Se precisar de ajuda pelo caminho, envie-nos uma mensagem e nós o guiaremos.', 'سيقودك خرائط جوجل إلى رقم 43، وهو رياض مختلف. ثق بهذه الاتجاهات – كتبها شخص سار في هذا الطريق مرات عديدة. إذا احتجت مساعدة في الطريق، أرسل لنا رسالة وسنرشدك.'),
('link_to_douaria', 'Looking for The Douaria (No. 35)? →', 'Vous cherchez The Douaria (N° 35) ? →', '¿Buscas The Douaria (N° 35)? →', 'Cerchi The Douaria (N. 35)? →', 'Procura The Douaria (N.º 35)? →', 'تبحث عن الدويرية (رقم 35)؟ ←'),
('link_to_riad', '← Looking for Riad di Siena (No. 37)?', '← Vous cherchez Riad di Siena (N° 37) ?', '← ¿Buscas Riad di Siena (N° 37)?', '← Cerchi Riad di Siena (N. 37)?', '← Procura Riad di Siena (N.º 37)?', '→ تبحث عن رياض دي سيينا (رقم 37)؟'),
('save_offline', 'PRINT FOR OFFLINE', 'IMPRIMER HORS LIGNE', 'IMPRIMIR SIN CONEXIÓN', 'STAMPA OFFLINE', 'IMPRIMIR OFFLINE', 'طباعة للاستخدام دون اتصال');

-- Table: chatbot_training (20 rows)
DROP TABLE IF EXISTS chatbot_training CASCADE;
CREATE TABLE chatbot_training (
  id serial PRIMARY KEY,
  category text,
  question text,
  answer text,
  answer_fr text,
  answer_es text,
  answer_it text,
  answer_pt text,
  answer_ar text,
  keywords text,
  "order" integer
);

INSERT INTO chatbot_training (category, question, answer, answer_fr, answer_es, answer_it, answer_pt, answer_ar, keywords, "order") VALUES
('system', 'What is your personality?', 'I am the voice of Riad di Siena - warm but boundaried. I speak like a knowledgeable friend not a salesperson. Queen of Cups meets Queen of Swords.', NULL, NULL, NULL, NULL, NULL, '0', NULL),
('greeting', 'Hello', 'Welcome to Riad di Siena. I''m here to help you discover our 300-year-old house in the heart of Marrakech. What would you like to know?', 'Bienvenue à Riad di Siena. Je suis là pour vous aider à découvrir notre maison de 300 ans au cœur de Marrakech. Que souhaitez-vous savoir ?', 'Bienvenido a Riad di Siena. Estoy aquí para ayudarte a descubrir nuestra casa de 300 años en el corazón de Marrakech. ¿Qué te gustaría saber?', 'Benvenuto a Riad di Siena. Sono qui per aiutarti a scoprire la nostra casa di 300 anni nel cuore di Marrakech. Cosa vorresti sapere?', 'Bem-vindo ao Riad di Siena. Estou aqui para ajudá-lo a descobrir a nossa casa de 300 anos no coração de Marraquexe. O que gostaria de saber?', 'مرحباً بك في رياض دي سيينا. أنا هنا لمساعدتك في اكتشاف منزلنا الذي يبلغ عمره 300 عام في قلب مراكش. ماذا تود أن تعرف؟', 'hello,hi,hey,bonjour,salaam,hola,ciao,olá,مرحبا', 1),
('fallback', 'I don''t understand', 'I''d be happy to help you with that. For specific inquiries about rooms, availability, or bookings, please reach out to us directly through our contact page. Is there anything else about Riad di Siena I can help you with?', 'Je serais ravi de vous aider. Pour des questions spécifiques sur les chambres, la disponibilité ou les réservations, veuillez nous contacter directement via notre page contact. Y a-t-il autre chose sur Riad di Siena que je puisse vous aider ?', 'Estaré encantado de ayudarte con eso. Para consultas específicas sobre habitaciones, disponibilidad o reservas, contáctanos directamente a través de nuestra página de contacto. ¿Hay algo más sobre Riad di Siena en lo que pueda ayudarte?', 'Sarò felice di aiutarti. Per richieste specifiche su camere, disponibilità o prenotazioni, contattaci direttamente tramite la nostra pagina contatti. C''è qualcos''altro su Riad di Siena in cui posso aiutarti?', 'Ficarei feliz em ajudá-lo com isso. Para perguntas específicas sobre quartos, disponibilidade ou reservas, entre em contato conosco diretamente através da nossa página de contato. Há mais alguma coisa sobre o Riad di Siena em que posso ajudar?', 'يسعدني مساعدتك في ذلك. للاستفسارات المحددة حول الغرف أو التوفر أو الحجوزات، يرجى التواصل معنا مباشرة عبر صفحة الاتصال. هل هناك شيء آخر عن رياض دي سيينا يمكنني مساعدتك فيه؟', NULL, 999),
('location', 'Where is Riad di Siena located?', 'We''re tucked away in the Kennaria neighborhood of the Marrakech medina, just 3 minutes walk from Jemaa el-Fnaa. Close to everything, but in a quiet alley where you can actually sleep.', 'Nous sommes nichés dans le quartier Kennaria de la médina de Marrakech, à seulement 3 minutes à pied de Jemaa el-Fnaa. Proche de tout, mais dans une ruelle tranquille où vous pouvez vraiment dormir.', 'Estamos escondidos en el barrio de Kennaria en la medina de Marrakech, a solo 3 minutos a pie de Jemaa el-Fnaa. Cerca de todo, pero en un callejón tranquilo donde realmente puedes dormir.', 'Siamo nascosti nel quartiere Kennaria della medina di Marrakech, a soli 3 minuti a piedi da Jemaa el-Fnaa. Vicino a tutto, ma in un vicolo tranquillo dove si può davvero dormire.', 'Estamos escondidos no bairro de Kennaria na medina de Marraquexe, a apenas 3 minutos a pé de Jemaa el-Fnaa. Perto de tudo, mas num beco tranquilo onde pode realmente dormir.', 'نحن موجودون في حي القناريا بالمدينة القديمة في مراكش، على بعد 3 دقائق سيراً من ساحة جامع الفنا. قريب من كل شيء، لكن في زقاق هادئ حيث يمكنك النوم بهدوء.', 'where,location,address,find,directions,medina,kennaria', 10),
('rooms', 'How many rooms do you have?', 'We have 3 rooms in the main riad - Hidden Gem, Trésor Caché, and Jewel Box. Plus 3 more in The Douaria, our modern annex across the alley. Each has its own character.', 'Nous avons 3 chambres dans le riad principal - Hidden Gem, Trésor Caché et Jewel Box. Plus 3 autres dans The Douaria, notre annexe moderne de l''autre côté de la ruelle. Chacune a son propre caractère.', 'Tenemos 3 habitaciones en el riad principal - Hidden Gem, Trésor Caché y Jewel Box. Más 3 en The Douaria, nuestro anexo moderno al otro lado del callejón. Cada una tiene su propio carácter.', 'Abbiamo 3 camere nel riad principale - Hidden Gem, Trésor Caché e Jewel Box. Più altre 3 in The Douaria, il nostro annesso moderno dall''altra parte del vicolo. Ognuna ha il suo carattere.', 'Temos 3 quartos no riad principal - Hidden Gem, Trésor Caché e Jewel Box. Mais 3 em The Douaria, o nosso anexo moderno do outro lado do beco. Cada um tem o seu próprio carácter.', 'لدينا 3 غرف في الرياض الرئيسي - الجوهرة المخفية وتريزور كاشيه وصندوق الجواهر. بالإضافة إلى 3 أخرى في الدويرية، ملحقنا العصري عبر الزقاق. لكل غرفة طابعها الخاص.', 'rooms,how many,accommodation,stay,sleep', 11),
('prices', 'What are your prices?', 'Our rooms range from €75 to €110 per night, depending on the room and season. Breakfast is included. We believe in fair pricing - luxury without the pretense.', 'Nos chambres vont de 75€ à 110€ par nuit, selon la chambre et la saison. Le petit-déjeuner est inclus. Nous croyons en des prix justes - le luxe sans prétention.', 'Nuestras habitaciones van desde 75€ hasta 110€ por noche, dependiendo de la habitación y la temporada. El desayuno está incluido. Creemos en precios justos - lujo sin pretensiones.', 'Le nostre camere vanno da 75€ a 110€ a notte, a seconda della camera e della stagione. La colazione è inclusa. Crediamo in prezzi equi - lusso senza pretese.', 'Os nossos quartos variam de 75€ a 110€ por noite, dependendo do quarto e da época. O pequeno-almoço está incluído. Acreditamos em preços justos - luxo sem pretensão.', 'تتراوح أسعار غرفنا من 75€ إلى 110€ لليلة، حسب الغرفة والموسم. الإفطار مشمول. نؤمن بالتسعير العادل - الفخامة بدون تكلف.', 'price,cost,rate,how much,euro,expensive,cheap,budget', 12),
('breakfast', 'Is breakfast included?', 'Yes, always. Moroccan breakfast on the rooftop terrace - fresh orange juice, msemen, baghrir, eggs, seasonal fruit, mint tea. The kind of breakfast that ruins hotel buffets forever.', 'Oui, toujours. Petit-déjeuner marocain sur la terrasse - jus d''orange frais, msemen, baghrir, œufs, fruits de saison, thé à la menthe. Le genre de petit-déjeuner qui ruine les buffets d''hôtel pour toujours.', 'Sí, siempre. Desayuno marroquí en la terraza - zumo de naranja fresco, msemen, baghrir, huevos, fruta de temporada, té de menta. El tipo de desayuno que arruina los bufés de hotel para siempre.', 'Sì, sempre. Colazione marocchina sulla terrazza - succo d''arancia fresco, msemen, baghrir, uova, frutta di stagione, tè alla menta. Il tipo di colazione che rovina per sempre i buffet degli hotel.', 'Sim, sempre. Pequeno-almoço marroquino no terraço - sumo de laranja fresco, msemen, baghrir, ovos, fruta da época, chá de menta. O tipo de pequeno-almoço que arruina os buffets de hotel para sempre.', 'نعم، دائماً. إفطار مغربي على السطح - عصير برتقال طازج، مسمن، بغرير، بيض، فاكهة موسمية، شاي بالنعناع. النوع من الإفطار الذي يفسد بوفيهات الفنادق للأبد.', 'breakfast,food,eat,morning,included', 13),
('booking', 'How do I book?', 'You can book through our website, Booking.com, or Airbnb. For the best rate and direct communication, booking through us is always preferred. Just reach out via our contact page.', 'Vous pouvez réserver via notre site web, Booking.com ou Airbnb. Pour le meilleur tarif et une communication directe, la réservation via notre site est toujours préférée. Contactez-nous via notre page contact.', 'Puedes reservar a través de nuestra web, Booking.com o Airbnb. Para la mejor tarifa y comunicación directa, reservar a través de nosotros es siempre preferido. Contáctanos por nuestra página de contacto.', 'Puoi prenotare attraverso il nostro sito, Booking.com o Airbnb. Per la migliore tariffa e comunicazione diretta, la prenotazione tramite noi è sempre preferita. Contattaci tramite la nostra pagina contatti.', 'Pode reservar através do nosso site, Booking.com ou Airbnb. Para a melhor tarifa e comunicação direta, reservar através de nós é sempre preferido. Contacte-nos através da nossa página de contacto.', 'يمكنك الحجز عبر موقعنا أو Booking.com أو Airbnb. للحصول على أفضل سعر وتواصل مباشر، الحجز من خلالنا هو المفضل دائماً. تواصل معنا عبر صفحة الاتصال.', 'book,reserve,reservation,availability,available', 14),
('checkin', 'What time is check-in?', 'Check-in is from 2pm, check-out by 11am. But we''re flexible when we can be - just let us know your flight times and we''ll do our best to accommodate.', 'L''enregistrement est à partir de 14h, le départ avant 11h. Mais nous sommes flexibles quand nous le pouvons - dites-nous vos heures de vol et nous ferons de notre mieux pour vous accommoder.', 'El check-in es desde las 14h, check-out antes de las 11h. Pero somos flexibles cuando podemos - dinos tus horarios de vuelo y haremos lo posible por acomodarte.', 'Il check-in è dalle 14:00, il check-out entro le 11:00. Ma siamo flessibili quando possibile - dicci i tuoi orari di volo e faremo del nostro meglio per accomodarti.', 'O check-in é a partir das 14h, check-out até às 11h. Mas somos flexíveis quando possível - diga-nos os seus horários de voo e faremos o possível para acomodar.', 'تسجيل الوصول من الساعة 2 مساءً، والمغادرة قبل الساعة 11 صباحاً. لكننا مرنون عندما نستطيع - أخبرنا بمواعيد رحلتك وسنبذل قصارى جهدنا لاستيعابك.', 'check-in,check-out,arrive,arrival,time,early,late', 15),
('airport', 'How do I get from the airport?', 'Marrakech airport is about 20 minutes away. We can arrange a private transfer for you, or you can take a taxi. Just let us know your arrival time.', 'L''aéroport de Marrakech est à environ 20 minutes. Nous pouvons organiser un transfert privé pour vous, ou vous pouvez prendre un taxi. Dites-nous juste votre heure d''arrivée.', 'El aeropuerto de Marrakech está a unos 20 minutos. Podemos organizar un traslado privado, o puedes tomar un taxi. Solo dinos tu hora de llegada.', 'L''aeroporto di Marrakech è a circa 20 minuti. Possiamo organizzare un trasferimento privato per te, oppure puoi prendere un taxi. Dicci solo il tuo orario di arrivo.', 'O aeroporto de Marraquexe fica a cerca de 20 minutos. Podemos organizar um transfer privado, ou pode apanhar um táxi. Diga-nos apenas a sua hora de chegada.', 'مطار مراكش على بعد حوالي 20 دقيقة. يمكننا ترتيب نقل خاص لك، أو يمكنك أخذ سيارة أجرة. فقط أخبرنا بوقت وصولك.', 'airport,transfer,taxi,pickup,arrive', 16),
('wifi', 'Do you have wifi?', 'Yes, good wifi throughout the riad. Strong enough for video calls. We know you might need to work occasionally, even in paradise.', 'Oui, bon wifi dans tout le riad. Assez puissant pour les appels vidéo. Nous savons que vous pourriez avoir besoin de travailler occasionnellement, même au paradis.', 'Sí, buen wifi en todo el riad. Suficientemente fuerte para videollamadas. Sabemos que podrías necesitar trabajar ocasionalmente, incluso en el paraíso.', 'Sì, buon wifi in tutto il riad. Abbastanza forte per le videochiamate. Sappiamo che potresti aver bisogno di lavorare occasionalmente, anche in paradiso.', 'Sim, bom wifi em todo o riad. Forte o suficiente para chamadas de vídeo. Sabemos que pode precisar de trabalhar ocasionalmente, mesmo no paraíso.', 'نعم، واي فاي جيد في جميع أنحاء الرياض. قوي بما يكفي لمكالمات الفيديو. نعلم أنك قد تحتاج للعمل أحياناً، حتى في الجنة.', 'wifi,internet,connection,work', 17),
('children', 'Are children welcome?', 'Yes, children are welcome. However, the riad has steep stairs and an open courtyard, so it''s best suited for older children. We''re honest about what works.', 'Oui, les enfants sont les bienvenus. Cependant, le riad a des escaliers raides et une cour ouverte, donc il convient mieux aux enfants plus âgés. Nous sommes honnêtes sur ce qui fonctionne.', 'Sí, los niños son bienvenidos. Sin embargo, el riad tiene escaleras empinadas y un patio abierto, por lo que es más adecuado para niños mayores. Somos honestos sobre lo que funciona.', 'Sì, i bambini sono benvenuti. Tuttavia, il riad ha scale ripide e un cortile aperto, quindi è più adatto a bambini più grandi. Siamo onesti su ciò che funziona.', 'Sim, as crianças são bem-vindas. No entanto, o riad tem escadas íngremes e um pátio aberto, por isso é mais adequado para crianças mais velhas. Somos honestos sobre o que funciona.', 'نعم، الأطفال مرحب بهم. ومع ذلك، الرياض به سلالم حادة وفناء مفتوح، لذا فهو أنسب للأطفال الأكبر سناً. نحن صادقون بشأن ما يناسب.', 'children,kids,family,baby', 18),
('parking', 'Is there parking?', 'There''s no parking at the riad - we''re in the car-free medina. But there''s secure parking nearby at Place des Ferblantiers, about 5 minutes walk.', 'Il n''y a pas de parking au riad - nous sommes dans la médina sans voiture. Mais il y a un parking sécurisé à proximité à la Place des Ferblantiers, à environ 5 minutes à pied.', 'No hay aparcamiento en el riad - estamos en la medina sin coches. Pero hay aparcamiento seguro cerca en Place des Ferblantiers, a unos 5 minutos a pie.', 'Non c''è parcheggio al riad - siamo nella medina senza auto. Ma c''è un parcheggio sicuro nelle vicinanze a Place des Ferblantiers, a circa 5 minuti a piedi.', 'Não há estacionamento no riad - estamos na medina sem carros. Mas há estacionamento seguro perto na Place des Ferblantiers, a cerca de 5 minutos a pé.', 'لا يوجد موقف سيارات في الرياض - نحن في المدينة القديمة الخالية من السيارات. لكن هناك موقف آمن قريب في ساحة الصفارين، على بعد حوالي 5 دقائق سيراً.', 'parking,car,drive', 19),
('rooftop', 'Do you have a rooftop?', 'Yes, a sunny rooftop terrace with views over the medina. Perfect for breakfast, sunset drinks, or just watching the storks circle the minarets.', 'Oui, une terrasse ensoleillée sur le toit avec vue sur la médina. Parfaite pour le petit-déjeuner, les apéritifs au coucher du soleil, ou simplement regarder les cigognes tourner autour des minarets.', 'Sí, una terraza soleada en la azotea con vistas a la medina. Perfecta para el desayuno, copas al atardecer, o simplemente ver las cigüeñas volar alrededor de los minaretes.', 'Sì, una terrazza soleggiata sul tetto con vista sulla medina. Perfetta per la colazione, drink al tramonto, o semplicemente guardare le cicogne girare intorno ai minareti.', 'Sim, um terraço ensolarado no telhado com vista sobre a medina. Perfeito para o pequeno-almoço, bebidas ao pôr do sol, ou simplesmente ver as cegonhas a circular os minaretes.', 'نعم، شرفة مشمسة على السطح مع إطلالات على المدينة القديمة. مثالية للإفطار، أو مشروبات غروب الشمس، أو مجرد مشاهدة اللقالق وهي تحلق حول المآذن.', 'rooftop,terrace,sun,view,sunset', 20),
('air-conditioning', 'Is there air conditioning?', 'Yes, all rooms have air conditioning and heating. Marrakech summers are hot, and winter nights can be surprisingly cool.', 'Oui, toutes les chambres ont la climatisation et le chauffage. Les étés de Marrakech sont chauds, et les nuits d''hiver peuvent être étonnamment fraîches.', 'Sí, todas las habitaciones tienen aire acondicionado y calefacción. Los veranos de Marrakech son calurosos, y las noches de invierno pueden ser sorprendentemente frescas.', 'Sì, tutte le camere hanno aria condizionata e riscaldamento. Le estati di Marrakech sono calde, e le notti invernali possono essere sorprendentemente fresche.', 'Sim, todos os quartos têm ar condicionado e aquecimento. Os verões de Marraquexe são quentes, e as noites de inverno podem ser surpreendentemente frescas.', 'نعم، جميع الغرف مزودة بتكييف وتدفئة. صيف مراكش حار، وليالي الشتاء يمكن أن تكون باردة بشكل مفاجئ.', 'air conditioning,ac,cool,hot,cold,heat,temperature', 21),
('douaria', 'What is The Douaria?', 'The Douaria is our modern annex, just across the alley from the main riad. Three contemporary rooms - Love, Joy, and Bliss. Lighter, more minimal, but still with soul.', 'The Douaria est notre annexe moderne, juste en face du riad principal. Trois chambres contemporaines - Love, Joy et Bliss. Plus légères, plus minimales, mais toujours avec une âme.', 'The Douaria es nuestro anexo moderno, justo al otro lado del callejón del riad principal. Tres habitaciones contemporáneas - Love, Joy y Bliss. Más ligeras, más minimalistas, pero aún con alma.', 'The Douaria è il nostro annesso moderno, proprio dall''altra parte del vicolo rispetto al riad principale. Tre camere contemporanee - Love, Joy e Bliss. Più leggere, più minimali, ma sempre con anima.', 'The Douaria é o nosso anexo moderno, mesmo do outro lado do beco do riad principal. Três quartos contemporâneos - Love, Joy e Bliss. Mais leves, mais minimalistas, mas ainda com alma.', 'الدويرية هي ملحقنا العصري، عبر الزقاق من الرياض الرئيسي مباشرة. ثلاث غرف معاصرة - الحب والفرح والنعيم. أخف وأكثر بساطة، لكن لا تزال بروح.', 'douaria,annex,modern,new', 22),
('kasbah', 'Tell me about The Kasbah', 'The Kasbah is our partner property in the Draa Valley - a 500-year-old fortress where time moves differently. Stars you''ve never seen. Silence you''ve forgotten exists. A different kind of escape.', 'Le Kasbah est notre propriété partenaire dans la vallée du Draa - une forteresse de 500 ans où le temps passe différemment. Des étoiles que vous n''avez jamais vues. Un silence que vous avez oublié. Une autre forme d''évasion.', 'El Kasbah es nuestra propiedad asociada en el Valle del Draa - una fortaleza de 500 años donde el tiempo pasa diferente. Estrellas que nunca has visto. Silencio que olvidaste que existía. Un tipo diferente de escapada.', 'Il Kasbah è la nostra proprietà partner nella Valle del Draa - una fortezza di 500 anni dove il tempo scorre diversamente. Stelle che non hai mai visto. Silenzio che hai dimenticato esista. Un diverso tipo di fuga.', 'O Kasbah é a nossa propriedade parceira no Vale do Draa - uma fortaleza de 500 anos onde o tempo passa de forma diferente. Estrelas que nunca viu. Silêncio que esqueceu que existia. Um tipo diferente de escapadela.', 'القصبة هي ملكيتنا الشريكة في وادي درعة - حصن عمره 500 عام حيث يمر الوقت بشكل مختلف. نجوم لم ترها من قبل. صمت نسيت وجوده. نوع مختلف من الهروب.', 'kasbah,draa,valley,desert,south', 23),
('pets', 'Can I bring my pet?', 'We don''t accept pets at the riad, unfortunately. The medina cats will have to be enough company.', 'Nous n''acceptons malheureusement pas les animaux au riad. Les chats de la médina devront vous tenir compagnie.', 'Desafortunadamente no aceptamos mascotas en el riad. Los gatos de la medina tendrán que ser suficiente compañía.', 'Purtroppo non accettiamo animali al riad. I gatti della medina dovranno essere abbastanza compagnia.', 'Infelizmente não aceitamos animais de estimação no riad. Os gatos da medina terão de ser companhia suficiente.', 'للأسف لا نقبل الحيوانات الأليفة في الرياض. قطط المدينة القديمة ستكون رفقة كافية.', 'pet,dog,cat,animal', 24),
('smoking', 'Is smoking allowed?', 'Smoking is only allowed on the rooftop terrace. The rooms and common areas are smoke-free. Thank you for understanding.', 'Fumer n''est autorisé que sur la terrasse. Les chambres et les espaces communs sont non-fumeurs. Merci de votre compréhension.', 'Fumar solo está permitido en la terraza. Las habitaciones y áreas comunes son libres de humo. Gracias por su comprensión.', 'Fumare è permesso solo sulla terrazza. Le camere e le aree comuni sono non fumatori. Grazie per la comprensione.', 'Fumar só é permitido no terraço. Os quartos e áreas comuns são livres de fumo. Obrigado pela compreensão.', 'التدخين مسموح فقط على السطح. الغرف والمناطق المشتركة خالية من التدخين. شكراً لتفهمكم.', 'smoke,smoking,cigarette', 25),
('languages', 'What languages do you speak?', 'We speak English, French, Spanish, and Italian. Our staff speaks Arabic and Berber. We''ll find a way to understand each other.', 'Nous parlons anglais, français, espagnol et italien. Notre personnel parle arabe et berbère. Nous trouverons un moyen de nous comprendre.', 'Hablamos inglés, francés, español e italiano. Nuestro personal habla árabe y bereber. Encontraremos la manera de entendernos.', 'Parliamo inglese, francese, spagnolo e italiano. Il nostro staff parla arabo e berbero. Troveremo un modo per capirci.', 'Falamos inglês, francês, espanhol e italiano. O nosso pessoal fala árabe e berbere. Encontraremos uma forma de nos entendermos.', 'نتحدث الإنجليزية والفرنسية والإسبانية والإيطالية. موظفونا يتحدثون العربية والأمازيغية. سنجد طريقة للتفاهم.', 'language,speak,english,french,spanish', 26);

-- Table: master_guests (booking records written by the API)
DROP TABLE IF EXISTS master_guests CASCADE;
CREATE TABLE master_guests (
  id serial PRIMARY KEY,
  booking_id text,
  "timestamp" text,
  first_name text,
  last_name text,
  email text,
  phone text,
  check_in text,
  check_out text,
  guests text,
  total text,
  paypal_status text,
  paypal_order_id text,
  room text,
  property text,
  booking_data text
);

-- Enable RLS on all tables with public read access
ALTER TABLE settings ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_settings" ON settings FOR SELECT USING (true);
CREATE POLICY "service_write_settings" ON settings FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE home ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_home" ON home FOR SELECT USING (true);
CREATE POLICY "service_write_home" ON home FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE the_riad ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_the_riad" ON the_riad FOR SELECT USING (true);
CREATE POLICY "service_write_the_riad" ON the_riad FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE rooms ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_rooms" ON rooms FOR SELECT USING (true);
CREATE POLICY "service_write_rooms" ON rooms FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE rooms_hero ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_rooms_hero" ON rooms_hero FOR SELECT USING (true);
CREATE POLICY "service_write_rooms_hero" ON rooms_hero FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE amenities ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_amenities" ON amenities FOR SELECT USING (true);
CREATE POLICY "service_write_amenities" ON amenities FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE amenities_hero ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_amenities_hero" ON amenities_hero FOR SELECT USING (true);
CREATE POLICY "service_write_amenities_hero" ON amenities_hero FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE philosophy ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_philosophy" ON philosophy FOR SELECT USING (true);
CREATE POLICY "service_write_philosophy" ON philosophy FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE disclaimer ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_disclaimer" ON disclaimer FOR SELECT USING (true);
CREATE POLICY "service_write_disclaimer" ON disclaimer FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE faq ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_faq" ON faq FOR SELECT USING (true);
CREATE POLICY "service_write_faq" ON faq FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE house_rules ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_house_rules" ON house_rules FOR SELECT USING (true);
CREATE POLICY "service_write_house_rules" ON house_rules FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE privacy_policy ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_privacy_policy" ON privacy_policy FOR SELECT USING (true);
CREATE POLICY "service_write_privacy_policy" ON privacy_policy FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE booking_conditions ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_booking_conditions" ON booking_conditions FOR SELECT USING (true);
CREATE POLICY "service_write_booking_conditions" ON booking_conditions FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE terms ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_terms" ON terms FOR SELECT USING (true);
CREATE POLICY "service_write_terms" ON terms FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE testimonials ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_testimonials" ON testimonials FOR SELECT USING (true);
CREATE POLICY "service_write_testimonials" ON testimonials FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE bookings ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_bookings" ON bookings FOR SELECT USING (true);
CREATE POLICY "service_write_bookings" ON bookings FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE directions_caption_ar ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_directions_caption_ar" ON directions_caption_ar FOR SELECT USING (true);
CREATE POLICY "service_write_directions_caption_ar" ON directions_caption_ar FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE douaria_rooms ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_douaria_rooms" ON douaria_rooms FOR SELECT USING (true);
CREATE POLICY "service_write_douaria_rooms" ON douaria_rooms FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE kasbah_experience ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_kasbah_experience" ON kasbah_experience FOR SELECT USING (true);
CREATE POLICY "service_write_kasbah_experience" ON kasbah_experience FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE douaria_hero ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_douaria_hero" ON douaria_hero FOR SELECT USING (true);
CREATE POLICY "service_write_douaria_hero" ON douaria_hero FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE douaria_content ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_douaria_content" ON douaria_content FOR SELECT USING (true);
CREATE POLICY "service_write_douaria_content" ON douaria_content FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE kasbah_hero ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_kasbah_hero" ON kasbah_hero FOR SELECT USING (true);
CREATE POLICY "service_write_kasbah_hero" ON kasbah_hero FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE kasbah_content ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_kasbah_content" ON kasbah_content FOR SELECT USING (true);
CREATE POLICY "service_write_kasbah_content" ON kasbah_content FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE desert_hero ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_desert_hero" ON desert_hero FOR SELECT USING (true);
CREATE POLICY "service_write_desert_hero" ON desert_hero FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE desert_content ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_desert_content" ON desert_content FOR SELECT USING (true);
CREATE POLICY "service_write_desert_content" ON desert_content FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE desert_tents ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_desert_tents" ON desert_tents FOR SELECT USING (true);
CREATE POLICY "service_write_desert_tents" ON desert_tents FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE farm_hero ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_farm_hero" ON farm_hero FOR SELECT USING (true);
CREATE POLICY "service_write_farm_hero" ON farm_hero FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE farm_content ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_farm_content" ON farm_content FOR SELECT USING (true);
CREATE POLICY "service_write_farm_content" ON farm_content FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE farm_produce ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_farm_produce" ON farm_produce FOR SELECT USING (true);
CREATE POLICY "service_write_farm_produce" ON farm_produce FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE journeys_page ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_journeys_page" ON journeys_page FOR SELECT USING (true);
CREATE POLICY "service_write_journeys_page" ON journeys_page FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE directions ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_directions" ON directions FOR SELECT USING (true);
CREATE POLICY "service_write_directions" ON directions FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE rooms_gallery ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_rooms_gallery" ON rooms_gallery FOR SELECT USING (true);
CREATE POLICY "service_write_rooms_gallery" ON rooms_gallery FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE douaria_gallery ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_douaria_gallery" ON douaria_gallery FOR SELECT USING (true);
CREATE POLICY "service_write_douaria_gallery" ON douaria_gallery FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE kasbah_gallery ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_kasbah_gallery" ON kasbah_gallery FOR SELECT USING (true);
CREATE POLICY "service_write_kasbah_gallery" ON kasbah_gallery FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE desert_gallery ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_desert_gallery" ON desert_gallery FOR SELECT USING (true);
CREATE POLICY "service_write_desert_gallery" ON desert_gallery FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE beyond_the_walls ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_beyond_the_walls" ON beyond_the_walls FOR SELECT USING (true);
CREATE POLICY "service_write_beyond_the_walls" ON beyond_the_walls FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE beyond_the_walls_hero ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_beyond_the_walls_hero" ON beyond_the_walls_hero FOR SELECT USING (true);
CREATE POLICY "service_write_beyond_the_walls_hero" ON beyond_the_walls_hero FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE directions_settings ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_directions_settings" ON directions_settings FOR SELECT USING (true);
CREATE POLICY "service_write_directions_settings" ON directions_settings FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE chatbot_training ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_chatbot_training" ON chatbot_training FOR SELECT USING (true);
CREATE POLICY "service_write_chatbot_training" ON chatbot_training FOR ALL USING (auth.role() = 'service_role');
ALTER TABLE master_guests ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_master_guests" ON master_guests FOR SELECT USING (true);
CREATE POLICY "service_write_master_guests" ON master_guests FOR ALL USING (auth.role() = 'service_role');

-- Migration complete