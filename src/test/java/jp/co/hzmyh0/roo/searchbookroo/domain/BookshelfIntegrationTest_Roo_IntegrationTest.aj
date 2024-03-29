// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package jp.co.hzmyh0.roo.searchbookroo.domain;

import jp.co.hzmyh0.roo.searchbookroo.domain.BookshelfDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BookshelfIntegrationTest_Roo_IntegrationTest {
    
    declare @type: BookshelfIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: BookshelfIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: BookshelfIntegrationTest: @Transactional;
    
    @Autowired
    private BookshelfDataOnDemand BookshelfIntegrationTest.dod;
    
    @Test
    public void BookshelfIntegrationTest.testCountBookshelves() {
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to initialize correctly", dod.getRandomBookshelf());
        long count = jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf.countBookshelves();
        org.junit.Assert.assertTrue("Counter for 'Bookshelf' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void BookshelfIntegrationTest.testFindBookshelf() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf obj = dod.getRandomBookshelf();
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf.findBookshelf(id);
        org.junit.Assert.assertNotNull("Find method for 'Bookshelf' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Bookshelf' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void BookshelfIntegrationTest.testFindAllBookshelves() {
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to initialize correctly", dod.getRandomBookshelf());
        long count = jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf.countBookshelves();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Bookshelf', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf> result = jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf.findAllBookshelves();
        org.junit.Assert.assertNotNull("Find all method for 'Bookshelf' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Bookshelf' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void BookshelfIntegrationTest.testFindBookshelfEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to initialize correctly", dod.getRandomBookshelf());
        long count = jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf.countBookshelves();
        if (count > 20) count = 20;
        java.util.List<jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf> result = jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf.findBookshelfEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Bookshelf' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Bookshelf' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void BookshelfIntegrationTest.testFlush() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf obj = dod.getRandomBookshelf();
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf.findBookshelf(id);
        org.junit.Assert.assertNotNull("Find method for 'Bookshelf' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyBookshelf(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Bookshelf' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void BookshelfIntegrationTest.testMerge() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf obj = dod.getRandomBookshelf();
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf.findBookshelf(id);
        boolean modified =  dod.modifyBookshelf(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Bookshelf' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void BookshelfIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to initialize correctly", dod.getRandomBookshelf());
        jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf obj = dod.getNewTransientBookshelf(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Bookshelf' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Bookshelf' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void BookshelfIntegrationTest.testRemove() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf obj = dod.getRandomBookshelf();
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Bookshelf' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf.findBookshelf(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Bookshelf' with identifier '" + id + "'", jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf.findBookshelf(id));
    }
    
}
