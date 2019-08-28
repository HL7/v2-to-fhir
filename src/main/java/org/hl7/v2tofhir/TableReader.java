package org.hl7.v2tofhir;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


/**
 * Table Reader is a class that will read an HTML table with
 * rowspan and colspan attributes and will fill an array of rows and cells with 
 * the appropriate TD/TH elements that populate contents of the table.
 * 
 * @author Keith W. Boone
 *
 */
public class TableReader {
    private final static Logger LOGGER = LoggerFactory.getLogger(TableReader.class);
    public static class Table {
        private ArrayList<Element> rows;
        private ArrayList<ArrayList<Element>> cells;
        private Table(ArrayList<Element> rows, ArrayList<ArrayList<Element>> cells) {
            this.rows = rows;
            this.cells = cells;
        }
        
        public int getNumRows() {
            return rows.size();
        }
        
        public int getNumCols() {
            int max = 0;
            for (ArrayList<Element> row: cells) {
                if (row.size() > max) max = row.size();
            }
            return max;
        }
        
        public int getNumCols(int r) {
            if (r > cells.size()) return 0;
            return cells.get(r).size();
        }
        
        /**
         * Returns an array of elements that represent the rows of the table.
         * @return The TR elements that represent the rows of the table
         */
        public Element[] getRows() {
            return rows.toArray(new Element[rows.size()]);
        }
        
        /**
         * Returns the TD or TH element representing a specific cell in the table.
         * If the TD or TH element spans rows or columns at the specified location,
         * it will be returned.
         * 
         * @param row The table row being looked at.
         * @param col The table cell being looked at.
         * @return The TD or TH element representing this location in the table, or null
         * if there is no cell at that position.
         */
        public Element getCell(int row, int col) {
            if (row >= cells.size()) return null;
            ArrayList<Element> theRow = cells.get(row);
            if (col >= theRow.size()) return null;
            return theRow.get(col);
        }

        public Element getRow(int r) {
            if (r > rows.size()) return null;
            return rows.get(r);
        }
    }
    
    private final static List<String> CELLNAMES = Arrays.asList("td", "th");
    
    public static Table readXmlTable(Document doc, int tableNumber) throws XPathExpressionException {
        
        XPathFactory xpathfactory = XPathFactory.newInstance();
        XPath xpath = xpathfactory.newXPath();
        
        XPathExpression expr;
        
        expr = xpath.compile("//table[" + tableNumber + "]/thead/tr|//table[" + tableNumber + "]/tbody/tr|//table[" + tableNumber + "]/tr");
        NodeList nodes = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);
        ArrayList<ArrayList<Element>> cells = new ArrayList<ArrayList<Element>>();
        ArrayList<Element> rowList = new ArrayList<Element>();
        
        for (int i = 0; i < nodes.getLength(); i++) {
            Element row = (Element) nodes.item(i);
            rowList.add(row);
            ArrayList<Element> jthRow = getRow(cells, i);
            int curCol = firstUnfilledCell(jthRow);
            for (Node node = row.getFirstChild(); node != null; node = node.getNextSibling()) {
                // Skip non-element children.
                if (node.getNodeType() != Node.ELEMENT_NODE) continue;
                Element cell = (Element) node;
                if (!CELLNAMES.contains(cell.getTagName())) continue;
                
                // This is a td or th cell.
                int rowspan = !cell.hasAttribute("rowspan") ? 1 : Integer.parseInt(cell.getAttribute("rowspan"));
                int colspan = !cell.hasAttribute("colspan") ? 1 : Integer.parseInt(cell.getAttribute("colspan"));
                int offset = nextUnfilledCell(jthRow, curCol);
                for (int j = 0; j < rowspan; j++) {
                    jthRow = getRow(cells, i + j);
                    for (int k = 0; k < colspan; k++) {
                        setCell(jthRow, k + offset, cell);
                    }
                }
                curCol += colspan;
            }
        }

        return new Table(rowList, cells);
    }

    private static int firstUnfilledCell(ArrayList<Element> jthRow) {
        return nextUnfilledCell(jthRow, 0);
    }
    
    private static int nextUnfilledCell(ArrayList<Element> jthRow, int offset) {
        for (int i = offset; i < jthRow.size(); i++) {
            if (jthRow.get(i) == null)
                return i;
        }
        return Math.max(offset, jthRow.size());
    }

    private static void setCell(ArrayList<Element> row, int k, Element cell) {
        while (row.size() <= k) {
            row.add(null);
        }
        row.set(k, cell);
    }

    private static ArrayList<Element> getRow(ArrayList<ArrayList<Element>> rows, int i) {
        while (rows.size() <= i) {
            rows.add(new ArrayList<Element>());
        }
        return rows.get(i);
    }

}
