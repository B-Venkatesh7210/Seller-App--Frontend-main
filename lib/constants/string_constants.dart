const kTokenIDKey = 'token';

const String kBaseUrl = 'https://sheltered-lake-70606.herokuapp.com/';

const String kMobileLoginRoute = 'user/login/';
const String kVerifyOTPRoute = "user/verifyOTP/";

const String kUserInfo = "user/userInfo/";
const String kGetUserInfo = "user/getUserInfo/";

const String kUserAddress = "user/address/";
const String kAddUserAddress = kUserAddress + "addAddress/";
const String kDeleteUserAddress = kUserAddress + "deleteAddress/";

const String kUpdateDetails = "user/updateDetails/";
const String kAddBankDetails = "user/addBankDetails/";

const String kSendMessage = 'user/sendMessage/';

const String kUploadDp = "/upload/updateDP";
const String kUploadDocumentRoute = "upload/documents";
const String kApplicableDocuments = "upload/getApplicableDocuments";

const String kIllustrationPath = 'assets/illustrations/';
const String kLogoPath = 'assets/logos/';
const String kImagePath = 'assets/images/';

const String kAboutUs =
    """UcliQ is a Business-to-Business (B2B) e-commerce company that brings a large number of retailers & sellers onto one platform. With a dream of digitalizing 25% of traditional supply chains, it is currently operating in Delhi/NCR. UcliQ connects farmers, manufacturers, producers and wholesalers with retailers, kirana stores, cafes and restaurants, thereby helping local sellers to expand their businesses without having to worry about the hassles involved in the supply chains.

With UcliQ, businesses can :

- BUY & SELL according to their terms, with safe payments, trustworthy logistics, and on-time delivery guarantees.
- EXPAND their network by connecting them to new suppliers, retailers, and organizations.
- Get assurance about the QUALITY and FRESHNESS of their products
- Get REAL-TIME DATA on prices, to ensure all parties get the best out of the business transactions

**BUY & SELL**

If you want to buy or sell, UcliQ is just a click or a phone call away! It provides hassle-free and timely pickup and delivery, to ensure your convenience at all times

**GROW**

For its buyers and sellers, UcliQ facilitates entry into new markets through quick, low-cost delivery services. By connecting you to the right sellers/buyers, it helps you grow your business without worrying about the logistical problems along the way

**QUALITY**

Quality and freshness of the products are always guaranteed by UcliQ&#39;s delivery team. On-time delivery and reduction of wastage are its topmost priorities.

**BEST RATES**

UcliQ enables transparency along the entire supply chain. Real time data on prices mean you get the best deals and timely, online methods of payment ensures safe and smooth transactions for all parties involved.""";

