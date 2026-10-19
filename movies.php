<?php
// JSON endpoint: movies.php?q=title&genre=Drama
require __DIR__ . '/db.php';
header('Content-Type: application/json; charset=utf-8');

try {
    $db    = db();
    $q     = trim($_GET['q'] ?? '');
    $genre = trim($_GET['genre'] ?? '');
    $like  = '%' . addcslashes($q, '%_\\') . '%';

    $stmt = $db->prepare(
        "SELECT id, title, release_year, genre, director, synopsis, poster_url
         FROM movies
         WHERE title LIKE ? AND (? = '' OR genre = ?)
         ORDER BY release_year DESC, title"
    );
    $stmt->bind_param('sss', $like, $genre, $genre);
    $stmt->execute();
    $movies = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);

    $genres = array_column(
        $db->query("SELECT DISTINCT genre FROM movies ORDER BY genre")->fetch_all(MYSQLI_ASSOC),
        'genre'
    );
    $featured = $db->query(
        "SELECT id, title, release_year, genre, director, synopsis, poster_url
         FROM movies ORDER BY created_at DESC, id DESC LIMIT 1"
    )->fetch_assoc();

    echo json_encode(['movies' => $movies, 'genres' => $genres, 'featured' => $featured]);
} catch (Throwable $e) {
    error_log($e->getMessage());               // details go to the PHP log only
    http_response_code(500);
    echo json_encode(['error' => 'The archive could not be reached.']);
}
