// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package jp.co.hzmyh0.roo.searchbookroo.domain;

import jp.co.hzmyh0.roo.searchbookroo.domain.ReviewDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ReviewIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ReviewIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ReviewIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: ReviewIntegrationTest: @Transactional;
    
    @Autowired
    private ReviewDataOnDemand ReviewIntegrationTest.dod;
    
    @Test
    public void ReviewIntegrationTest.testCountReviews() {
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to initialize correctly", dod.getRandomReview());
        long count = jp.co.hzmyh0.roo.searchbookroo.domain.Review.countReviews();
        org.junit.Assert.assertTrue("Counter for 'Review' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ReviewIntegrationTest.testFindReview() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Review obj = dod.getRandomReview();
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Review.findReview(id);
        org.junit.Assert.assertNotNull("Find method for 'Review' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Review' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ReviewIntegrationTest.testFindAllReviews() {
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to initialize correctly", dod.getRandomReview());
        long count = jp.co.hzmyh0.roo.searchbookroo.domain.Review.countReviews();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Review', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<jp.co.hzmyh0.roo.searchbookroo.domain.Review> result = jp.co.hzmyh0.roo.searchbookroo.domain.Review.findAllReviews();
        org.junit.Assert.assertNotNull("Find all method for 'Review' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Review' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ReviewIntegrationTest.testFindReviewEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to initialize correctly", dod.getRandomReview());
        long count = jp.co.hzmyh0.roo.searchbookroo.domain.Review.countReviews();
        if (count > 20) count = 20;
        java.util.List<jp.co.hzmyh0.roo.searchbookroo.domain.Review> result = jp.co.hzmyh0.roo.searchbookroo.domain.Review.findReviewEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Review' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Review' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ReviewIntegrationTest.testFlush() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Review obj = dod.getRandomReview();
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Review.findReview(id);
        org.junit.Assert.assertNotNull("Find method for 'Review' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyReview(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Review' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ReviewIntegrationTest.testMerge() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Review obj = dod.getRandomReview();
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Review.findReview(id);
        boolean modified =  dod.modifyReview(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        jp.co.hzmyh0.roo.searchbookroo.domain.Review merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Review' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ReviewIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to initialize correctly", dod.getRandomReview());
        jp.co.hzmyh0.roo.searchbookroo.domain.Review obj = dod.getNewTransientReview(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Review' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Review' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ReviewIntegrationTest.testRemove() {
        jp.co.hzmyh0.roo.searchbookroo.domain.Review obj = dod.getRandomReview();
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Review' failed to provide an identifier", id);
        obj = jp.co.hzmyh0.roo.searchbookroo.domain.Review.findReview(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Review' with identifier '" + id + "'", jp.co.hzmyh0.roo.searchbookroo.domain.Review.findReview(id));
    }
    
}
