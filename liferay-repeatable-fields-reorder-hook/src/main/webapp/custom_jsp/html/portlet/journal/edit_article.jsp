<%@ include file="/html/portlet/journal/edit_article.portal.jsp" %>

<liferay-util:html-top>
	<style>
		.lfr-ddm-container{
			counter-reset: repeatablefield;
		}

		.aui .field-wrapper[data-repeatable="true"] > .control-label:before{
			counter-increment: repeatablefield;
			content:"("counter(repeatablefield)")";
		}
	</style>
</liferay-util:html-top>

<liferay-util:html-bottom>
	<script src="/html/js/journal/edit_article.js" />
</liferay-util:html-bottom>