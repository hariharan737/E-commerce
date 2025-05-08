CREATE TABLE GA_Consolidated_Main AS 

(SELECT

  event_date,

  FORMAT_DATETIME('%Y-%m-%d %H:%M:%S', TIMESTAMP_MICROS(event_timestamp)) AS event_timestamp,

  event_name,

  event_previous_timestamp,

  event_value_in_usd,

  event_bundle_sequence_id,

  event_server_timestamp_offset,

  user_id,

  user_pseudo_id,

 

MAX(CASE WHEN param.key = 'source'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_source  ,

MAX(CASE WHEN param.key = 'link_classes'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_link_classes  ,

MAX(CASE WHEN param.key = 'parent_organinzation'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_parent_organinzation  ,

MAX(CASE WHEN param.key = 'source_page_type'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_source_page_type  ,

MAX(CASE WHEN param.key = 'stock_capping_type'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_stock_capping_type  ,

MAX(CASE WHEN param.key = 'first_field_id'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_first_field_id  ,

MAX(CASE WHEN param.key = 'nonInteraction'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_nonInteraction  ,

MAX(CASE WHEN param.key = 'error_type'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_error_type  ,

MAX(CASE WHEN param.key = 'requested_credit_days' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_requested_credit_days ,

MAX(CASE WHEN param.key = 'search_term' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_search_term ,

MAX(CASE WHEN param.key = 'partner_code'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_partner_code  ,

MAX(CASE WHEN param.key = 'video_provider'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_video_provider  ,

MAX(CASE WHEN param.key = 'campaign'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_campaign  ,

MAX(CASE WHEN param.key = 'ga_session_number' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_ga_session_number ,

MAX(CASE WHEN param.key = 'item_category2'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_item_category2  ,

MAX(CASE WHEN param.key = 'ga_client_id'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_ga_client_id  ,

MAX(CASE WHEN param.key = 'item_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_item_id ,

MAX(CASE WHEN param.key = 'status'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_status  ,

MAX(CASE WHEN param.key = 'tax' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_tax ,

MAX(CASE WHEN param.key = 'banner_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_banner_id ,

MAX(CASE WHEN param.key = 'previous_page_url' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_previous_page_url ,

MAX(CASE WHEN param.key = 'request_credit'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_request_credit  ,

MAX(CASE WHEN param.key = 'total_elements'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_total_elements  ,

MAX(CASE WHEN param.key = 'quantity'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_quantity  ,

MAX(CASE WHEN param.key = 'user_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_key_user_id ,

MAX(CASE WHEN param.key = 'session_engaged' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_session_engaged ,

MAX(CASE WHEN param.key = 'unique_search_term'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_unique_search_term  ,

MAX(CASE WHEN param.key = 'creative_name' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_creative_name ,

MAX(CASE WHEN param.key = 'first_field_name'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_first_field_name  ,

MAX(CASE WHEN param.key = 'page_referrer' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_page_referrer ,

MAX(CASE WHEN param.key = 'engagement_time_msec'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_engagement_time_msec  ,

MAX(CASE WHEN param.key = 'page_path' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_page_path ,

MAX(CASE WHEN param.key = 'business_group'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_business_group  ,

MAX(CASE WHEN param.key = 'engaged_session_event' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_engaged_session_event ,

MAX(CASE WHEN param.key = 'item_mpm_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_item_mpm_id ,

MAX(CASE WHEN param.key = 'order_status'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_order_status  ,

MAX(CASE WHEN param.key = 'shipping_tier' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_shipping_tier ,

MAX(CASE WHEN param.key = 'login_status'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_login_status  ,

MAX(CASE WHEN param.key = 'coupon'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_coupon  ,

MAX(CASE WHEN param.key = 'file_extension'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_file_extension  ,

MAX(CASE WHEN param.key = 'link_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_link_id ,

MAX(CASE WHEN param.key = 'warehouse_type'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_warehouse_type  ,

MAX(CASE WHEN param.key = 'stock_allocated' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_stock_allocated ,

MAX(CASE WHEN param.key = 'eventCategory' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_eventCategory ,

MAX(CASE WHEN param.key = 'batch_ordering_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_batch_ordering_id ,

MAX(CASE WHEN param.key = 'form_name' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_form_name ,

MAX(CASE WHEN param.key = 'form_submit_text'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_form_submit_text  ,

MAX(CASE WHEN param.key = 'outbound'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_outbound  ,

MAX(CASE WHEN param.key = 'loading_time_sec'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_loading_time_sec  ,

MAX(CASE WHEN param.key = 'footer_element'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_footer_element  ,

MAX(CASE WHEN param.key = 'remaining_stock' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_remaining_stock ,

MAX(CASE WHEN param.key = 'link_url'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_link_url  ,

MAX(CASE WHEN param.key = 'rating'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_rating  ,

MAX(CASE WHEN param.key = 'content' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_content ,

MAX(CASE WHEN param.key = 'source_page_url' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_source_page_url ,

MAX(CASE WHEN param.key = 'currency'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_currency  ,

MAX(CASE WHEN param.key = 'customer_type' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_customer_type ,

MAX(CASE WHEN param.key = 'search_query'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_search_query  ,

MAX(CASE WHEN param.key = 'form_field'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_form_field  ,

MAX(CASE WHEN param.key = 'atc_type'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_atc_type  ,

MAX(CASE WHEN param.key = 'campaign_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_campaign_id ,

MAX(CASE WHEN param.key = 'term'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_term  ,

MAX(CASE WHEN param.key = 'first_field_position'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_first_field_position  ,

MAX(CASE WHEN param.key = 'shipping_method' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_shipping_method ,

MAX(CASE WHEN param.key = 'shipping'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_shipping  ,

MAX(CASE WHEN param.key = 'visible' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_visible ,

MAX(CASE WHEN param.key = 'video_title' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_video_title ,

MAX(CASE WHEN param.key = 'ga_session_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_ga_session_id ,

MAX(CASE WHEN param.key = 'first_field_type'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_first_field_type  ,

MAX(CASE WHEN param.key = 'video_current_time'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_video_current_time  ,

MAX(CASE WHEN param.key = 'page_title'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_page_title  ,

MAX(CASE WHEN param.key = 'form_destination'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_form_destination  ,

MAX(CASE WHEN param.key = 'eventAction' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_eventAction ,

MAX(CASE WHEN param.key = 'gtm_channel' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_gtm_channel ,

MAX(CASE WHEN param.key = 'sequence'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_sequence  ,

MAX(CASE WHEN param.key = 'item_category' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_item_category ,

MAX(CASE WHEN param.key = 'video_percent' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_video_percent ,

MAX(CASE WHEN param.key = 'click_text'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_click_text  ,

MAX(CASE WHEN param.key = 'form_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_form_id ,

MAX(CASE WHEN param.key = 'section' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_section ,

MAX(CASE WHEN param.key = 'link_text' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_link_text ,

MAX(CASE WHEN param.key = 'page_location' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_page_location ,

MAX(CASE WHEN param.key = 'percent_scrolled'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_percent_scrolled  ,

MAX(CASE WHEN param.key = 'order_id'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_order_id  ,

MAX(CASE WHEN param.key = 'requested_credit'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_requested_credit  ,

MAX(CASE WHEN param.key = 'quote_ref_number'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_quote_ref_number  ,

MAX(CASE WHEN param.key = 'link_domain' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_link_domain ,

MAX(CASE WHEN param.key = 'user_role' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_user_role ,

MAX(CASE WHEN param.key = 'payment_type'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_payment_type  ,

MAX(CASE WHEN param.key = 'gclid' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_gclid ,

MAX(CASE WHEN param.key = 'pagetype'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_pagetype  ,

MAX(CASE WHEN param.key = 'total_search_results'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_total_search_results  ,

MAX(CASE WHEN param.key = 'cart_name' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_cart_name ,

MAX(CASE WHEN param.key = 'entrances' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_entrances ,

MAX(CASE WHEN param.key = 'parent_organization' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_parent_organization ,

MAX(CASE WHEN param.key = 'form_length' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_form_length ,

MAX(CASE WHEN param.key = 'item_mpn_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_item_mpn_id ,

MAX(CASE WHEN param.key = 'error_message' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_error_message ,

MAX(CASE WHEN param.key = 'item_list_id'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_item_list_id  ,

MAX(CASE WHEN param.key = 'promotion_id'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_promotion_id  ,

MAX(CASE WHEN param.key = 'claritydimension'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_claritydimension  ,

MAX(CASE WHEN param.key = 'value' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_value ,

MAX(CASE WHEN param.key = 'request_type'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_request_type  ,

MAX(CASE WHEN param.key = 'video_duration'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_video_duration  ,

MAX(CASE WHEN param.key = 'fields_submitted'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_fields_submitted  ,

MAX(CASE WHEN param.key = 'item_list_name'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_item_list_name  ,

MAX(CASE WHEN param.key = 'file_name' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_file_name ,

MAX(CASE WHEN param.key = 'traffic_type'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_traffic_type  ,

MAX(CASE WHEN param.key = 'header_element'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_header_element  ,

MAX(CASE WHEN param.key = 'material_group'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_material_group  ,

MAX(CASE WHEN param.key = 'current_page_number' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_current_page_number ,

MAX(CASE WHEN param.key = 'item_category3'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_item_category3  ,

MAX(CASE WHEN param.key = 'video_url' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_video_url ,

MAX(CASE WHEN param.key = 'total_stock' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_total_stock ,

MAX(CASE WHEN param.key = 'item_name' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_item_name ,

MAX(CASE WHEN param.key = 'payment_method'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_payment_method  ,

MAX(CASE WHEN param.key = 'loading_speed_sec' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_loading_speed_sec ,

MAX(CASE WHEN param.key = 'creative_slot' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_creative_slot ,

MAX(CASE WHEN param.key = 'promotion_name'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_promotion_name  ,

MAX(CASE WHEN param.key = 'busniess_group'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_busniess_group  ,

MAX(CASE WHEN param.key = 'medium'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_medium  ,

MAX(CASE WHEN param.key = 'ignore_referrer' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_ignore_referrer ,

MAX(CASE WHEN param.key = 'interaction_type'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_interaction_type  ,

MAX(CASE WHEN param.key = 'transaction_id'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_transaction_id  ,

MAX(CASE WHEN param.key = 'destination_page_url'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_destination_page_url  ,

MAX(CASE WHEN param.key = 'login_trigger' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_login_trigger ,

MAX(CASE WHEN param.key = 'batch_page_id' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_batch_page_id ,

MAX(CASE WHEN param.key = 'debug_mode'  THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_debug_mode  ,

MAX(CASE WHEN param.key = 'user_type' THEN CAST(COALESCE(param.value.string_value, CAST(param.value.int_value AS STRING), CAST(param.value.float_value AS STRING), CAST(param.value.double_value AS STRING)) AS STRING) END) AS   event_user_type,

privacy_info.analytics_storage AS privacy_info_analytics_storage,

privacy_info.ads_storage AS privacy_info_ads_storage,

privacy_info.uses_transient_token AS privacy_info_uses_transient_token,   

 user_first_touch_timestamp AS user_first_touch_timestamp,

 user_ltv.revenue AS user_ltv_revenue,

 user_ltv.currency AS user_ltv_currency,
 
 device.category AS device_category,
 
 device.mobile_brand_name AS device_mobile_brand_name,
 
 device.mobile_model_name AS device_mobile_model_name,
 
 device.mobile_marketing_name AS device_mobile_marketing_name,
 
 device.mobile_os_hardware_model AS device_mobile_os_hardware_model,
 
 device.operating_system AS device_operating_system,
 
 device.operating_system_version AS device_operating_system_version,
 
 device.vendor_id AS device_vendor_id,
 
 device.advertising_id AS device_advertising_id,
 
 device.language AS device_language,
 
 device.is_limited_ad_tracking AS device_is_limited_ad_tracking,
 
 device.time_zone_offset_seconds AS device_time_zone_offset_seconds,	
 
 device.browser AS device_browser,
 
 device.browser_version AS device_browser_version,
 
 device.web_info.browser AS device_web_info_browser,
 
 device.web_info.browser_version AS device_web_info_browser_version,
 
 device.web_info.hostname AS device_web_info_hostname,
 
 geo.city AS geo_city,
 
 geo.country AS geo_country,
 
 geo.continent AS geo_continent,
 
 geo.region AS geo_region,
 
 geo.sub_continent AS geo_sub_continent,
 
 geo.metro AS geo_metro,
 
 app_info.id AS app_info_id,
 
 app_info.version AS app_info_version,
 
 app_info.install_store AS app_info_install_store,
 
 app_info.firebase_app_id AS app_info_firebase_app_id,
 
 app_info.install_source AS app_info_install_source,
 
 traffic_source.name AS traffic_source_name,
 
 traffic_source.medium AS traffic_source_medium,
 
 traffic_source.source AS traffic_source_source,
 
 stream_id AS stream_id,
 
 platform AS platform,
 
 event_dimensions.hostname AS event_dimensions_hostname,
 
 ecommerce.total_item_quantity AS ecommerce_total_item_quantity,
 
 ecommerce.purchase_revenue_in_usd AS ecommerce_purchase_revenue_in_usd,
 
 ecommerce.purchase_revenue AS ecommerce_purchase_revenue,
 
 ecommerce.refund_value_in_usd AS ecommerce_refund_value_in_usd,
 
 ecommerce.refund_value AS ecommerce_refund_value,
 
 ecommerce.shipping_value_in_usd AS ecommerce_shipping_value_in_usd,
 
 ecommerce.shipping_value AS ecommerce_shipping_value,
 
 ecommerce.tax_value_in_usd AS ecommerce_tax_value_in_usd,
 
 ecommerce.tax_value AS ecommerce_tax_value,
 
 ecommerce.unique_items AS ecommerce_unique_items,
 
 ecommerce.transaction_id AS ecommerce_transaction_id,
 
 
  
  collected_traffic_source.manual_campaign_id AS collected_traffic_source_manual_campaign_id,
  
  collected_traffic_source.manual_campaign_name AS collected_traffic_source_manual_campaign_name,
  
  collected_traffic_source.manual_source AS collected_traffic_source_manual_source,
  
  collected_traffic_source.manual_medium AS collected_traffic_source_manual_medium,
  
  collected_traffic_source.manual_term AS collected_traffic_source_manual_term,
  
  collected_traffic_source.manual_content AS collected_traffic_source_manual_content,
  
  collected_traffic_source.manual_source_platform AS collected_traffic_source_manual_source_platform,
  
  collected_traffic_source.manual_creative_format AS collected_traffic_source_manual_creative_format,
  
  collected_traffic_source.manual_marketing_tactic AS collected_traffic_source_manual_marketing_tactic,
  
  collected_traffic_source.gclid As collected_traffic_source_gclid,
  
  collected_traffic_source.dclid AS collected_traffic_source_dclid,
  
  collected_traffic_source.srsltid AS collected_traffic_source_srsltid,
  
  is_active_user AS is_active_user,
  
  batch_event_index AS batch_event_index,
  
  batch_page_id AS batch_page_id,
  
  batch_ordering_id AS batch_ordering_id,
  
  session_traffic_source_last_click.manual_campaign.campaign_id AS session_traffic_source_last_click_manual_campaign_campaign_id,
  
  session_traffic_source_last_click.manual_campaign.campaign_name AS session_traffic_source_last_click_manual_campaign_campaign_name,
  
  session_traffic_source_last_click.manual_campaign.source AS session_traffic_source_last_click_manual_campaign_source,
  
  session_traffic_source_last_click.manual_campaign.medium AS session_traffic_source_last_click_manual_campaign_medium,
  
  session_traffic_source_last_click.manual_campaign.term AS session_traffic_source_last_click_manual_campaign_term,
  
  session_traffic_source_last_click.manual_campaign.content AS session_traffic_source_last_click_manual_campaign_content,
  
  session_traffic_source_last_click.manual_campaign.source_platform AS session_traffic_source_last_click_manual_campaign_source_platform,
  
  session_traffic_source_last_click.manual_campaign.creative_format AS session_traffic_source_last_click_manual_campaign_creative_format,
  
  session_traffic_source_last_click.manual_campaign.marketing_tactic AS session_traffic_source_last_click_manual_campaign_marketing_tactic,
  
  session_traffic_source_last_click.google_ads_campaign.customer_id AS session_traffic_source_last_click_google_ads_campaign_customer_id,
  
  session_traffic_source_last_click.google_ads_campaign.account_name AS session_traffic_source_last_click_google_ads_campaign_account_name,
  
  session_traffic_source_last_click.google_ads_campaign.campaign_id AS session_traffic_source_last_click_google_ads_campaign_campaign_id,
  
  session_traffic_source_last_click.google_ads_campaign.campaign_name AS session_traffic_source_last_click_google_ads_campaign_campaign_name,
  
  session_traffic_source_last_click.google_ads_campaign.ad_group_id AS session_traffic_source_last_click_google_ads_campaign_ad_group_id,
  
  session_traffic_source_last_click.google_ads_campaign.ad_group_name AS session_traffic_source_last_click_google_ads_campaign_ad_group_name,
  
  session_traffic_source_last_click.cross_channel_campaign.campaign_id AS session_traffic_source_last_click_cross_channel_campaign_campaign_id,
  
  session_traffic_source_last_click.cross_channel_campaign.campaign_name AS session_traffic_source_last_click_cross_channel_campaign_campaign_name,
  
  session_traffic_source_last_click.cross_channel_campaign.source AS session_traffic_source_last_click_cross_channel_campaign_source,
  
  session_traffic_source_last_click.cross_channel_campaign.medium AS session_traffic_source_last_click_cross_channel_campaign_medium,
  
  session_traffic_source_last_click.cross_channel_campaign.source_platform AS session_traffic_source_last_click_cross_channel_campaign_source_platform,
  
  session_traffic_source_last_click.cross_channel_campaign.default_channel_group AS session_traffic_source_last_click_cross_channel_campaign_default_channel_group,
  
  session_traffic_source_last_click.cross_channel_campaign.primary_channel_group AS session_traffic_source_last_click_cross_channel_campaign_primary_channel_group,
  
  session_traffic_source_last_click.sa360_campaign.campaign_id AS session_traffic_source_last_click_sa360_campaign_campaign_id,
  
  session_traffic_source_last_click.sa360_campaign.campaign_name AS session_traffic_source_last_click_sa360_campaign_campaign_name,
  
  session_traffic_source_last_click.sa360_campaign.source AS session_traffic_source_last_click_sa360_campaign_source,
  
  session_traffic_source_last_click.sa360_campaign.medium AS session_traffic_source_last_click_sa360_campaign_medium,
  
  session_traffic_source_last_click.sa360_campaign.ad_group_id AS session_traffic_source_last_click_sa360_campaign_ad_group_id,
  
  session_traffic_source_last_click.sa360_campaign.ad_group_name AS session_traffic_source_last_click_sa360_campaign_ad_group_name,
  
  session_traffic_source_last_click.sa360_campaign.creative_format AS session_traffic_source_last_click_sa360_campaign_creative_format,
  
  session_traffic_source_last_click.sa360_campaign.engine_account_name AS session_traffic_source_last_click_sa360_campaign_engine_account_name,
  
  session_traffic_source_last_click.sa360_campaign.engine_account_type AS session_traffic_source_last_click_sa360_campaign_engine_account_type,
  
  session_traffic_source_last_click.sa360_campaign.manager_account_name AS session_traffic_source_last_click_sa360_campaign_manager_account_name,
  
  session_traffic_source_last_click.cm360_campaign.campaign_id AS session_traffic_source_last_click_cm360_campaign_campaign_id,
  
  session_traffic_source_last_click.cm360_campaign.campaign_name AS session_traffic_source_last_click_cm360_campaign_campaign_name,
  
  session_traffic_source_last_click.cm360_campaign.source AS session_traffic_source_last_click_cm360_campaign_source,
  
  session_traffic_source_last_click.cm360_campaign.medium AS session_traffic_source_last_click_cm360_campaign_medium,
  
  session_traffic_source_last_click.cm360_campaign.account_id AS session_traffic_source_last_click_cm360_campaign_account_id,
  
  session_traffic_source_last_click.cm360_campaign.account_name AS session_traffic_source_last_click_cm360_campaign_account_name,
  
  session_traffic_source_last_click.cm360_campaign.advertiser_id AS session_traffic_source_last_click_cm360_campaign_advertiser_id,
  
  session_traffic_source_last_click.cm360_campaign.advertiser_name AS session_traffic_source_last_click_cm360_campaign_advertiser_name,
  
  session_traffic_source_last_click.cm360_campaign.creative_id AS session_traffic_source_last_click_cm360_campaign_creative_id,
  
  session_traffic_source_last_click.cm360_campaign.creative_format AS session_traffic_source_last_click_cm360_campaign_creative_format,
  
  session_traffic_source_last_click.cm360_campaign.creative_name AS session_traffic_source_last_click_cm360_campaign_creative_name,
  
  session_traffic_source_last_click.cm360_campaign.creative_type AS session_traffic_source_last_click_cm360_campaign_creative_type,
  
  session_traffic_source_last_click.cm360_campaign.creative_type_id AS session_traffic_source_last_click_cm360_campaign_creative_type_id,
  
  session_traffic_source_last_click.cm360_campaign.creative_version AS session_traffic_source_last_click_cm360_campaign_creative_version,
  
  session_traffic_source_last_click.cm360_campaign.placement_id AS session_traffic_source_last_click_cm360_campaign_placement_id,
  
  session_traffic_source_last_click.cm360_campaign.placement_cost_structure AS session_traffic_source_last_click_cm360_campaign_placement_cost_structure,
  
  session_traffic_source_last_click.cm360_campaign.placement_name AS session_traffic_source_last_click_cm360_campaign_placement_name,
  
  session_traffic_source_last_click.cm360_campaign.rendering_id AS session_traffic_source_last_click_cm360_campaign_rendering_id,
  
  session_traffic_source_last_click.cm360_campaign.site_id AS session_traffic_source_last_click_cm360_campaign_site_id,
  
  session_traffic_source_last_click.cm360_campaign.site_name AS session_traffic_source_last_click_cm360_campaign_site_name,
  
  session_traffic_source_last_click.dv360_campaign.campaign_id AS session_traffic_source_last_click_dv360_campaign_campaign_id,
  
  session_traffic_source_last_click.dv360_campaign.campaign_name AS session_traffic_source_last_click_dv360_campaign_campaign_name,
  
  session_traffic_source_last_click.dv360_campaign.source AS session_traffic_source_last_click_dv360_campaign_source,
  
  session_traffic_source_last_click.dv360_campaign.medium AS session_traffic_source_last_click_dv360_campaign_medium,
  
  session_traffic_source_last_click.dv360_campaign.advertiser_id AS session_traffic_source_last_click_dv360_campaign_advertiser_id,
  
  session_traffic_source_last_click.dv360_campaign.advertiser_name AS session_traffic_source_last_click_dv360_campaign_advertiser_name,
  
  session_traffic_source_last_click.dv360_campaign.creative_id AS session_traffic_source_last_click_dv360_campaign_creative_id,
  
  session_traffic_source_last_click.dv360_campaign.creative_format AS session_traffic_source_last_click_dv360_campaign_creative_format,
  
  session_traffic_source_last_click.dv360_campaign.creative_name AS session_traffic_source_last_click_dv360_campaign_creative_name,
  
  session_traffic_source_last_click.dv360_campaign.exchange_id AS session_traffic_source_last_click_dv360_campaign_exchange_id,
  
  session_traffic_source_last_click.dv360_campaign.exchange_name AS session_traffic_source_last_click_dv360_campaign_exchange_name,
  
  session_traffic_source_last_click.dv360_campaign.insertion_order_id AS session_traffic_source_last_click_dv360_campaign_insertion_order_id,
  
  session_traffic_source_last_click.dv360_campaign.insertion_order_name AS session_traffic_source_last_click_dv360_campaign_insertion_order_name,
  
  session_traffic_source_last_click.dv360_campaign.line_item_id AS session_traffic_source_last_click_dv360_campaign_line_item_id,
  
  session_traffic_source_last_click.dv360_campaign.line_item_name AS session_traffic_source_last_click_dv360_campaign_line_item_name,
  
  session_traffic_source_last_click.dv360_campaign.partner_id AS session_traffic_source_last_click_dv360_campaign_partner_id,
  
  session_traffic_source_last_click.dv360_campaign.partner_name AS session_traffic_source_last_click_dv360_campaign_partner_name,
  
  publisher.ad_revenue_in_usd AS publisher_ad_revenue_in_usd,
  
  publisher.ad_format AS publisher_ad_format,
  
  publisher.ad_source_name AS publisher_ad_source_name,
  
  publisher.ad_unit_id AS publisher_ad_unit_id










         

         



 

FROM

  `redington-b2b-dp.analytics_373513666.*`,

  UNNEST(event_params) AS param  

WHERE

  event_date ='20240101' 

GROUP BY

  event_date,

  event_timestamp,

  event_name,

  event_previous_timestamp,

  event_value_in_usd,

  event_bundle_sequence_id,

  event_server_timestamp_offset,

  user_id,

  user_pseudo_id, 
  
  privacy_info.analytics_storage,
  
  privacy_info.ads_storage,
  
  privacy_info.uses_transient_token,

  user_first_touch_timestamp,

  user_ltv_revenue,

  user_ltv_currency,
  
  device_category,
 
 device_mobile_brand_name,
 
 device_mobile_model_name,
 
 device_mobile_marketing_name,
 
 device_mobile_os_hardware_model,
 
 device_operating_system,
 
 device_operating_system_version,
 
 device_vendor_id,
 
 device_advertising_id,
 
 device_language,
 
 device_is_limited_ad_tracking,
 
 device_time_zone_offset_seconds,	
 
 device_browser,
 
 device_browser_version,
 
 device_web_info_browser,
 
 device_web_info_browser_version,
 
 device_web_info_hostname,
 
 geo_city,
 
 geo_country,
 
 geo_continent,
 
 geo_region,
 
 geo_sub_continent,
 
 geo_metro,
 
 app_info_id,
 
 app_info_version,
 
 app_info_install_store,
 
 app_info_firebase_app_id,
 
 app_info_install_source,
 
 traffic_source_name,
 
 traffic_source_medium,
 
 traffic_source_source,
 
 stream_id,
 
 platform,
 
 event_dimensions_hostname,
 
 ecommerce_total_item_quantity,
 
 ecommerce_purchase_revenue_in_usd,
 
 ecommerce_purchase_revenue,
 
 ecommerce_refund_value_in_usd,
 
 ecommerce_refund_value,
 
 ecommerce_shipping_value_in_usd,
 
 ecommerce_shipping_value,
 
 ecommerce_tax_value_in_usd,
 
 ecommerce_tax_value,
 
 ecommerce_unique_items,
 
 ecommerce_transaction_id,
 
 
 
 collected_traffic_source_manual_campaign_id,
  
 collected_traffic_source_manual_campaign_name,
  
 collected_traffic_source_manual_source,
  
 collected_traffic_source_manual_medium,
  
 collected_traffic_source_manual_term,
  
 collected_traffic_source_manual_content,
  
 collected_traffic_source_manual_source_platform,
  
 collected_traffic_source_manual_creative_format,
  
 collected_traffic_source_manual_marketing_tactic,
  
 collected_traffic_source_gclid,
  
 collected_traffic_source_dclid,
  
 collected_traffic_source_srsltid,
  
 is_active_user,
  
 batch_event_index,
  
 batch_page_id,
  
 batch_ordering_id,
  
 session_traffic_source_last_click_manual_campaign_campaign_id,
  
 session_traffic_source_last_click_manual_campaign_campaign_name,
  
 session_traffic_source_last_click_manual_campaign_source,
  
 session_traffic_source_last_click_manual_campaign_medium,
  
 session_traffic_source_last_click_manual_campaign_term,
  
 session_traffic_source_last_click_manual_campaign_content,
  
 session_traffic_source_last_click_manual_campaign_source_platform,
  
 session_traffic_source_last_click_manual_campaign_creative_format,
  
 session_traffic_source_last_click_manual_campaign_marketing_tactic,
  
 session_traffic_source_last_click.google_ads_campaign.customer_id,
  
 session_traffic_source_last_click_google_ads_campaign_account_name,
  
 session_traffic_source_last_click_google_ads_campaign_campaign_id,
  
 session_traffic_source_last_click_google_ads_campaign_campaign_name,
  
 session_traffic_source_last_click_google_ads_campaign_ad_group_id,
  
 session_traffic_source_last_click_google_ads_campaign_ad_group_name,
  
 session_traffic_source_last_click_cross_channel_campaign_campaign_id,
  
 session_traffic_source_last_click_cross_channel_campaign_campaign_name,
  
 session_traffic_source_last_click_cross_channel_campaign_source,
  
 session_traffic_source_last_click_cross_channel_campaign_medium,
  
 session_traffic_source_last_click_cross_channel_campaign_source_platform,
  
 session_traffic_source_last_click_cross_channel_campaign_default_channel_group,
  
 session_traffic_source_last_click_cross_channel_campaign_primary_channel_group,
  
 session_traffic_source_last_click_sa360_campaign_campaign_id,
  
 session_traffic_source_last_click_sa360_campaign_campaign_name,
  
 session_traffic_source_last_click_sa360_campaign_source,
  
 session_traffic_source_last_click_sa360_campaign_medium,
  
 session_traffic_source_last_click_sa360_campaign_ad_group_id,
  
 session_traffic_source_last_click_sa360_campaign_ad_group_name,
  
 session_traffic_source_last_click_sa360_campaign_creative_format,
  
 session_traffic_source_last_click_sa360_campaign_engine_account_name,
  
 session_traffic_source_last_click_sa360_campaign_engine_account_type,
  
 session_traffic_source_last_click_sa360_campaign_manager_account_name,
  
 session_traffic_source_last_click_cm360_campaign_campaign_id,
  
 session_traffic_source_last_click_cm360_campaign_campaign_name,
  
 session_traffic_source_last_click_cm360_campaign_source,
  
 session_traffic_source_last_click_cm360_campaign_medium,
  
 session_traffic_source_last_click_cm360_campaign_account_id,
  
 session_traffic_source_last_click_cm360_campaign_account_name,
  
 session_traffic_source_last_click_cm360_campaign_advertiser_id,
  
 session_traffic_source_last_click_cm360_campaign_advertiser_name,
  
 session_traffic_source_last_click_cm360_campaign_creative_id,
  
 session_traffic_source_last_click_cm360_campaign_creative_format,
  
 session_traffic_source_last_click_cm360_campaign_creative_name,
  
 session_traffic_source_last_click_cm360_campaign_creative_type,
  
 session_traffic_source_last_click_cm360_campaign_creative_type_id,
  
 session_traffic_source_last_click_cm360_campaign_creative_version,
  
 session_traffic_source_last_click_cm360_campaign_placement_id,
  
 session_traffic_source_last_click_cm360_campaign_placement_cost_structure,
  
 session_traffic_source_last_click_cm360_campaign_placement_name,
  
 session_traffic_source_last_click_cm360_campaign_rendering_id,
  
 session_traffic_source_last_click_cm360_campaign_site_id,
  
 session_traffic_source_last_click_cm360_campaign_site_name,
  
 session_traffic_source_last_click_dv360_campaign_campaign_id,
  
 session_traffic_source_last_click_dv360_campaign_campaign_name,
  
 session_traffic_source_last_click_dv360_campaign_source,
  
 session_traffic_source_last_click_dv360_campaign_medium,
  
 session_traffic_source_last_click_dv360_campaign_advertiser_id,
  
 session_traffic_source_last_click_dv360_campaign_advertiser_name,
  
 session_traffic_source_last_click_dv360_campaign_creative_id,
  
 session_traffic_source_last_click_dv360_campaign_creative_format,
  
 session_traffic_source_last_click_dv360_campaign_creative_name,
  
 session_traffic_source_last_click_dv360_campaign_exchange_id,
  
 session_traffic_source_last_click_dv360_campaign_exchange_name,
  
 session_traffic_source_last_click_dv360_campaign_insertion_order_id,
  
 session_traffic_source_last_click_dv360_campaign_insertion_order_name,
  
 session_traffic_source_last_click_dv360_campaign_line_item_id,
  
 session_traffic_source_last_click_dv360_campaign_line_item_name,
  
 session_traffic_source_last_click_dv360_campaign_partner_id,
  
 session_traffic_source_last_click_dv360_campaign_partner_name,
  
 publisher_ad_revenue_in_usd,
  
 publisher_ad_format,
  
 publisher_ad_source_name,
  
 publisher_ad_unit_id )a
 

 
 
  -------------------------------------------------------------------------------
CREATE TABLE GA_items AS (
SELECT
  event_date,
  FORMAT_DATETIME('%Y-%m-%d %H:%M:%S', TIMESTAMP_MICROS(event_timestamp)) AS event_timestamp,
  event_name,
  event_previous_timestamp,
  event_value_in_usd,
  event_bundle_sequence_id,
  event_server_timestamp_offset,
  user_id,
  user_pseudo_id,

  item.item_id AS items_item_id,
  item.item_name AS items_item_name,
  item.item_brand AS items_item_brand,
  item.item_variant AS items_item_variant,
  item.item_category AS items_item_category,
  item.item_category2 AS items_item_category2,
  item.item_category3 AS items_item_category3,
  item.item_category4 AS items_item_category4,
  item.item_category5 AS items_item_category5,
  item.price_in_usd AS items_price_in_usd,
  item.price AS items_price,
  item.quantity AS items_quantity,
  item.item_revenue_in_usd AS item_revenue_in_usd,
  item.item_revenue AS items_item_revenue,
  item.item_refund_in_usd AS items_item_refund_in_usd,
  item.item_refund AS items_item_refund,
  item.coupon AS items_coupon,
  item.affiliation AS items_affiliation,
  item.location_id AS items_location_id,
  item.item_list_id AS items_item_list_id,
  item.item_list_name AS items_item_list_name,
  item.item_list_index AS items_item_list_index,
  item.promotion_id AS items_promotion_id,
  item.promotion_name AS items_promotion_name,
  item.creative_name AS items_creative_name,
  item.creative_slot AS items_creative_slot,



FROM `redington-b2b-dp.analytics_373513666.*`,
  UNNEST(items) AS item

WHERE
  event_date = '20240101'

GROUP BY
  event_date,
  event_timestamp,
  event_name,
  event_previous_timestamp,
  event_value_in_usd,
  event_bundle_sequence_id,
  event_server_timestamp_offset,
  user_id,
  user_pseudo_id,

  items_item_id,
  items_item_name,
  items_item_brand,
  items_item_variant,
  items_item_category,
  items_item_category2,
  items_item_category3,
  items_item_category4,
  items_item_category5,
  items_price_in_usd,
  items_price,
  items_quantity,
  item_revenue_in_usd,
  items_item_revenue,
  items_item_refund_in_usd,
  items_item_refund,
  items_coupon,
  items_affiliation,
  items_location_id,
  items_item_list_id,
  items_item_list_name,
  items_item_list_index,
  items_promotion_id,
  items_promotion_name,
  items_creative_name,
  items_creative_slot ) a
 




ALTER TABLE REDIN_ECOMMERCE.GA_ECOM_PROPERTIES CHANGE event_date properties_event_date VARCHAR(100);
ALTER TABLE REDIN_ECOMMERCE.GA_ECOM_PROPERTIES CHANGE event_timestamp properties_event_timestamp TIMESTAMP;
ALTER TABLE REDIN_ECOMMERCE.GA_ECOM_PROPERTIES CHANGE event_name properties_event_name varchar(1000);
ALTER TABLE REDIN_ECOMMERCE.GA_ECOM_PROPERTIES CHANGE event_previous_timestamp properties_event_previous_timestamp text;
ALTER TABLE REDIN_ECOMMERCE.GA_ECOM_PROPERTIES CHANGE event_value_in_usd properties_event_value_in_usd text;
ALTER TABLE REDIN_ECOMMERCE.GA_ECOM_PROPERTIES CHANGE event_bundle_sequence_id properties_event_bundle_sequence_id text;
ALTER TABLE REDIN_ECOMMERCE.GA_ECOM_PROPERTIES CHANGE event_server_timestamp_offset properties_event_server_timestamp_offset text;
ALTER TABLE REDIN_ECOMMERCE.GA_ECOM_PROPERTIES CHANGE user_id properties_user_id VARCHAR(100);
ALTER TABLE REDIN_ECOMMERCE.GA_ECOM_PROPERTIES CHANGE user_pseudo_id properties_user_pseudo_id VARCHAR(1000);



  
  
