package data;

public interface StateDAO {
	public State getStateByName(String name);
	public State getStateByAbbreviation(String abbreviation);
	public State getStateById(int id);
	public void addState(State state);
}
