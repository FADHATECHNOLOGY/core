  <div class="subtitle underline margin_top_large">{$LANG.word_settings|upper}</div>

  {ft_include file='messages.tpl'}

  <form action="{$same_page}" method="post" onsubmit="return rsv.validate(this, rules)">
    <input type="hidden" name="page" value="main" />

    <table class="list_table" cellpadding="0" cellspacing="1">
    <tr>
      <td class="pad_left_small" width="200">{$LANG.word_version}</td>
      <td>
        <b>{$settings.program_version}</b>
        <input type="button" value="{$LANG.phrase_check_for_updates}" onclick="$('upgrade_form').submit()" />
      </td>
    </tr>
    <tr>
      <td class="pad_left_small">{$LANG.phrase_program_name}</td>
      <td><input type="text" name="program_name" value="{$settings.program_name}" style="width: 400px" /></td>
    </tr>
    <tr>
      <td class="pad_left_small">{$LANG.phrase_logo_link_url}</td>
      <td><input type="text" name="logo_link" value="{$settings.logo_link}" style="width: 400px" /></td>
    </tr>
    <tr>
      <td class="pad_left_small">{$LANG.phrase_num_clients_per_page}</td>
      <td><input type="text" name="num_clients_per_page" value="{$settings.num_clients_per_page}" style="width: 30px" /></td>
    </tr>
    <tr>
      <td class="pad_left_small">{$LANG.phrase_num_emails_per_page}</td>
      <td><input type="text" name="num_emails_per_page" value="{$settings.num_emails_per_page}" style="width: 30px" /></td>
    </tr>
    <tr>
      <td class="pad_left_small">{$LANG.phrase_num_forms_per_page}</td>
      <td><input type="text" name="num_forms_per_page" value="{$settings.num_forms_per_page}" style="width: 30px" /></td>
    </tr>
    <tr>
      <td class="pad_left_small">{$LANG.phrase_num_field_option_groups_per_page}</td>
      <td><input type="text" name="num_field_option_groups_per_page" value="{$settings.num_field_option_groups_per_page}" style="width: 30px" /></td>
    </tr>
    <tr>
      <td class="pad_left_small">{$LANG.phrase_num_menus_per_page}</td>
      <td><input type="text" name="num_menus_per_page" value="{$settings.num_menus_per_page}" style="width: 30px" /></td>
    </tr>
    <tr>
      <td class="pad_left_small">{$LANG.phrase_num_views_per_page}</td>
      <td><input type="text" name="num_views_per_page" value="{$settings.num_views_per_page}" style="width: 30px" /></td>
    </tr>
    <tr>
      <td class="pad_left_small">{$LANG.phrase_num_modules_per_page}</td>
      <td><input type="text" name="num_modules_per_page" value="{$settings.num_modules_per_page}" style="width: 30px" /></td>
    </tr>
    </table>

    <p>
      <input type="submit" name="update_main" value="{$LANG.word_update|upper}" />
    </p>

  </form>

  <form action="http://ft2.formtools.org/upgrade.php" id="upgrade_form" method="post" target="_blank">
    {foreach from=$upgrade_info item=info name=row}
      <input type="hidden" name="{$info.k}" value="{$info.v}" />
    {/foreach}
  </form>
