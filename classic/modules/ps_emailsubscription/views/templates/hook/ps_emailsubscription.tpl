{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}

<div class="block_newsletter col-lg-8 col-md-12 col-sm-12" id="blockEmailSubscription_{$hookName}" style="display: flex; justify-content: space-between; align-items: center; background-color: #353535">
  <div class="newsletter-image">
    <img src="https://www.agricolors.fr/img/cms/logos/New-Logo-blancFR-1000x450px.png" alt="Newsletter Image" style="max-width: 100%; height: auto;">
  </div>
  <div class="col-md-7 col-xs-12" style="flex-grow: 1; margin-left: 20px;">
    <p id="block-newsletter-label" class="col-xs-12">{l s='Inscrivez-vous à la newsletter' d='Shop.Theme.Global'}</p>
    <form action="{$urls.current_url}#blockEmailSubscription_{$hookName}" method="post">
      <div class="row">
        <div class="col-xs-12">
          <input
            class="btn btn-primary float-xs-right hidden-xs-down"
            name="submitNewsletter"
            type="submit"
            value="{l s='Subscribe' d='Shop.Theme.Actions'}"
          >
          <input
            class="btn btn-primary float-xs-right hidden-sm-up"
            name="submitNewsletter"
            type="submit"
            value="{l s='OK' d='Shop.Theme.Actions'}"
          >
          <div class="input-wrapper">
            <input
              name="email"
              type="email"
              value="{$value}"
              placeholder="{l s='Your email address' d='Shop.Forms.Labels'}"
              aria-labelledby="block-newsletter-label"
              required
            >
          </div>
          <input type="hidden" name="blockHookName" value="{$hookName}" />
          <input type="hidden" name="action" value="0">
          <div class="clearfix"></div>
        </div>
        <div class="col-xs-12">
          {if $msg}
            <p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
              {$msg}
            </p>
          {/if}
          {hook h='displayNewsletterRegistration'}
          {if isset($id_module)}
            {hook h='displayGDPRConsent' id_module=$id_module}
          {/if}
        </div>
      </div>
    </form>
  </div>
</div>
