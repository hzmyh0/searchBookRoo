// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package jp.co.hzmyh0.roo.searchbookroo.domain;

import jp.co.hzmyh0.roo.searchbookroo.domain.GenreDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect GenreIntegrationTest_Roo_IntegrationTest {
    
    declare @type: GenreIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: GenreIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: GenreIntegrationTest: @Transactional;
    
    @Autowired
    private GenreDataOnDemand GenreIntegrationTest.dod;
    
    @Test
    public void GenreIntegrationTest.testCountGenres() {
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to initialize correctly", dod.getRandomGenre());
        long count = jp.co.hzmyh0.roo.searchbookroo.domain.Genre.countGenres();
        org.junit.Assert.assertTrue("Counter for 'Genre' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void GenreIntegrationTest.testFindGenre() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Genre obj = dod.getRandomGenre();
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Genre.findGenre(id);
        org.junit.Assert.assertNotNull("Find method for 'Genre' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Genre' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void GenreIntegrationTest.testFindAllGenres() {
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to initialize correctly", dod.getRandomGenre());
        long count = jp.co.hzmyh0.roo.searchbookroo.domain.Genre.countGenres();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Genre', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<jp.co.hzmyh0.roo.searchbookroo.domain.Genre> result = jp.co.hzmyh0.roo.searchbookroo.domain.Genre.findAllGenres();
        org.junit.Assert.assertNotNull("Find all method for 'Genre' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Genre' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void GenreIntegrationTest.testFindGenreEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to initialize correctly", dod.getRandomGenre());
        long count = jp.co.hzmyh0.roo.searchbookroo.domain.Genre.countGenres();
        if (count > 20) count = 20;
        java.util.List<jp.co.hzmyh0.roo.searchbookroo.domain.Genre> result = jp.co.hzmyh0.roo.searchbookroo.domain.Genre.findGenreEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Genre' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Genre' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void GenreIntegrationTest.testFlush() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Genre obj = dod.getRandomGenre();
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Genre.findGenre(id);
        org.junit.Assert.assertNotNull("Find method for 'Genre' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyGenre(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Genre' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void GenreIntegrationTest.testMerge() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Genre obj = dod.getRandomGenre();
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Genre.findGenre(id);
        boolean modified =  dod.modifyGenre(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        jp.co.hzmyh0.roo.searchbookroo.domain.Genre merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Genre' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void GenreIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to initialize correctly", dod.getRandomGenre());
        jp.co.hzmyh0.roo.searchbookroo.domain.Genre obj = dod.getNewTransientGenre(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Genre' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Genre' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void GenreIntegrationTest.testRemove() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Genre obj = dod.getRandomGenre();
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Genre' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Genre.findGenre(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Genre' with identifier '" + id + "'", jp.co.hzmyh0.roo.searchbookroo.domain.Genre.findGenre(id));
    }
    
}
