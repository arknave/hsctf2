import java.util.*;
import java.io.*;
public class Haystack {
    public static final String FILE_PATH = "large_haystack.txt";
    public static final int LEN = 100;

    public static void initial(final Set<String> wordSet) throws IOException {
        final char[] current = new char[LEN];
        char[] previous = new char[LEN];

        try (final BufferedReader br = new BufferedReader(new FileReader(FILE_PATH))) {
            br.read(current);
            while (!Arrays.equals(current, previous)) {
                final String currentString = new String(current);
                int counter = 0;
                for (final String word : wordSet) {
                    if (currentString.contains(word)) {
                        counter++;
                    }
                }
                if (counter > 5) {
                    System.out.println(currentString);
                }

                previous = current.clone();
                br.read(current);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void alternate(final Set<String> wordSet) throws IOException {
        final char[] current = new char[2 * LEN];
        char[] previous = new char[2 * LEN];
        final char[] even = new char[LEN];
        final char[] odd = new char[LEN];

        try (final BufferedReader br = new BufferedReader(new FileReader(FILE_PATH))) {
            br.read(current);
            while (!Arrays.equals(current, previous)) {
                for (int i = 0; i < 2 * LEN; i++) {
                    if ((i & 1) == 1) {
                        odd[i / 2] = current[i];
                    } else {
                        even[i / 2] = current[i];
                    }
                }

                final String evenString = new String(even);
                final String oddString = new String(odd);

                int evenCounter = 0;
                int oddCounter = 0;

                for (final String word : wordSet) {
                    if (evenString.contains(word)) {
                        evenCounter++;
                    }

                    if (oddString.contains(word)) {
                        oddCounter++;
                    }
                }

                if (evenCounter > 3) {
                    System.out.println(new String(previous));
                    System.out.println(evenString);
                }

                if (oddCounter > 3) {
                    System.out.println(new String(previous));
                    System.out.println(oddCounter);
                }

                previous = current.clone();
                br.read(current);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws IOException {
        final Set<String> wordSet = new HashSet<String>();

        final BufferedReader wordReader = new BufferedReader(new FileReader("words.txt"));
        String s;
        while ((s = wordReader.readLine()) != null) {
            if (s.length() > 3) {
                wordSet.add(s);
            }
        }
        //initial(wordSet);
        alternate(wordSet);
    }
}
