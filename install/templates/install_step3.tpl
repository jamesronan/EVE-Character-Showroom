        <!--[include file='header.tpl']-->


        <div id="content" style="margin-left: 10px;width:70%;margin-top:50px;" >
          <div class="block-header2">MySQL Database</div>
          <br /><br />
          <form id="options" name="options" method="post" action="install.php?step=3">
            <input type="hidden" name="step" value="3" />
            <table class="kb-subtable">
              <tr>
                <td width="120"><strong>MySQL Host:</strong></td>
                <td><input type="text" name="host" id="host" size="20" maxlength="80" value="<!--[$host]-->" /></td>
              </tr>
              <tr>
                <td width="120"><strong>User:</strong></td>
                <td><input type="text" name="user" id="user" size="20" maxlength="80" value="<!--[$user]-->" /></td>
              </tr>
              <tr>
                <td width="120"><strong>Password:</strong></td>
                <td><input type="password" name="dbpass" id="pass" size="20" maxlength="80" value="<!--[$dbpass]-->" /></td>
              </tr>
              <tr>
                <td width="120"><strong>Database:</strong></td>
                <td><input type="text" name="db" id="db" size="20" maxlength="80" value="<!--[$db]-->" /></td>
              </tr>
              <tr>
                <td width="120"><strong>Domain:</strong></td>
                <td><input type="text" name="domain" id="domain" size="20" maxlength="80" value="<!--[$domain]-->" /></td>
                <td><span style="color:darkorange;">Please include the trailing slash. http://example.com/</span></td>
              </tr>
              <tr>
                <td width="120"></td>
                <td><input type="submit" name="submit" value="Test" /></td>
              </tr>
            </table>
            </form>
            <!--[if $submit]-->
              <div class="block-header2">Testing Settings</div>
              Got the data you supplied, trying to connect to that sql server now...<br /><br />
              <!--[if $server]-->
                Connection to Server OK!<!--[if $version]--> running Version <!--[$version]--><br /><br /><!--[/if]-->
                <!--[if $selectdb]-->
                  Successfully selected database <strong><!--[$db]--></strong>, everything is fine to continue.<br />
                <!--[else]-->
                  Could not select the database, please check your settings.<br />
                <!--[/if]-->
              <!--[else]-->
                Could not connect to the server or database, please check your settings.<br />
              <!--[/if]-->
              <!--[if not $stoppage]-->
                Please confirm that this is the information you want to write down in the database configuration file.<br /><br />
                <form id="write" name="writedbconfig" method="post" action="install.php?step=3">
                  <input type="hidden"  name="write_host"      value="<!--[$host]-->" />
                  <input type="hidden"  name="write_user"      value="<!--[$user]-->" />
                  <input type="hidden"  name="write_pass"      value="<!--[$dbpass]-->" />
                  <input type="hidden"  name="write_db"        value="<!--[$db]-->" />
                  <input type="hidden"  name="write_domain"    value="<!--[$domain]-->" />
                  <input type="submit" name="write" value="Write Database Config" />
                </form>
              <!--[/if]-->
              <p><!--[if $stoppage]--><a href="install.php?step=<!--[$step]-->" title="Retry">Retry<!--[else]--><a href="install.php?step=<!--[$nextstep]-->">Next Step<!--[/if]--></a></p>
            <!--[/if]-->
            <!--[if $done]-->
              <p><!--[$done]--></p>
              <p><a href="install.php?step=<!--[$nextstep]-->" title="Next Step">Next Step</a></p>
            <!--[/if]-->
          </div>

        <!--[include file='footer.tpl']-->