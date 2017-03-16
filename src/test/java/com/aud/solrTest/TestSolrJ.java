package com.aud.solrTest;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.SolrInputDocument;
import org.junit.Test;

public class TestSolrJ {
	@Test
	public void testSolrj() throws Exception {
		// 创建连接
		SolrServer solrServer = new HttpSolrServer("http://yuancentos:8080/solr/");
		// 创建一个文档对象
		SolrInputDocument document = new SolrInputDocument();
		// 添加域
		document.addField("id", "solrtest01");
		document.addField("item_title", "测试商品");
		document.addField("item_sell_point", "卖点");

		solrServer.add(document);
		solrServer.commit();
	}

	@Test
	public void testQuery() throws Exception {
      SolrServer solrServer = new HttpSolrServer("http://yuancentos:8080/solr");
      SolrQuery query = new SolrQuery();
      query.setQuery("*:*");
      QueryResponse response = solrServer.query(query);
      SolrDocumentList solrDocumentList = response.getResults();
      System.out.println("-----------");
      for(SolrDocument solrDocument : solrDocumentList){
    	  System.out.println(solrDocument.get("id"));
    	  System.out.println(solrDocument.get("item_title"));
    	  System.out.println(solrDocument.get("item_sell_point"));
      }
	}
}