const String kTermsAndConditions = """**Terms And Conditions**

To view our privacy policy, [click here](https://www.ucliq.in/privacy)

This is an electronic record under the IT Act 2000 and the applicable rules and amended provisions on electronic documents as amended by the Information Technology Act 2000 and in various statutes. This electronic record is produced through a computer system and requires neither physical nor digital signatures.

This document is published in compliance with the provisions of Rule 3(1) of the Information Technology and the Rules and regulations of Rule 3(1) of the Rules of the Intermediary of Technology, 2011 which require publishing the rules and regulations, privacy policy, and conditions of use for access or use of domain-name / website [[www.ucliq.in](https://ucliq.in/)].

This document is a legally binding agreement between a seller (as defined below) and a buyer (as defined below) who, in the event of accessing, using or transferring on the Platform and using the Services for a commercial purpose only and Ucliq Services Private Limited (called &quot;we&quot;, &quot;our&quot; or &quot;UcliQ&quot; hereinafter), is (acting in itself and through its representations, collectively referred to as &quot;you.&quot;, &quot;your&quot; or &quot;user&quot; hereinafter). You recognise and agree that the Platform is a Business to Company Platform (B2B) and only provides business services.

The following are referred to collectively as the &#39;Terms&#39;: this document and the Platform&#39;s other rules and policies, including but not limited to the [Return Shipments Policy](https://www.ucliq.in/returnPolicy), the [Undelivered Shipment Policy](https://www.ucliq.in/undeliveredReturnPolicy), the [Privacy Policy](https://www.ucliq.in/privacy), the Product Listing Policy, the Infringement Policy At our sole discretion, we reserve the right, at anytime and without prior written notice, to change, modify, add or delete portions of those Terms. Users agree to accept and be bound by the terms and conditions when accessing, browsing and otherwise using or using the Platform or services, including after posting of changes (as may be amended from time to time).

**PLEASE READ THE TERMS AND CONDITIONS FOR PROCESSING. READ MORE... IF YOU DON&#39;T ACCEPT ANY OF THE CONDITIONS, YOU CAN&#39;T DO ANY ACCOMMODATION OR USE THE**  **UCLIQ**  **PLATFORM OR SEERVICES BY THE UCLIQ PLATFORM.**

You also accept and agree to be bound by any modifications, updates and alterations in Terms and other policies (including but not limited to privacy policies) by implicitly and expressly acceptance of these Terms, as amended, updated and altered from time to time.

You may be subject to additional terms and conditions regarding the availability of specific Platform services and/or portions, including but not limited to Services, any additional services, contests, offers, schemes, promotions, or any other similar feature which we may offer from time to time under these terms and conditions. You agree to abide by these other terms and conditions, including the legal ability to use or participate in such a service or feature, where applicable. If the terms for or for a specific part of the Platform or for any specific service provided via or on the Platform conflicts between these Terms, the latter terms shall control your use of this part of the Platform or that specific part of a service. The following terms shall apply to your use.

For the ease of reference, this document is divided into following sections:

- General Terms applicable to all users on the Platform
- Terms applicable to Buyers (&quot;Buyer Terms&quot;); and
- Terms applicable to Sellers (&quot;Seller Terms&quot;).

If you intend to buy the Platform or have placed an order on it (&quot;Customer&quot;), Sections I and II shall apply to your use and access to the Platform and its Services if you wish to do so on a commercial basis or through your own or your representatives.

Sections I and III shall be applicable to your use and access to and its Services if you intend (in and through your own company) to sell your products for sale or sell your products to buyers through the Platform (&quot;Seller&quot;).

**GENERAL TERMS**

1. **TERMS AND CONDITIONS APPLICATION AND ACCEPTATION**
  - Your use of the Platform and UcliQ&#39;s services, features, functionality, software, and products (collectively the &quot;Services&quot; hereinafter) is subject to the terms and conditions set forth in this document, as well as the [Privacy Policy](https://www.ucliq.in/privacy), Product Listing Policy, Infringement Policy, [Return Shipments Policy](https://www.ucliq.in/returnPolicy), [Undelivered Shipment Policy](https://www.ucliq.in/undeliveredReturnPolicy), and any other Platform rules and policies.
  - You must read the UcliQ Privacy Policy, which governs the collection, use, and disclosure of personally identifiable information about Users. You agree to the use of personal information about you in accordance with the Privacy Policy and accept the terms of the Privacy Policy.

1. **PROVISION OF SERVICES**
  - In order to access and use the Services, you must first register on the Platform. Furthermore, UcliQ reserves the right, at its sole discretion, to restrict access to or use of certain Services (or any features within the Services) without prior notice.
  - ii. For all these, your contracting entity will be a third party service provider(s), as the case may be, if you use services that can be supported and/or provided by third party service providers during accessing the Platform. UcliQ disclaims all liability for any claims that may arise as a result of your use of such third-party service provider&#39;s services (s).
  - User consents to and acknowledges that Ucliq has made best efforts to provide any services provided by you, and UcliQ may involve third-party service provider services that will assist you in providing such services. We will not be liable to you in any way for a failure or delay in providing or temporarily disabling the Services or any effects resulting from such activities or reasons beyond our reasonable control. We shall not be held responsible for this.
  - Users acknowledge that they provide the services to them on the basis &quot;as is&quot; and &quot;as available&quot; and that they may be interrupted when they browse, transact, use or upload information from the platform. The user accepts that we reserve the right, in our sole discretion, to suspend the Services immediately without any reason at all.
  - At all times, with or without notice, UCLIQ may, without reason or in the event of a violation by the user of the Terms, withdraw, terminate and/or suspend any or all of the Services. Moreover, the termination of any or some of the Services does not affect the provision of other services or other business arrangements or contracts with the User.

1. **USER ACCOUNTS VERIFICATION**
  - In order to access or use the Services for commercial purposes, the User must be registered on the Platform. You agree to transact only for your business purposes on the Platform and not for personal use. A user may register only one account on the Platform, except with the approval of UcliQ. If UcliQ has reason to suspect that the user has simultaneously recorded or controlled two or more accounts, UcliQ may cancel or terminate a user&#39;s account. In addition, UcliQ may, for any other reason, reject the application of the User for registration without giving any reason.
  - A single account is unique in a set of OTP (One Time Password). You will be authorised and with your explicit permission any action triggered by your user account on the platform or by using the unique OTP. You are exclusively responsible for keeping your ID and password and all activities under your account confidential and secure.
 You agree that you will be authorised to carry out all the activities which take place on your account (including without restrictions posts, information on company or product, click to accept any terms or rules, subscribe to or pay any services, send e-mails using the Platform or other communications).
  - You communicate electronically with UcliQ when you access the Platform. UcliQ may communicate with you by e-mail, SMS, WhatsApp or by sending in-app notifications or by any other mode of communication through other modes of communication, by phone call or by posting notices in the Plataform. For contractual purposes, you consent to receive from UcliQ, in respect of your use of the Platform, the communications (including transactional, promotional and/or commercial message), in the manner set out above. You agree to receive and consent to receive any communications from UcliQ by continued use of the Platform.
  - You will be required to submit your business details during registration on the Platform, including without limitation your company name, GSTIN, PAN, TAN, Udyog Aadhar, address, FSSAI Certificate, Halal Certificate(in case of meat products), phone number and/or any additional information UcliQ may require in relation to your business. You agree and accept that we can validate the information provided on the Platform directly or through a third party service provider. For verification of your account information, you agree to supply additional data to us and provide documentary proof as may be requested by us from time to time.

1. **PRODUCT LISTING POLICY**
  - You may not post or sell any content or items on the UcliQ Platform that are restricted or prohibited by Indian federal, state, or local law.
  - Unless expressly permitted in writing by UcliQ, it is specifically forbidden to post any content or to list any item below. HOWEVER, this list is not suitable for exhibition and indicative merely. UcliQ has chosen to also prohibit the posting of items which may not be restricted or prohibited by law but are nonetheless controversial including:
    - Items that promote illegal activities (e.g., lock pick tools, synthetic urine for drug test cheating)
    - items which are derogatory in racial, religious or ethnical terms or promote hatred, violence, racial or religious intolerance
    - Giveaways, lotteries, raffles, or contests
    - Stocks, bonds, investment interests, and other securities
    - Pornographic materials or items that are sexual in nature
    - Items that do not offer physical products or services for the sole purpose of collecting information, such as digital monies and advertising.
  - UcliQ reserves the right to introduce supplementary restrictions and bans.

1. **BREACHES AND SUSPENSION**
  - i. If any User violates any of these Terms or if UcliQ has reasonable grounds to believe that UcliQ breaches any of the Terms or that the User is responsible for the disciplinary action UcliQ or its affiliates considered, or in any other way found inappropriate or illegal, as far as it considers appropriate, UcliQ has the right:

  - suspending or terminating the User&#39;s account, as well as any and all accounts determined by UcliQ to be related to such account
  - blocking, restricting, downgrading, suspending, or terminating the User&#39;s subscription to, access to, or current or future use of any Service
  - removing any product listings or other User Content that the User has submitted, posted, or displayed
  - withhold UcliQ&#39;s payment to the User
  - any other corrective actions, discipline, or penalties that UcliQ, in its sole discretion, deems necessary or appropriate.

1. **FORCE MAJEURE**
  - Under no circumstances shall UcliQ be held liable for any losses, delay or failure or disruption of the content or services delivered through the Platform resulting directly or indirectly from acts of nature, forces or causes beyond our reasonable control, including without limitation, internet failures, computer, telecommunications or any other equipment failures, electrical power failures, strikes, labor disputes, riots, insurrections, civil disturbances, shortages of labor or materials, fires, flood, storms, explosions, acts of God, war, governmental actions, epidemics, pandemics, curfews, lock-down, orders of domestic or foreign courts or tribunals or non-performance of third parties.

1. **INTELLECTUAL PROPERTY RIGHTS**
  - UcliQ is the sole owner or lawful licensee of all the rights and interests in the Platform and the Platform Content. All title, ownership and intellectual property rights in the Platform and Platform Content shall remain with UcliQ or licensors of the Platform Content, as the case may be. All rights not otherwise claimed under the Terms or by UcliQ are hereby reserved.
  - &quot;UcliQ&quot; and any other related icons and logos are registered trademarks or trademarks or service marks of Ucliq Services Private Limited, in various jurisdictions and are protected under applicable copyright, trademark and other proprietary rights laws. The unauthorized copying, modification, use or publication of these marks is strictly prohibited.
  - UcliQ may, at its sole discretion, permit the User(s) of the Platform, in writing, to use &quot;UcliQ&quot; and any other related icons and logos for indicative purposes in the form and manner and terms and conditions as maybe agreed by UcliQ.

1. **Notices**
  - All legal notices or demands to or upon a User shall be effective if either delivered personally, sent by courier, certified mail, by facsimile or email to the last-known correspondence, email address provided by the User to UcliQ, or SMS, WhatsApp messages, or in-app notifications, or by posting such notice or demand on an area of the Platform that is publicly accessible without a charge or through such other mode of communication as UcliQ may deem fit in its discretion. Notice to a User shall be deemed to be received by such User if and when,
    - UcliQ is able to demonstrate that communication, whether in physical or electronic form, has been sent to such User, or
    - immediately upon UcliQ posting such notice on an area of the Platform that is accessible by the User or publicly accessible without charge.

1. **GRIEVANCE OFFICER**

In accordance with applicable laws, you may contact the Grievance Officer for any issues or concerns at the following address:

**Grievance Officer, Ucliq Services Private Limited,**
**Customer Service,**
**No. 102, Sharma Complex, Sakarpur, near Nirman Vihar**
**Metro Station, Nirman Vihar-110092**
**Email: info@ucliq.in**
**Time: Mon - Sat (10:00 AM - 06:00 PM)** """;
