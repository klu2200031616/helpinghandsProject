package com.project.jfsd.dao;

import java.util.List;

import org.springframework.http.HttpStatus;

import com.project.jfsd.model.Event;
import com.project.jfsd.model.User;



public interface EventsDAO {

	public HttpStatus createEvent(Event e);

	public HttpStatus registerUserToEvent(Event e, User user);

	public List<User> getUsersRegisteredToEvent(Event e);

	public Event getEventById(int eventId);

	public List<Event> getAllEvents();

	public HttpStatus deleteEvent(int eventId);

	public HttpStatus updateEvent(Event updatedEvent);

	public List<Event> getRegisteredEventsByUser(User user);
}
