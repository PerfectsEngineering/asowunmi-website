SET @oldsite='http://localhost' COLLATE utf8mb4_unicode_520_ci; 
SET @newsite='https://stage.asowunmi.com' COLLATE utf8mb4_unicode_520_ci;
UPDATE wp_options SET option_value = replace(option_value, @oldsite, @newsite) WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET post_content = replace(post_content, @oldsite, @newsite);
UPDATE wp_links SET link_url = replace(link_url, @oldsite, @newsite);
UPDATE wp_postmeta SET meta_value = replace(meta_value, @oldsite, @newsite);