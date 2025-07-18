package com.yostech.yoscare

import grails.config.Config
import grails.converters.JSON
import grails.gorm.transactions.Transactional
import org.apache.commons.io.FilenameUtils
import org.apache.commons.lang3.StringUtils
import org.hibernate.transform.AliasToEntityMapResultTransformer
import org.imgscalr.Scalr

import javax.imageio.ImageIO
import java.awt.image.BufferedImage

@Transactional
class SearchService {

    def serviceMethod() {

    }

    def sessionFactory
    def searchResultsForQuery(query) {
        final session = sessionFactory.currentSession

        //final String query = 'select id, name from omds_person order by name asc'
        println " query "+query
        final sqlQuery = session.createSQLQuery(query).setCacheable(true)

        final queryResults = sqlQuery.with {
            // Assign result transformer.
            // This transformer will map columns to keys in a map for each row.

            list()
        }
        //println queryResults


        queryResults
    }

    def searchResultsForQueryTransform(query){
        final session = sessionFactory.currentSession

        //final String query = 'select id, name from omds_person order by name asc'

        final sqlQuery = session.createSQLQuery(query).setCacheable(true)
        sqlQuery.setResultTransformer(AliasToEntityMapResultTransformer.INSTANCE);
        //List<Map<String,Object>> aliasToValueMapList=query.list();
        List<Map<String,Object>> aliasToValueMapList = sqlQuery.with {
            // Assign result transformer.
            // This transformer will map columns to keys in a map for each row.

            list()
        }
        //println queryResults

        //println "aliasToValueMapList "+aliasToValueMapList
        //queryResults
        aliasToValueMapList
    }

    def  customImageSizeInBytes(isThumbnail,imagePath,width,height) {
        System.out.println("Search service: customImagesizeInBytes - image path------ " + imagePath+" isthumbnail "+isThumbnail);
        //System.out.println("imageId" + imageId);
        //imagePath ="/home/lakshmi/workspace/manuscripts/img/"+imagePath
        BufferedImage originalImage;
        byte[] imageInByte
        try {
            File imageFile = getImageFile(imagePath);
            originalImage = ImageIO.read(imageFile);
            String fileBaseName = org.apache.commons.io.FilenameUtils.getBaseName(imageFile.getName());
            String fileExt = org.apache.commons.io.FilenameUtils.getExtension(imageFile.getName());

            if (isThumbnail && isThumbnail.equals("true")) {
                def iwidth = new Integer(width==null?0.00:width)
                def iheight= new Integer(height==null?0.00:height)
                if (iwidth==0 && iheight==0) {
                    originalImage = Scalr.resize(originalImage, Scalr.Method.ULTRA_QUALITY, new Integer(width), new Integer(height));
                }

            /*    ByteArrayOutputStream baos = new ByteArrayOutputStream();
                ImageIO.write(originalImage, fileExt, baos);
                baos.flush();
                imageInByte = baos.toByteArray();
                baos.close();
            */
            }
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(originalImage, fileExt, baos);
            baos.flush();
            imageInByte = baos.toByteArray();
            baos.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        imageInByte;
    }
    private File getImageFile(String imagePath) {
        // String filePath = servletRequest.getSession().getServletContext().getRealPath("/");
        //String folderPath = (ResourceBundle.getBundle("ApplicationResources", IndvenApplicationConstants.LOCALE)
          //      .getObject("images.system.path").toString()).trim();
        ///root/mdr/media/img/
        //String folderPath = "/home/intel/root-mdr-media/sciencetechnology/img"
	Config config = grailsApplication.config
        String folderPath = config.getProperty('mdr.folder.filepath')
        System.out.println("folderPath "+folderPath);
        File file = new File(FilenameUtils.separatorsToSystem(folderPath+ "/"+imagePath));
        System.out.println(file.toString());
        return file;
    }

    def grailsApplication
    def mdrUrl(){
        Config config = grailsApplication.config
        def mdrURL =  config.getProperty('mdr.host.ipaddress')
        mdrURL
    }

    def homePageDashBoardStats(){
        def client = new grails.plugins.rest.client.RestBuilder()
        def resp = client.get("${mdrUrl()}/MDR/homePageDashBoard.action") {


        }
        resp.getJson()
        //println "resp ----sdasdsadasdsdsfdsf "+resp.getJson()
    }

    def searchBySubjectAndType(Integer categoryFkId,Integer  docType) {
    return DigitalManuscript.findAllBySubjectAndDocumentType(categoryFkId, docType)
}

    def countByCategoryAndType(Integer categoryFkId, Integer docType) {
        final session = sessionFactory.currentSession
        String query = "SELECT COUNT(*) FROM omds_digital_manuscript WHERE isDeleted = 0 AND categoryFkId = :categoryFkId AND documentType = :docType"
        def sqlQuery = session.createSQLQuery(query)
        sqlQuery.setParameter("categoryFkId", categoryFkId)
        sqlQuery.setParameter("docType", docType)
        return ((Number)sqlQuery.uniqueResult()).intValue()
    }

}
/*
SELECT dm.Id,dm.NAME,dm.regional_name,dm.diacritical_name,dm.SUMMARY,dm.acc_no,dm.table_of_contents,dm.digitized_by,
dm.catalogue_no,dm.cataloguedetails,dm.colophon,dm.beginning_line,dm.ending_line,dm.documentation_of_manuscript,dm.isbound,
dm.manuscript_id,dm.total_no_of_folios,dm.total_no_of_maps,dm.condition_of_manuscript,dm.source_of_catalogue,
dm.TYPE_OF_WORK,org.Id AS orgId,org.NAME AS orgName,org.email,org.ADDRESS AS orgAddress,org.website,
org.type AS orgType,org.phoneNumber,op.Id AS publicationId,op.PRICE,op.NO_OF_PAGES,op.YEAR_OF_PUBLICATION,
opp.NAME AS editorName,opb.NAME AS publisherName,opb.ADDRESS publisherAddress,ol.NAME AS languageName,
os.NAME AS scriptName,om.NAME materialName,ob.name AS bundleName,oc.name AS categoryName,opc.NAME AS scribName,
GROUP_CONCAT(opa.NAME) AS Author,GROUP_CONCAT(DISTINCT osc.NAME) AS specificcategory,dm.documentType FROM omds_digital_manuscript dm LEFT JOIN omds_organisation org ON dm.OrganisationFkId = org.Id LEFT JOIN omds_publication op ON dm.PublicationFkId = op.Id LEFT JOIN omds_person opp ON op.editorfkid = opp.Id LEFT JOIN omds_publisher opb ON op.PublisherFkId = opb.Id LEFT JOIN omds_language ol ON dm.languageFkId = ol.Id LEFT JOIN omds_script os ON dm.scriptFkId = os.Id LEFT JOIN omds_material om ON dm.MaterialFkId = om.Id LEFT JOIN omds_bundle ob ON dm.bundleMasterfkid = ob.id LEFT JOIN omds_category oc ON dm.categoryFkId = oc.id LEFT JOIN omds_person opc ON dm.scribefkid = opc.Id LEFT JOIN omds_manuscript_authormapper am ON dm.Id = am.manuscriptfkid LEFT JOIN omds_person opa ON am.authorfkid = opa.Id LEFT JOIN omds_manuscript_specificcategorymapper oscc ON oscc.manuscriptfkid = dm.Id LEFT JOIN omds_specificcategory osc ON oscc.specificcategoryfkid = osc.id WHERE dm.isDeleted = 0 GROUP BY dm.Id ORDER BY dm.Id
 */
