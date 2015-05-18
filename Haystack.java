import java.util.*;
import java.io.*;
public class Haystack {
    public static void main(String[] args) {
        final int LEN = 100;
        final char[] current = new char[LEN];
        final char[] previous = new char[LEN];

        try (final BufferedReader br = new BufferedReader(new FileReader("large_haystack.txt")) {

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
