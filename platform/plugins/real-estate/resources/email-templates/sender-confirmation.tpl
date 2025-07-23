{{ header }}

<div class="bb-main-content">
    <table class="bb-box" cellpadding="0" cellspacing="0">
        <tbody>
            <tr>
                <td class="bb-content bb-pb-0" align="center">
                    <table class="bb-icon bb-icon-lg bb-bg-blue" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td valign="middle" align="center">
                                    <img src="{{ 'mail' | icon_url }}" class="bb-va-middle" width="40" height="40" alt="Icon">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <h1 class="bb-text-center bb-m-0 bb-mt-md">Thank You for Your Consult Request!</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <table cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                                <td class="bb-content">
                                    <p>Dear {{ consult_name }},</p>

                                    <p>Thank you for reaching out to us! We have received your consult request and our team will review it shortly. One of our representatives will get back to you as soon as possible.</p>

                                    <h4>Here are the details of your submission:</h4>

                                    <table class="bb-table" cellspacing="0" cellpadding="0">
                                        <thead>
                                            <tr>
                                                <th width="80px"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            {% if consult_name %}
                                                <tr>
                                                    <td>Name:</td>
                                                    <td class="bb-font-strong bb-text-left"> {{ consult_name }} </td>
                                                </tr>
                                            {% endif %}
                                            {% if consult_subject %}
                                                <tr>
                                                    <td>Subject:</td>
                                                    <td class="bb-font-strong bb-text-left"> {{ consult_subject }} </td>
                                                </tr>
                                            {% endif %}
                                            {% if consult_email %}
                                                <tr>
                                                    <td>Email:</td>
                                                    <td class="bb-font-strong bb-text-left"> {{ consult_email }} </td>
                                                </tr>
                                            {% endif %}
                                            {% if consult_phone %}
                                                <tr>
                                                    <td>Phone:</td>
                                                    <td class="bb-font-strong bb-text-left"> {{ consult_phone }} </td>
                                                </tr>
                                            {% endif %}
                                            {% for key, value in consult_custom_fields %}
                                            <tr>
                                                <td>{{ key }}:</td>
                                                <td class="bb-font-strong bb-text-left"> {{ value }} </td>
                                            </tr>
                                            {% endfor %}
                                            {% if consult_content %}
                                                <tr>
                                                    <td colspan="2">Content:</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" class="bb-font-strong"><i>{{ consult_content }}</i></td>
                                                </tr>
                                            {% endif %}
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="bb-content bb-text-center bb-pt-0 bb-pb-xl" align="center">
                                    <p>If you have any additional information or questions, feel free to reply to this email.</p>

                                    <p>We appreciate your interest and will be in touch soon!</p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</div>

{{ footer }}
