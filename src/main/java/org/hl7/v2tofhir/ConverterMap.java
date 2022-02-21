package org.hl7.v2tofhir;
/*
 * Copyright 2020 Audiacious Inquiry, Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy
 * of the License at http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

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
        m = new TreeMap<>();
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
                Triple<String, String, String> t = Triple.of(where, title, id);
                m2.put(id, t);
                // Also map for case correction issues in input.
                m2.put(id.toLowerCase(), t);
            }
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }
    }

}
