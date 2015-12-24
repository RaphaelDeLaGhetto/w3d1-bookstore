-- Fetch ISBN of all book editions published by the publisher "Random House". You should have 3 results.
SELECT isbn FROM editions AS e JOIN publishers AS p ON p.id = e.publisher_id WHERE p.name = 'Random House';
