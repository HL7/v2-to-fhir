package org.hl7.v2tofhir;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.tuple.Triple;

import com.opencsv.CSVReader;

public class ConverterMap {
    private static Map<String, Map<String, Triple<String, String, String>>> m = null;

    static Map<String, Map<String, Triple<String, String, String>>> getMap() {
        if (m == null) {
            load();
        }
        return m;
    }

    static void load() {
        m = new HashMap<>();
        // Get the data about how to organize this stuff.
        try (FileReader r = new FileReader("mappings/chapterdata.csv");
            CSVReader r2 = new CSVReader(r);) {
            String line[];
            while ((line = r2.readNext()) != null) {
                String what = line[0], where = line.length > 1 ? line[1] : "", title = line.length > 2 ? line[2] : "", id = line.length > 2 ? line[3] : "";
                Map<String, Triple<String, String, String>> m2 = m.get(what);
                if (m2 == null) {
                    m2 = new HashMap<>();
                    m.put(what, m2);
                }
                m2.put(id, Triple.of(where, title, id));
            }
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }
    }

}
