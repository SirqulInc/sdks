#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/orson_ai_add_movie_response.h"
#include "../model/orson_ai_batch_response.h"
#include "../model/orson_ai_emotions_response.h"
#include "../model/orson_ai_proto_response.h"
#include "../model/orson_ai_stt_response.h"
#include "../model/orson_ai_tech_tune_response.h"
#include "../model/orson_ai_topics_response.h"
#include "../model/orson_ai_tts_response.h"
#include "../model/orson_ai_voice_canvas_response.h"
#include "../model/orson_episode_response.h"
#include "../model/orson_render_response.h"


// Add Movie
//
// Add a movie to be indexed for Topics. Indexing a movie analyses the content and incorporates it into the topics model for future /topics calls. This does not store the movie file long-term.
//
orson_ai_add_movie_response_t*
OrsonAPI_addMovie(apiClient_t *apiClient, double version, long accountId, char *movieName, char *thirdPartyAccountId, char *tags, binary_t* file, char *url, char *callback);


// Search Docs
//
// Takes in a text string representing one or more sentences and it returns a list of documents which are related to the provided document.
//
orson_ai_proto_response_t*
OrsonAPI_aiDocs(apiClient_t *apiClient, double version, long accountId, char *doc, int *return_topics, int *limit, int *offset);


// Find images
//
// Returns a list of URIs of images that match the text.
//
orson_ai_proto_response_t*
OrsonAPI_aiFindImages(apiClient_t *apiClient, double version, long accountId, char *text, char *parse_flag, char *fetch_flag, char *size);


// Search Tags
//
// Search the tags column of user provided tags using this endpoint.
//
orson_ai_proto_response_t*
OrsonAPI_aiTags(apiClient_t *apiClient, double version, long accountId, char *tags, char *conditional, int *limit, int *offset);


// Search Text
//
// Search the movie text column of movie text using this endpoint.
//
orson_ai_proto_response_t*
OrsonAPI_aiText(apiClient_t *apiClient, double version, long accountId, char *terms, char *conditional, int *limit, int *offset);


// Batch Analysis
//
// Run several types of analysis on an audio or video file in a single API call, instead of calling several operations for the same file..
//
orson_ai_batch_response_t*
OrsonAPI_batch(apiClient_t *apiClient, double version, long accountId, char *thirdPartyAccountId, int *limit, char *operations, binary_t* file, char *url, char *callback);


// Creates an instant episode
//
// Creates an instant episode for a given StoryStrip by providing all necessary inputs, interview recordings, and pictures, kicking off a render immediately.
//
orson_episode_response_t*
OrsonAPI_createInstantEpisode(apiClient_t *apiClient, double version, long accountId, char *data);


// Create VoiceCanvas images
//
// Create VoiceCanvas images for provided text, file upload, or file URL
//
orson_ai_voice_canvas_response_t*
OrsonAPI_createVoiceCanvas(apiClient_t *apiClient, double version, long accountId, char *dimensions, char *thirdPartyAccountId, char *text, binary_t* file, char *url, int *parseFlag, int *fetchFlag, char *callback);


// Detect emotions
//
// Detects emotions in an audio or video recording.
//
orson_ai_emotions_response_t*
OrsonAPI_emotion(apiClient_t *apiClient, double version, long accountId, char *thirdPartyAccountId, binary_t* file, char *url, char *callback);


// Get Add Movie Result
//
// Get the result of an in progress Add Movie request from an earlier POST.
//
orson_ai_add_movie_response_t*
OrsonAPI_getAddMovieResult(apiClient_t *apiClient, double version, char *requestId, long accountId);


// Get Batch Analysis Results
//
// Gets the completed Video Batch results, if done, or an error or status update if not.
//
orson_ai_batch_response_t*
OrsonAPI_getBatch(apiClient_t *apiClient, double version, char *requestId, long accountId);


// Get Emotion Results
//
// Checks the Emotion analysis and returns in progress, results, or error.
//
orson_ai_emotions_response_t*
OrsonAPI_getEmotion(apiClient_t *apiClient, double version, char *requestId, long accountId);


// Check episode status
//
// Gets a summary of the episode's status, including any renders.
//
orson_episode_response_t*
OrsonAPI_getEpisodeStatus(apiClient_t *apiClient, double version, long episodeId, long accountId);


// Check episode status
//
// Gets a summary of the episode's status, including any renders.
//
orson_render_response_t*
OrsonAPI_getRenderStatus(apiClient_t *apiClient, double version, char *renderId, long accountId);


// Get Speach to Text Result
//
// The results of the video transcription and optional translation.
//
orson_ai_stt_response_t*
OrsonAPI_getSTT(apiClient_t *apiClient, double version, char *requestId, long accountId);


// Get Text to Speach Result
//
// Check the status of an in progress Text-to-Speech call or download the result.
//
orson_ai_tts_response_t*
OrsonAPI_getTTS(apiClient_t *apiClient, double version, char *requestId, long accountId);


// Get TechTune Results
//
// Get a result or continue waiting for a pending request for TechTune analysis.
//
orson_ai_tech_tune_response_t*
OrsonAPI_getTechTune(apiClient_t *apiClient, double version, char *requestId, long accountId);


// Get Topics
//
// Get the result of an in progress Topics Analysis from an earlier POST.
//
orson_ai_topics_response_t*
OrsonAPI_getTopics(apiClient_t *apiClient, double version, char *requestId, long accountId);


// Get VoiceCanvas images
//
// Get a result or continue waiting for a pending request for VoiceCanvas Images.
//
orson_ai_voice_canvas_response_t*
OrsonAPI_getVoiceCanvas(apiClient_t *apiClient, double version, char *requestId, long accountId);


// Starts a StoryStitch video render
//
// Starts a StoryStitch video render to produce your final video, returning the status details.
//
orson_render_response_t*
OrsonAPI_startVideoRender(apiClient_t *apiClient, double version, long accountId, char *data);


// Speach to Text
//
// Accepts a movie URL or uploaded file and transcribes it. You also have the option to translate it into one of our additional supported languages.
//
orson_ai_stt_response_t*
OrsonAPI_stt(apiClient_t *apiClient, double version, long accountId, char *thirdPartyAccountId, char *sourceLanguage, char *targetLanguage, binary_t* file, char *url, char *callback);


// Summarize Topics
//
// Takes in a string of text sentences (also known as a document) and returns a list of associated topics and their proximity score.
//
orson_ai_topics_response_t*
OrsonAPI_summarizeTopics(apiClient_t *apiClient, double version, long accountId, char *thirdPartyAccountId, char *doc, binary_t* file, char *url, int *limit, int *offset, char *callback);


// Detect Technical Issues
//
// Analyses a movie file to detect technical issues, such as too few people in frame.
//
orson_ai_tech_tune_response_t*
OrsonAPI_techTune(apiClient_t *apiClient, double version, long accountId, int *numFacesExpected, char *thirdPartyAccountId, binary_t* file, char *url, char *callback);


// Text to Speach
//
// Creates an audio file for the given text, with the option of language and voice selection.
//
orson_ai_tts_response_t*
OrsonAPI_tts(apiClient_t *apiClient, double version, long accountId, char *text, char *thirdPartyAccountId, char *language, char *voice, char *callback);


