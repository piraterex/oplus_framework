.class public Landroid/telephony/TelephonyFrameworkInitializer;
.super Ljava/lang/Object;
.source "TelephonyFrameworkInitializer.java"


# static fields
.field private static volatile blacklist sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static blacklist getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;
    .locals 1

    .line 105
    sget-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$1(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$2(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/telephony/CarrierConfigManager;

    invoke-direct {v0, p0}, Landroid/telephony/CarrierConfigManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$3(Landroid/content/Context;)Landroid/telephony/euicc/EuiccManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    invoke-direct {v0, p0}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$4(Landroid/content/Context;)Landroid/telephony/euicc/EuiccCardManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/telephony/euicc/EuiccCardManager;

    invoke-direct {v0, p0}, Landroid/telephony/euicc/EuiccCardManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$5(Landroid/content/Context;)Landroid/telephony/ims/ImsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    new-instance v0, Landroid/telephony/ims/ImsManager;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$6(Landroid/content/Context;)Landroid/telephony/SmsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .locals 3

    .line 65
    const-class v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v2, "phone"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 70
    const-class v0, Landroid/telephony/SubscriptionManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string/jumbo v2, "telephony_subscription_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 75
    const-class v0, Landroid/telephony/CarrierConfigManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "carrier_config"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 80
    const-class v0, Landroid/telephony/euicc/EuiccManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "euicc"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 85
    const-class v0, Landroid/telephony/euicc/EuiccCardManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "euicc_card"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 90
    const-class v0, Landroid/telephony/ims/ImsManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda5;-><init>()V

    const-string/jumbo v2, "telephony_ims"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 95
    const-class v0, Landroid/telephony/SmsManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda6;-><init>()V

    const-string/jumbo v2, "sms"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 101
    return-void
.end method

.method public static blacklist setTelephonyServiceManager(Landroid/os/TelephonyServiceManager;)V
    .locals 2
    .param p0, "telephonyServiceManager"    # Landroid/os/TelephonyServiceManager;

    .line 52
    sget-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "setTelephonyServiceManager called twice!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TelephonyServiceManager;

    sput-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    .line 55
    return-void
.end method
