/**
 * The contents of this file are subject to the license and copyright
 * detailed in the LICENSE and NOTICE files at the root of the source
 * tree and available online at
 *
 * http://www.dspace.org/license/
 */
package org.dspace.app.orcid.service;

import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import org.dspace.app.orcid.OrcidQueue;
import org.dspace.core.Context;

public interface OrcidQueueService {

    /**
     * Get the orcid queue records by the owner id.
     *
     * @param context DSpace context object
     * @param ownerId the owner item id
     * @param limit   limit
     * @param offset  offset
     * @return the orcid queue records
     * @throws SQLException if an SQL error occurs
     */
    public List<OrcidQueue> findByOwnerId(Context context, UUID ownerId, Integer limit, Integer offset)
        throws SQLException;

    long countByOwnerId(Context context, UUID ownerId) throws SQLException;
}
