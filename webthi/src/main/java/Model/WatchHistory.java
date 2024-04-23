package Model;

public class WatchHistory {
	
	private int id;
    private int userId;
    private int movieId;
    private int watchingTime;

	public WatchHistory() {
		// TODO Auto-generated constructor stub
	}
	
	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public int getWatchingTime() {
        return watchingTime;
    }

    public void setWatchingTime(int watchingTime) {
        this.watchingTime = watchingTime;
    }

}
