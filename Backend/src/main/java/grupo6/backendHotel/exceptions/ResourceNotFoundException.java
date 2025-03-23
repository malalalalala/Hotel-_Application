package grupo6.backendHotel.exceptions;

public class ResourceNotFoundException extends Exception{

    public ResourceNotFoundException(String message, String id, Integer integer){
        super(message);

    }
    public ResourceNotFoundException(String message){
        super(message);
    }

}
