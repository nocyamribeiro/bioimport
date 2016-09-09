package br.com.bioimportweb.gbif.api.utils;

import java.util.UUID;

import javax.annotation.Nullable;

import org.gbif.api.model.common.paging.Pageable;
import org.gbif.api.model.common.paging.PagingResponse;
import org.gbif.api.model.occurrence.Download;
import org.gbif.api.model.registry.DatasetOccurrenceDownloadUsage;
import org.gbif.api.service.registry.DatasetOccurrenceDownloadUsageService;
import org.gbif.registry.ws.client.guice.RegistryWs;
import org.gbif.ws.client.BaseWsGetClient;

import com.google.inject.Inject;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.filter.ClientFilter;

/**
 * OccurrenceDownloadService web service client.
 */
public class DatasetOccurrenceDownloadUsageWsClient extends BaseWsGetClient<Download, String> implements
  DatasetOccurrenceDownloadUsageService {

  @Inject
  public DatasetOccurrenceDownloadUsageWsClient(@RegistryWs WebResource resource, @Nullable ClientFilter authFilter) {
    super(Download.class, resource.path("occurrence/download"), authFilter);
  }

  @Override
  public void create(DatasetOccurrenceDownloadUsage downloadDataset) {
    post(downloadDataset, "dataset");
  }

  @Override
  public PagingResponse<DatasetOccurrenceDownloadUsage> listByDataset(UUID datasetKey, Pageable page) {
    return get(GenericTypes.PAGING_DATASET_OCCURRENCE_DOWNLOAD, page, "dataset", String.valueOf(datasetKey));
  }


}
