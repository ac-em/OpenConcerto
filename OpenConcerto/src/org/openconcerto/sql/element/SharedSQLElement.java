/*
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.
 * 
 * Copyright 2011 OpenConcerto, by ILM Informatique. All rights reserved.
 * 
 * The contents of this file are subject to the terms of the GNU General Public License Version 3
 * only ("GPL"). You may not use this file except in compliance with the License. You can obtain a
 * copy of the License at http://www.gnu.org/licenses/gpl-3.0.html See the License for the specific
 * language governing permissions and limitations under the License.
 * 
 * When distributing the software, include this License Header Notice in each file.
 */
 
 package org.openconcerto.sql.element;

import org.openconcerto.sql.model.SQLTable;

/**
 * An element which is shared and never on screen.
 * 
 * @author Sylvain CUAZ
 */
public class SharedSQLElement extends ConfSQLElement {

    public SharedSQLElement(String tableName) {
        super(tableName, tableName, tableName);
    }

    public SharedSQLElement(SQLTable table) {
        super(table, table.getName(), table.getName());
    }

    @Override
    public final boolean isShared() {
        return true;
    }

}
