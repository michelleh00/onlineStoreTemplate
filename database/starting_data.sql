INSERT into `users` (`username`, `password_hash`, `email`, `first_name`, `last_name`)
VALUES ('aturing', 'b93727798b520dc10d145b53909c061f082ff14cd5f8cb4ab24c3b71bfa57d7e12e1296029be74c06a0d91ba32756f9fc978047fbe7232be67f94dfc1de9ced9', 'alan@enigma.com', 'Alan', 'Turing');

INSERT into `users` (`username`, `password_hash`, `email`, `first_name`, `last_name`)
VALUES ('dritchie', '67aff785bd17ac24448d491926ff7aadd8fa75e51a2f7a9bfc31889bad0adcd2989061a27ccd9eff9e5e31f2bc14b5c193727e116dc8dc48259acb3919171cd4', 'dennis@unix.com', 'Dennis', 'Ritchie');

INSERT into `users` (`username`, `password_hash`, `email`, `first_name`, `last_name`)
VALUES ('llamport', '9171d14954eeda4e70777c23d98e349818125cdaeb884ff97ebf8cc0a9c7778f54ce394256588148132a03ebea891e44077c659e6c0132fa87a8cf77e436ae11', 'leslie@paxos.com', 'Leslie', 'Lamport');

INSERT into `users` (`username`, `password_hash`, `email`, `first_name`, `last_name`)
VALUES ('bliskov', '1e4b9ae956cad1385cfa6fffd8323dd16c3fe18c54e6447e49bddef2138d042e84e1505a541c6ef19a5026e684b2559efd366145870a0a8d4d4173c0877f6cd2', 'barbara@thor.com', 'Barbara', 'Liskov');

INSERT into `inventory` (`item_name`, `info`, `price`, `stock`, `image_url`, `category`)
VALUES ('Apples', 'An edible cultivation of the Malus genus.', 2.00, 100, 'static/images/apple.jpeg', 'Fruit');

INSERT into `inventory` (`item_name`, `info`, `price`, `stock`, `image_url`, `category`)
VALUES ('Willy Wonka and the Chocolate Factory (1971)', "A poor but hopeful boy seeks one of the five coveted golden tickets that will send him on a tour of Willy Wonka's mysterious chocolate factory.", 19.00, 25, 'static/images/willy_wonka.jpg', 'DVD');

INSERT into `inventory` (`item_name`, `info`, `price`, `stock`, `image_url`, `category`)
VALUES ('Casino (1995)', 'In Las Vegas, two best friends - a casino executive and a mafia enforcer - compete for a gambling empire and a fast-living, fast-loving socialite.', 22.00, 40, 'static/images/casino.jpg', 'DVD');

INSERT into `inventory` (`item_name`, `info`, `price`, `stock`, `image_url`, `category`)
VALUES ('National Lampoons Christmas Vacation (1989)', "The Griswold family's plans for a big family Christmas predictably turn into a big disaster.", 4.00, 25, 'static/images/christmas_vacation.jpg', 'DVD');

INSERT into `inventory` (`item_name`, `info`, `price`, `stock`, `image_url`, `category`)
VALUES ('Doctor Sleep (Hardback)', 'The now middle-aged Dan Torrance (the boy protagonist of The Shining) must save a very special twelve-year-old girl from a tribe of murderous paranormals.', 26.00, 100, 'static/images/doctor_sleep.png', 'Book');

INSERT into `inventory` (`item_name`, `info`, `price`, `stock`, `image_url`, `category`)
VALUES ('The Shining (1980)', 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', 16.00, 30, 'static/images/shining.jpg', 'DVD');

INSERT into `inventory` (`item_name`, `info`, `price`, `stock`, `image_url`, `category`)
VALUES ('Goodfellas (1990)', 'The story of Henry Hill and his life in the mafia, covering his relationship with his wife Karen and his mob partners Jimmy Conway and Tommy DeVito.', 18.00, 25, 'static/images/goodfellas.jpg', 'DVD');

INSERT into `inventory` (`item_name`, `info`, `price`, `stock`, `image_url`, `category`)
VALUES ('The Hobbit (Paperback)', "J.R.R. Tolkien's classic prelude to his Lord of the Rings trilogy. Go on an adventure with Bilbo Baggins as he finds himself roped into a quest to defeat Smaug the dragon!", 19.00, 50, 'static/images/hobbit.jpg', 'Book');

INSERT into `inventory` (`item_name`, `info`, `price`, `stock`, `image_url`, `category`)
VALUES ('Goosebumps: Night of the Living Dummy', "Kris's twin sister has just gotten a ventriloquist's dummy and it's all anyone - their parents, their friends - seem to care about. Kris is tired of being ignored so she gets a dummy of her own. But double the dummies start to mean double the trouble...and horror.", 9.00, 100, 'static/images/goosebumps.jpg', 'Book');

INSERT into `sales` (`transaction_id`, `username`, `item_id`, `quantity`, `sale_date`, `cost`)
VALUES ('1', 'aturing', '1', 10, '2022-12-21 7:30:30', 5.50);

INSERT into `sales` (`transaction_id`, `username`, `item_id`, `quantity`, `sale_date`, `cost`)
VALUES ('2', 'dritchie', '2', 10, '2022-12-21 7:30:30', 5.50);

INSERT into `sales` (`transaction_id`, `username`, `item_id`, `quantity`, `sale_date`, `cost`)
VALUES ('3', 'llamport', '3', 10, '2022-12-21 7:30:30', 5.50);
