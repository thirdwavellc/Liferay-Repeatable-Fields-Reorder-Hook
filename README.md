# Liferay Repeatable Fields Reorder Hook

Liferay's repeatable fields are awesome, but **they can not be reordered!**
## What this is
* A hook to add re-ordering functionality to repeatable fields.
* A proof of concept (please send pull requests)

## What this is not
* Polished

## Limitations
This does, currently, **not** work with WYSIWYG/HTML fields as the CKEditor doesn't really play well with being detached from the DOM. Most likely you'll need to re-initialize the WYSIWYG. Feel free to send a pull request.

## Technichal gobbledygook

To keep track of the display order of (repeatable) fields, Liferay saves this in its `fieldsDisplay` field. Looking at the `edit_article` page, there's a hidden input field with this data: 

    <input class="field" id="_15__fieldsDisplay" name="_15__fieldsDisplay" type="hidden" value="tierone_INSTANCE_xapi,tierone_INSTANCE_vryw,tierone_INSTANCE_twer">
    
This hook does a couple of things

* Adds up/down arrows to repeatable fields.
* When one of those arrows are clicked it
	1. updates the hidden input field
	2. re-orders the DOM elements
	