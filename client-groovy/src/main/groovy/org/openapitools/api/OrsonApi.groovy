package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.OrsonAiAddMovieResponse
import org.openapitools.model.OrsonAiBatchResponse
import org.openapitools.model.OrsonAiEmotionsResponse
import org.openapitools.model.OrsonAiProtoResponse
import org.openapitools.model.OrsonAiSTTResponse
import org.openapitools.model.OrsonAiTTSResponse
import org.openapitools.model.OrsonAiTechTuneResponse
import org.openapitools.model.OrsonAiTopicsResponse
import org.openapitools.model.OrsonAiVoiceCanvasResponse
import org.openapitools.model.OrsonEpisodeResponse
import org.openapitools.model.OrsonRenderResponse

class OrsonApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addMovie ( Long accountId, String movieName, String thirdPartyAccountId, String tags, File _file, String url, String paramCallback, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/addMovie"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (movieName == null) {
            throw new RuntimeException("missing required params movieName")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (thirdPartyAccountId != null) {
            queryParams.put("thirdPartyAccountId", thirdPartyAccountId)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (movieName != null) {
            queryParams.put("movieName", movieName)
        }
        if (_file != null) {
            queryParams.put("file", _file)
        }
        if (url != null) {
            queryParams.put("url", url)
        }
        if (paramCallback != null) {
            queryParams.put("callback", paramCallback)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrsonAiAddMovieResponse.class )

    }

    def aiDocs ( Long accountId, String doc, Boolean returnTopics, Integer limit, Integer offset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/docs"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (doc == null) {
            throw new RuntimeException("missing required params doc")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (doc != null) {
            queryParams.put("doc", doc)
        }
        if (returnTopics != null) {
            queryParams.put("return_topics", returnTopics)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiProtoResponse.class )

    }

    def aiFindImages ( Long accountId, String text, String parseFlag, String fetchFlag, String size, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/img"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (text != null) {
            queryParams.put("text", text)
        }
        if (parseFlag != null) {
            queryParams.put("parse_flag", parseFlag)
        }
        if (fetchFlag != null) {
            queryParams.put("fetch_flag", fetchFlag)
        }
        if (size != null) {
            queryParams.put("size", size)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiProtoResponse.class )

    }

    def aiTags ( Long accountId, String tags, String conditional, Integer limit, Integer offset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/tags"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (tags == null) {
            throw new RuntimeException("missing required params tags")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (conditional != null) {
            queryParams.put("conditional", conditional)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiProtoResponse.class )

    }

    def aiText ( Long accountId, String terms, String conditional, Integer limit, Integer offset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/text"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (terms == null) {
            throw new RuntimeException("missing required params terms")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (terms != null) {
            queryParams.put("terms", terms)
        }
        if (conditional != null) {
            queryParams.put("conditional", conditional)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiProtoResponse.class )

    }

    def batch ( Long accountId, String thirdPartyAccountId, Integer limit, String operations, File _file, String url, String paramCallback, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/batch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (thirdPartyAccountId != null) {
            queryParams.put("thirdPartyAccountId", thirdPartyAccountId)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (operations != null) {
            queryParams.put("operations", operations)
        }
        if (_file != null) {
            queryParams.put("file", _file)
        }
        if (url != null) {
            queryParams.put("url", url)
        }
        if (paramCallback != null) {
            queryParams.put("callback", paramCallback)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrsonAiBatchResponse.class )

    }

    def createInstantEpisode ( Long accountId, String data, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/stories/episodes/instant"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (data == null) {
            throw new RuntimeException("missing required params data")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (data != null) {
            queryParams.put("data", data)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrsonEpisodeResponse.class )

    }

    def createVoiceCanvas ( Long accountId, String dimensions, String thirdPartyAccountId, String text, File _file, String url, Boolean parseFlag, Boolean fetchFlag, String paramCallback, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/voiceCanvas"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (dimensions == null) {
            throw new RuntimeException("missing required params dimensions")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (thirdPartyAccountId != null) {
            queryParams.put("thirdPartyAccountId", thirdPartyAccountId)
        }
        if (dimensions != null) {
            queryParams.put("dimensions", dimensions)
        }
        if (text != null) {
            queryParams.put("text", text)
        }
        if (_file != null) {
            queryParams.put("file", _file)
        }
        if (url != null) {
            queryParams.put("url", url)
        }
        if (parseFlag != null) {
            queryParams.put("parseFlag", parseFlag)
        }
        if (fetchFlag != null) {
            queryParams.put("fetchFlag", fetchFlag)
        }
        if (paramCallback != null) {
            queryParams.put("callback", paramCallback)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrsonAiVoiceCanvasResponse.class )

    }

    def emotion ( Long accountId, String thirdPartyAccountId, File _file, String url, String paramCallback, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/emotion"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (thirdPartyAccountId != null) {
            queryParams.put("thirdPartyAccountId", thirdPartyAccountId)
        }
        if (_file != null) {
            queryParams.put("file", _file)
        }
        if (url != null) {
            queryParams.put("url", url)
        }
        if (paramCallback != null) {
            queryParams.put("callback", paramCallback)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrsonAiEmotionsResponse.class )

    }

    def getAddMovieResult ( String requestId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/addMovie/${requestId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestId == null) {
            throw new RuntimeException("missing required params requestId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiAddMovieResponse.class )

    }

    def getBatch ( String requestId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/batch/${requestId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestId == null) {
            throw new RuntimeException("missing required params requestId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiBatchResponse.class )

    }

    def getEmotion ( String requestId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/emotion/${requestId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestId == null) {
            throw new RuntimeException("missing required params requestId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiEmotionsResponse.class )

    }

    def getEpisodeStatus ( Long episodeId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/stories/episodes/${episodeId}/status"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (episodeId == null) {
            throw new RuntimeException("missing required params episodeId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonEpisodeResponse.class )

    }

    def getRenderStatus ( String renderId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/stories/renders/${renderId}/status"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (renderId == null) {
            throw new RuntimeException("missing required params renderId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonRenderResponse.class )

    }

    def getSTT ( String requestId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/stt/${requestId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestId == null) {
            throw new RuntimeException("missing required params requestId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiSTTResponse.class )

    }

    def getTTS ( String requestId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/tts/${requestId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestId == null) {
            throw new RuntimeException("missing required params requestId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiTTSResponse.class )

    }

    def getTechTune ( String requestId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/techTune/${requestId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestId == null) {
            throw new RuntimeException("missing required params requestId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiTechTuneResponse.class )

    }

    def getTopics ( String requestId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/topics/${requestId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestId == null) {
            throw new RuntimeException("missing required params requestId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiTopicsResponse.class )

    }

    def getVoiceCanvas ( String requestId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/voiceCanvas/${requestId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestId == null) {
            throw new RuntimeException("missing required params requestId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrsonAiVoiceCanvasResponse.class )

    }

    def startVideoRender ( Long accountId, String data, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/stories/renders"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (data == null) {
            throw new RuntimeException("missing required params data")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (data != null) {
            queryParams.put("data", data)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrsonRenderResponse.class )

    }

    def stt ( Long accountId, String thirdPartyAccountId, String sourceLanguage, String targetLanguage, File _file, String url, String paramCallback, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/stt"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (thirdPartyAccountId != null) {
            queryParams.put("thirdPartyAccountId", thirdPartyAccountId)
        }
        if (sourceLanguage != null) {
            queryParams.put("sourceLanguage", sourceLanguage)
        }
        if (targetLanguage != null) {
            queryParams.put("targetLanguage", targetLanguage)
        }
        if (_file != null) {
            queryParams.put("file", _file)
        }
        if (url != null) {
            queryParams.put("url", url)
        }
        if (paramCallback != null) {
            queryParams.put("callback", paramCallback)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrsonAiSTTResponse.class )

    }

    def summarizeTopics ( Long accountId, String thirdPartyAccountId, String doc, File _file, String url, Integer limit, Integer offset, String paramCallback, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/topics"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (thirdPartyAccountId != null) {
            queryParams.put("thirdPartyAccountId", thirdPartyAccountId)
        }
        if (doc != null) {
            queryParams.put("doc", doc)
        }
        if (_file != null) {
            queryParams.put("file", _file)
        }
        if (url != null) {
            queryParams.put("url", url)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (paramCallback != null) {
            queryParams.put("callback", paramCallback)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrsonAiTopicsResponse.class )

    }

    def techTune ( Long accountId, Integer numFacesExpected, String thirdPartyAccountId, File _file, String url, String paramCallback, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/techTune"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (numFacesExpected == null) {
            throw new RuntimeException("missing required params numFacesExpected")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (thirdPartyAccountId != null) {
            queryParams.put("thirdPartyAccountId", thirdPartyAccountId)
        }
        if (numFacesExpected != null) {
            queryParams.put("numFacesExpected", numFacesExpected)
        }
        if (_file != null) {
            queryParams.put("file", _file)
        }
        if (url != null) {
            queryParams.put("url", url)
        }
        if (paramCallback != null) {
            queryParams.put("callback", paramCallback)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrsonAiTechTuneResponse.class )

    }

    def tts ( Long accountId, String text, String thirdPartyAccountId, String language, String voice, String paramCallback, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/orson/ai/tts"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (thirdPartyAccountId != null) {
            queryParams.put("thirdPartyAccountId", thirdPartyAccountId)
        }
        if (text != null) {
            queryParams.put("text", text)
        }
        if (language != null) {
            queryParams.put("language", language)
        }
        if (voice != null) {
            queryParams.put("voice", voice)
        }
        if (paramCallback != null) {
            queryParams.put("callback", paramCallback)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrsonAiTTSResponse.class )

    }

}
