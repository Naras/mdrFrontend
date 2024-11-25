<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Documents Search</h4>
            %{--<h6 class="card-subtitle">Just add <code>form-material</code> class to the form that's it.</h6>--}%
                <g:form class="form-material" controller="search" action="searchresults">
                    <div class=" m-t-40 row">
                    <div class="form-group col-md-3 m-t-5">
                        <label>Document ID</label>
                        <input type="text" name="digitalManuscriptVO.manuscriptId" maxlength="50" id="manuscriptId" class="form-control"
                               value="${params?.digitalManuscriptVO?.manuscriptId}">
                    </div>
                    <div class="form-group col-md-3 m-t-5">
                        <label>Document Name</label>
                        <input type="text" name="digitalManuscriptVO.name" value="${params?.digitalManuscriptVO?.name}" maxlength="50" value="" id="manuscriptName" class="form-control">
                    </div>
                    <div class="form-group col-md-3 m-t-5">
                        <label>Subject</label>
                        <g:set var="ccatfk" value='${["-1":"Unselected","23":"Biography or Carita","7":"Collective Consciousness, Social Movements","13":"Collective Consciousness, Social Movements-&gt;Editing, Calendaring and Translation of Sources","21":"Geneology","24":"Geography /Bhugol","9":"Historical Geography",
                                                      "18":"History", "22":"History (misc - account of war and others)", "3":"Collective Consciousness, Social Movements->History of Ideas", "4":"Collective Consciousness, Social Movements->History of Peasants and Agrarian Relations", "8":"History of Science and Technology", "12":"Collective Consciousness, Social Movements->Place-names", "10":"Quantitative History", "11":"Regional and Local History", "26":"Royal Chronical", "2":"Collective Consciousness, Social Movements->Social and Economic Formations", "1":"Subject1",
                                                      "25":"Topography", "5":"Collective Consciousness, Social Movements->Urban History", "6":"Collective Consciousness, Social Movements->Women’s History"]}'/>
                            <g:select name="digitalManuscriptVO.categoryFkId" from='${ccatfk}' optionKey='key' optionValue='value' class="form-control" value='${params?.digitalManuscriptVO?.categoryFkId}'/>

                    </div>
                    <div class="form-group col-md-3 m-t-5">
                        <label>Source Name</label>
                        <input type="text" name="digitalManuscriptVO.organisationVO.name" maxlength="50" value="${params?.digitalManuscriptVO?.organisationVO?.name}" id="organisationName" class="form-control">
                    </div>

                    <div class="form-group col-md-3 m-t-20">
                        <label>Document Type</label>
                        <g:set var="documentTpye" value='${["-1":"Unselected","1":"Book","2":"Manuscript","3":"Article"]}'/>
                        <g:select name="digitalManuscriptVO.documentType" from='${documentTpye}' optionKey='key' optionValue='value' class="form-control" value='${params?.digitalManuscriptVO?.documentType}'/>
                        %{--<select name="digitalManuscriptVO.documentType" id="documentType" class="form-control">
                            <option value="-1">Unselected</option>
                            <option value="1">Book</option>
                            <option value="2">Manuscript</option>
                            <option value="3">Article</option>
                        </select>--}%
                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Type Of Work</label>
                        <g:set var="typeOfWork" value='${["Unselected":"Unselected", "Poetry":"Poetry", "Prose":"Prose", "Poem_And_Prose":"Poem_And_Prose", "Compendium":"Compendium"]}'/>
                        <g:select name="digitalManuscriptVO.typeOfWork" from='${typeOfWork}' optionKey='key' optionValue='value' class="form-control" value='${params?.digitalManuscriptVO?.typeOfWork}'/>


                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Language</label>
                        <g:set var="languageFkId" value='${["-1":"Unselected","4":"English","21":"English-Hindi","11":"Gujurati","10":"Hale Kannada","3":"Hindi","5":"Kannada","22":"Malayalam","20":"Marathi","8":"Other Foreign Languages","7":"Other Indian Languages","15":"Prakrit-Hindi","1":"Sanskrit","13":"Sanskrit-English","14":"Sanskrit-Gujarati","12":"Sanskrit-Hindi","18":"Sanskrit-Hindi-English","19":"Sanskrit-Marathi","17":"Sanskrit-Prakrit","16":"Sanskrit-Prakrit-Hindi","2":"Tamil","6":"Telugu"]}'/>
                        <g:select name="digitalManuscriptVO.languageFkId" from='${languageFkId}' optionKey='key' optionValue='value' class="form-control" value='${params?.digitalManuscriptVO?.languageFkId}'/>

                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Script</label>
                        <g:set var="scriptFkId" value='${["-1":"Unselected","1":"Brahmi","8":"Devanagari","2":"Grantha","4":"Kannada","9":"Malayalam","7":"Nandi Nagari","10":"Oriya","3":"Sharada","6":"Telugu","5":"Tigalari"]}'/>
                        <g:select name="digitalManuscriptVO.scriptFkId" from='${scriptFkId}' optionKey='key' optionValue='value' class="form-control" value='${params?.digitalManuscriptVO?.scriptFkId}'/>

                    </div>


                    <div class="form-group col-md-3 m-t-20">
                        <label>Document Category</label>
                        <g:set var="manuscriptType" value='${["Unselected":"Unselected","Original":"Original","Transcription":"Transcription","Translation":"Translation"]}'/>
                        <g:select name="digitalManuscriptVO.manuscriptType" from='${manuscriptType}' optionKey='key' optionValue='value' class="form-control" value='${params?.digitalManuscriptVO?.manuscriptType}'/>

                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Having Content...</label>
                        <input type="text" name="digitalManuscriptVO.summary" maxlength="50" value="${params?.digitalManuscriptVO?.summary}" id="summary" class="form-control">
                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Document Status</label>
                        <g:set var="documentationOfManuscript" value='${["Unselected":"Unselected","Complete":"Complete","Ongoing":"Ongoing"]}'/>
                        <g:select name="digitalManuscriptVO.documentationOfManuscript" from='${documentationOfManuscript}' optionKey='key' optionValue='value' class="form-control" value='${params?.digitalManuscriptVO?.documentationOfManuscript}'/>

                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Beginning Line</label>
                        <input type="text" name="digitalManuscriptVO.beginningLine" maxlength="50" value="${params?.digitalManuscriptVO?.beginningLine}" id="beginningLine" class="form-control" placeholder="Multilingual field..">
                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Ending Line</label>
                        <input type="text" name="digitalManuscriptVO.endingLine" maxlength="50" value="${params?.digitalManuscriptVO?.endingLine}" id="endingLine" class="form-control" placeholder="Multilingual field..">

                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Minimum Folios</label>
                        <input type="text" name="digitalManuscriptVO.minimumFolios" maxlength="50" value="${params?.digitalManuscriptVO?.minimumFolios}" id="minFolios" class="form-control">
                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Maximum Folios</label>
                        <input type="text" name="digitalManuscriptVO.maximunFolios" maxlength="50" value="${params?.digitalManuscriptVO?.maximunFolios}" id="maxFolios" class="form-control">
                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Author</label>
                        <g:select from="${authors}" optionKey="key" optionValue="value"  name="digitalManuscriptVO.authorName"
                                  id="authorId" class="form-control"  value="${params?.digitalManuscriptVO?.authorName}"  noSelection="['':'Choose author']">

                        </g:select>
                    </div>
                    <div class="form-group col-md-3 m-t-20">
                        <label>Specific Category</label>
                        <g:set var="specificCategoryId" value='${["1":"Original work","2":"Commentary","3":"Sub-commentary","4":"Translation","5":"Vritti etc.","6":"Compilation","7":"Miscellaneous","8":"Other",]}'/>
                        <g:select name="digitalManuscriptVO.specificCategoryId" from='${specificCategoryId}' optionKey='key' optionValue='value' class="form-control" value='${params?.digitalManuscriptVO?.specificCategoryId}'/>

                    </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-3 m-t-20" style="float: right;">
                        <input type="submit" name="submit" value="submit" class="btn btn-primary"/>
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $("#authorId").select2({
            placeholder: "Search Author",
        });
    });
</script>