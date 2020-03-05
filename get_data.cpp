#include <curl/curl.h>
#include "config.h"

static size_t write_data(void *ptr, size_t size, size_t nmemb, void *stream)
{
  size_t written = fwrite(ptr, size, nmemb, (FILE *)stream);
  return written;
}

int main(int argc, char *argv[])
{

  CURLcode ret;
  CURL *hnd;
  struct curl_slist *slist1;
  static const char *pagefilename = "logdata.txt";
  FILE *pagefile;

  curl_global_init(CURL_GLOBAL_ALL);

  slist1 = NULL;
  slist1 = curl_slist_append(slist1, "Accept: application/json");
  slist1 = curl_slist_append(slist1, key);

  hnd = curl_easy_init();

  curl_easy_setopt(hnd, CURLOPT_BUFFERSIZE, 102400L);
  curl_easy_setopt(hnd, CURLOPT_URL, url);
  curl_easy_setopt(hnd, CURLOPT_NOPROGRESS, 1L);
  curl_easy_setopt(hnd, CURLOPT_HTTPHEADER, slist1);
  curl_easy_setopt(hnd, CURLOPT_MAXREDIRS, 50L);
  curl_easy_setopt(hnd, CURLOPT_HTTP_VERSION, (long)CURL_HTTP_VERSION_2TLS);
  curl_easy_setopt(hnd, CURLOPT_CUSTOMREQUEST, "GET");
  curl_easy_setopt(hnd, CURLOPT_TCP_KEEPALIVE, 1L);

  curl_easy_setopt(hnd, CURLOPT_WRITEFUNCTION, write_data);
 
  /* open the file */ 
  pagefile = fopen(pagefilename, "wb");
  if(pagefile) {
 
    /* write the page body to this file handle */ 
    curl_easy_setopt(hnd, CURLOPT_WRITEDATA, pagefile);
 
    /* get it! */ 
    curl_easy_perform(hnd);

    /* close the header file */ 
    fclose(pagefile);
  }

  curl_easy_cleanup(hnd);
 
  curl_global_cleanup();
 
  return 0;
}
